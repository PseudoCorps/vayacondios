require 'spec_helper'

describe Vayacondios::Server::MongoDriver do
  include LogHelper

  let!(:settings){ Vayacondios::Server::DbConfig.env :test }

  subject{ described_class.connect settings.merge(log: log) }
  
  def mongo
    Mongo::MongoClient.new(settings[:host], settings[:port])
  end

  def db
    mongo.db settings[:name]
  end

  def collection name
    db.collection name
  end

  def using(location, &blk)
    EM.synchrony do
      subject.set_location location
      blk.call(subject)
      EM::Synchrony.sleep(0.1) # ensure the operation completes
      EM.stop
    end
  end

  def clean name
    collection(name).drop
  end

  context '#insert' do
    after do
      clean 'organization.foo.events'
    end

    it 'returns the id' do
      result = nil
      using('organization.foo.events') do |driver| 
        result = driver.insert(foo: 'bar')
      end
      collection('organization.foo.events').find(_id: BSON::ObjectId(result[:_id])).to_a.size.should eq(1)
    end
  end

  context '#search' do
    after{ clean 'organization.stash' }
    
    it 'returns an array of results' do
      collection('organization.stash').insert(_id: 'topic', foo: 'bar')
      result = nil
      using('organization.stash') do |driver| 
        result = driver.search({}, { foo: 'bar' }, {})
      end
      result.should eq([{ _id: 'topic', foo: 'bar' }])      
    end
  end

  context '#retrieve' do
    after{ clean 'organization.stash' }

    it 'returns the record if found' do
      collection('organization.stash').insert(_id: 'topic', foo: 'bar')
      result = nil
      using('organization.stash') do |driver| 
        result = driver.retrieve(_id: 'topic')
      end
      result.should eq(_id: 'topic', foo: 'bar')
    end

    it 'returns nil if the record is not found' do
      collection('organization.stash').insert(_id: 'topic', foo: 'bar')
      result = nil
      using('organization.stash') do |driver| 
        result = driver.retrieve(_id: 'invalid')
      end
      result.should be_nil
    end
  end

  context '#remove' do
    after{ clean 'organization.stash' }

    it 'returns nil after completion' do
      collection('organization.stash').insert(_id: 'topic', foo: 'bar')
      result = nil
      using('organization.stash') do |driver| 
        result = driver.remove({}, foo: 'bar')
      end
      result.should be_nil
      collection('organization.stash').find(_id: 'topic').to_a.should be_empty
    end    
  end
end
