Pod::Spec.new do |s|

  s.name         = "Sails.IO"
  s.version      = "0.0.2"
  s.summary      = "A category for Socket.IO to support Sails.IO's GET, PUT, POST and DELETE socket requests"

  s.description  = <<-DESC
                   A category for Socket.IO to support Sails.IO's GET, PUT, POST and DELETE socket requests

                   * Allows users to make GET, PUT, POST and DELETE requests to a Sails.JS REST server
				   * Provides response blocks for server responses
                   DESC

  s.homepage     = "https://github.com/fishrod-interactive/sails-io.objective-c"

  s.license      = { :type => 'MIT', :file => 'MIT-LICENSE.md' }

  s.author             = { "Gavin Williams" => "gavin.williams@fishrod.co.uk" }

  s.social_media_url = "http://twitter.com/fishrodgavin"

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.8'

  s.source       = { :git => "https://github.com/fishrod-interactive/sails-io.objective-c.git", :tag => "0.0.2" }

  s.source_files  = 'Classes'

  s.dependency 'socket.IO', '~> 0.5'

end
