class PigLatinizer
    # transform word from english to pig latin
    def transform(word)
        chars = word.chars
        if chars[0].downcase.scan(/[aeiou]/).empty?
            # first letter is a consonant
            i = 0
            consonants = []
            while chars[i].downcase.scan(/[aeiou]/).empty?
                consonants << chars[i]
                i += 1
            end
            return chars.slice(i, chars.length).join + consonants.join + "ay"
        else
            # first letter is a vowel
            return chars.join + "way"
        end
    end

    def piglatinize(phrase)
        @phrase = phrase
        pig_latin = []
        @phrase.split(" ").each do |word|
            pig_latin << self.transform(word)
        end
        return pig_latin.join(" ")
    end
end