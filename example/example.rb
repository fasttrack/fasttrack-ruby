require_relative '../lib/fasttrack-client'

client = FastTrack::Client.new('your_token')

begin
  response = client.get_company('example.com')
  puts response
rescue FastTrack::UnauthorizedException => e
  puts 'UnauthorizedException'
  puts e
end
