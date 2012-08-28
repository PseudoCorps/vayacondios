$:.push File.expand_path('..', __FILE__)
require 'vayacondios/version'

Dir['*.gemspec'].each do |gemspec|
  gem_name = gemspec.gsub(/\.gemspec/, '')

  desc "Build #{gem_name} gem into the pkg directory"
  task "build_#{gem_name}" do
    FileUtils.rm_rf('pkg')
    system "gem build #{gemspec}"
    FileUtils.mkdir_p('pkg')
    FileUtils.mv(Dir['*.gem'], 'pkg')
  end

  desc "Tags version, pushes to remote, and pushes #{gem_name} gem"
  task "release_#{gem_name}" =>  "build_#{gem_name}" do
    sh 'git', 'tag', '-m', "releasing #{gem_name}", "#{gem_name}-v#{Vayacondios::VERSION}"
    branch = `git branch | awk -F '/* ' '{print $2}'`.strip
    sh "git push origin #{branch}"
    sh "git push origin vayacondios-#{branch}-v#{Vayacondios::VERSION}"
    sh "ls pkg/#{gem_name}*.gem | xargs -n 1 gem push"
  end
end
