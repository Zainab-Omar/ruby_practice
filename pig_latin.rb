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