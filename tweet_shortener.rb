# Write your code here.

def dictionary
    {"hello" => "hi",
    "to" => "2", 
    "two" => "2", 
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&",}
end

def word_substituter(phrase)
    phrase.split(" ").map { |word|
        if dictionary[word.downcase]
            dictionary[word.downcase]
        else
            word
        end
    }.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each { |tweet|
       puts word_substituter(tweet)
    }

end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        tweet.slice(0,140)
    else
        tweet
    end
end


puts word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")