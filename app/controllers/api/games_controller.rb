class Api::GamesController < ApplicationController
  def alphabet_action
    @your_name = params["my_name"]
    if @your_name.downcase.start_with?("a")
      @response = "Hey, your name starts with the first letter of the alphabet!"
    else
      @response = "Get a new name!"
    end
    render "alphabet_action_view.json.jbuilder"
  end

  def guess_action
    @number = params[:my_number].to_i
    target = 42
    if @number > target
      @message = "Too high, try something lower."
    elsif @number < target
      @message = "Too low, you really should aim higher."
    else
      @message = "You got it, next beer's on me."
    end
    render "guess_action_view.json.jbuilder"
  end
end
