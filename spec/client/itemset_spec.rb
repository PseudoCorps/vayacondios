require 'spec_helper'

require 'multi_json'

require_relative '../../lib/vayacondios/client/itemset'

describe Vayacondios::Client::ItemSet do
  context "when initialized" do
    it "can be passed a host, port, organization, topic and id" do
      Vayacondios::Client::ItemSet.new("foohost", 9999, "fooorg", "footopic", "fooid")
    end
  end

  context "after instantiation" do

    itemset = Vayacondios::Client::ItemSet.new("foohost", 9999, "fooorg", "footopic", "fooid")
    ary = ["foo", "bar", "baz"]

    # Actually testing internals here to avoid 

    it "generates a put request without a patch header when asked to create" do
      req = itemset._req :create, ary

      req.method.should eql('PUT')
      req.body.should eql(ary.to_json)
      req.path.should eql('/v1/fooorg/itemset/footopic/fooid')
      req.each_header.to_a.should_not include(["http_x_method", "PATCH"])
    end

    it "generates a put request with a patch header when asked to update" do
      req = itemset._req :update, ary

      req.method.should eql('PUT')
      req.body.should eql(ary.to_json)
      req.path.should eql('/v1/fooorg/itemset/footopic/fooid')
      req.each_header.to_a.should include(["http_x_method", "PATCH"])
    end

    it "generates a get request when asked to fetch" do
      req = itemset._req :fetch

      req.method.should eql('GET')
      req.body.should be_nil
      req.path.should eql('/v1/fooorg/itemset/footopic/fooid')
    end

    it "generates a delete request when asked to remove" do
      req = itemset._req :remove

      req.method.should eql('DELETE')
      req.body.should eql(ary.to_json)
      req.path.should eql('/v1/fooorg/itemset/footopic/fooid')
    end
  end
end
