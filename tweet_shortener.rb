# Write your code here.
def dictionary
   dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2', 
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array_tweet = tweet.split(' ')
  dictionary_keys = dictionary().keys
  shortend_tweet = array_tweet.collect do |word|
    if dictionary_keys.include?(word)
      word = dictionary()[word]
    else 
      word 
    end
  end
  shortend_tweet.join(' ')
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet_length = tweet.split('').count
  if tweet_length > 140
    word_substituter(tweet)
  else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.split('').count > 140
    tweet[0..136] << '...'
  else
    tweet
  end
end