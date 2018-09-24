def dictionary 
  words={
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "For"=>"4",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter (str)
  array=str.split(" ")
  i=0
  output=[]
while i<array.length
  dictionary.map do |word,value|
    if (array[i]==word)
      array.delete_at(i)
      array.insert(i, value)
    end
    end
    i+=1
  end
array.join(" ")
end

def bulk_tweet_shortener (arr)
  i=0
  while i<arr.length
    puts word_substituter(arr[i])
    i+=1
  end
end

def selective_tweet_shortener (str)
  if (str.length>140)
    return word_substituter(str)
  else
  str
end
end


def shortened_tweet_truncator (str)
  modified_tweet=selective_tweet_shortener(str)
  output=""
  if (modified_tweet.length>140)
    output=modified_tweet[0...137]+"..."
    return output
  else
  return modified_tweet
  end
end
