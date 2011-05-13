class LastTweet < Poundie::Plugin
  register :last_tweet

  match do |message|
    message.body.include? "last tweet "
  end

  action do |message|
    username = message.body.gsub("last tweet ", "").gsub("@", "").strip
    puts "showing last tweet by @#{username}"
    res = get "http://api.twitter.com/1/statuses/user_timeline.json?screen_name=#{username}"
    tweets = JSON.parse(res)
    tweet "https://twitter.com/#!/#{username}/status/#{tweets.first['id']}"
  end
end

Poundie.use :last_tweet
