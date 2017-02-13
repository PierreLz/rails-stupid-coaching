class CoachingController < ApplicationController
  def answer
    @question = params[:user_message]
    @coachanswer = coach_answer(@question)
  end

  def ask
  end
end


private
def coach_answer(user_message)
  if user_message.downcase == "i am going to work right now!"
    ''
  elsif user_message.end_with?("?")
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(user_message)
  answer = coach_answer(user_message)
  if answer != ""
    if user_message.upcase == user_message
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  else
    ""
  end
end
