Gem::Specification.new do |s|
  s.name        = 'fasttrack-client'
  s.version     = '1.0.2'
  s.date        = '2017-07-07'
  s.summary     = "Fast Track client"
  s.description = "This Fasttrack library enables you to request the Fasttrack API in a convenient way. For more information about the Fasttrack API please see https://api.fasttrack-intl.com"
  s.authors     = ["Fast Track"]
  s.email       = 'info@fasttrack-intl.com'
  s.files       = [
    "lib/fasttrack-client.rb",
    "lib/common.rb",
    "lib/exceptions.rb",
    "lib/constants.rb",
  ]
  s.homepage    = 'https://github.com/fasttrack/fasttrack-ruby'
  s.license     = 'MIT'

  s.add_development_dependency('webmock', '~> 3.0')
  s.add_dependency('rest-client', '~> 2.0')
end
