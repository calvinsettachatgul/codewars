def pig_it text
  text_arr = text.split(" ")

  result = ""

  text_arr.each do | word |
    word_arr = word.split("")
    first_letter = word_arr.shift
    # puts first_letter
    # p word_arr

    pig_word = word_arr.join. + first_letter + 'ay'
    result = result + pig_word + " "
  end

  return result.strip
end


p pig_it('Pig latin is cool')