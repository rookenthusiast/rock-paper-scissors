class Game

  def initialize(action)
    @action = action
    @computer = rand(1..3)
  end

  def play_game
    case @action
    when "rock"
      if computers_choice() == "paper"
        return "Computer wins"
      elsif computers_choice() == "scissors"
        return "You win!"
      else
        return "go again"
      end


      case @action
      when "paper"
        if computers_choice() == "paper"
          return "go again"
        elsif computers_choice() == "scissors"
          return "Computer wins!"
        else
          return "You win!"
        end
      end
    end

    case @action
    when "scissors"
      if computers_choice() == "paper"
        return "You win!"
      elsif computers_choice() == "scissors"
        return "go again"
      else
        return "Computer wins!"
      end
    end
  end



  def computers_choice
    case @computer
    when 1
      return "rock"
    when 2
      return "paper"
    when 3
      return "scissors"
    end
  end

end
