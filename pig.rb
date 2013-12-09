class Translator

  def initialize(phrase)
    @phrase = phrase
    @vowels = %w[a e i o u]
    @consonants = []
  end

  def translate
    consonants
    translation = ''
    words.each do |word|
      if starts_with_vowel?(word)
        translation << "#{word}way "
      elsif starts_with_cluster?(word)
        translation << deal_with_cluster(word)
      else
        translation << "#{word[1,word.size-1]}#{word[0]}ay "
      end
    end
    translation
  end

  private
  def words
    @phrase.split(' ')
  end

  def starts_with_vowel?(word)
    @vowels.include?(word[0])
  end

  def starts_with_cluster?(word)
    @consonants.include?(word[0]) && @consonants.include?(word[1])
  end

  def deal_with_cluster(word)
    word[2..-1] + word[0..1] + 'ay '
  end

  def consonants
    alpha = ('a'..'z').to_a
    @consonants = alpha - @vowels
  end
end
