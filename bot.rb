@MaratonaBetty  = TweetStream::Client.new

puts "[STARTING] bot..."
@client.userstream() do |status| 
  #MaratonaBettyEnNY
  puts status.text  #
end
require "rubygems"
require "tweetstream"
require "em-http-request"
require "simple_oauth"
require "json"
require "uri"

# config oauth
OAUTH = {
 :consumer_key => "G6PPlCkLAjygmDlMEg776q7TH",
 :consumer_secret => "6W5G1ghFNpSPSa3Jt6YuEmeQlamQRPhIKMWzbRFSrqC2JHVWpS",
 :token => "1264308937324670976-yikOTjJsW29bpInb1ZZNgKsnQOIx59",
 :token_secret => "hF21xhmL8tKQIh5FnNxiNBTqZi5JTAMHzePhTBBg2oBWR"
}
ACCOUNT_ID = OAUTH[:token].split("-").first.to_i

TweetStream.configure do |config|
 config.consumer_key       = OAUTH[:consumer_key]
 config.consumer_secret    = OAUTH[:consumer_secret]
 config.oauth_token        = OAUTH[:token]
 config.oauth_token_secret = OAUTH[:token_secret]
 config.auth_method = :oauth
end
