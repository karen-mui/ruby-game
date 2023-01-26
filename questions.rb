class Questions

  def ask_question(player, num1, num2)
    puts "#{player}: What does #{num1} plus #{num2} equal?"

    print "> "
    answer = $stdin.gets.chomp

    if answer == (num1 + num2).to_s
      puts "Yes! You are correct"
    else
      puts "No"
    end


  end

end
