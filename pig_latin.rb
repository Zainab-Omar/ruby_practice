#!/urs/bin/env ruby



# first find the index number of vowel letter 

VOWELS = ['a', 'e', 'i', 'o', 'u']


def find_vowel_in_array(array=[])
    array.find_index {|char| VOWELS.include?(char)}
end

def big_latin(word='')
    word.downcase!

    char_array = word.split('')
    find_first_vowel = find_vowel_in_array(char_array)

    if find_first_vowel > 0
        front = char_array[0...find_first_vowel]
        main = char_array[find_first_vowel..-1]
    else
        front = []
        main = char_array
    end

    main.join + front.join + 'ay'

end

def sentence_to_pig_latin(sentence="")
    words = sentence.split(' ')
    array = words.map do |word|
        word_no_punct = remove_punctuation(word)
        pig_latin(word_no_punct)
    end
    array.join(' ').capitalize + '.'
end

def remove_punctuation(word="")
    punct = '.,;:!?'.split('')
    if punct.include?(word[-1,1])
        word.chop!
    end
    word
end

def display_intro
    puts "\n>> Pig Latin Translator <<\n\n"
    puts "Type phrases to translate after each prompt."
    puts "Type 'quit' to exit."
    puts
  end
  
  def pig_latin_translator
    display_intro
    loop do
      print "translate: "
      input = gets.chomp
      if input == 'quit'
        exit!
      else
        puts sentence_to_pig_latin(input)
        puts
      end
    end
  end
  
  # Launch the translator
  pig_latin_translator
  