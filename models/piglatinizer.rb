class PigLatinizer

  def piglatinize(word)
    if word[0].match(/[aeiou]/i)
      word + "way"
    else
      position = (word =~ /[aeiou]/i)
      word[position..word.length-1] + word[0...position] + "ay"
    end
  end

  def to_pig_latin(sentence)
    array = sentence.split(" ")
    array.collect {|word| piglatinize(word)}.join(" ")
  end
end
