def calc
  puts "Wybierz język/Select language\nPolski[pol]\nEnglish[eng]"

  a = gets.chomp.downcase

  if a == "pol"
  puts "1.Wprowadź działanie\n2.Wciśnij q aby wyjść"
    result = "wynik to ..."
    error = "Wpisano złe działanie"
  end

  if a == "eng"
  puts "1.Insert calculation\n2.Enter q to exit"
    result = "result is ..."
    error = "Invalid insert"
  end

  while true
    operation = gets.chomp.split(" ")
    return if operation[0] == 'q'

    sign_2 = operation[1].to_sym

    if operation[0].include? "."
      sign_1 = operation[0].to_f
    else
      sign_1 = operation[0].to_i
    end

    if operation[2].include? "."
      sign_3 = operation[2].to_f
    else
      sign_3 = operation[2].to_i
    end



    case sign_2
    when :* then puts "#{result} #{sign_1 * sign_3}"
    when :/ then puts "#{result} #{sign_1.to_f / sign_3}"
    when :+ then puts "#{result} #{sign_1 + sign_3}"
    when :- then puts "#{result} #{sign_1 - sign_3}"
    when :% then puts "#{result} #{sign_1 % sign_3}"
    when :** then puts "#{result} #{sign_1 ** sign_3}"
    else
      puts "#{error}"
    end
  end
end


if __FILE__ == $0
  calc
end
