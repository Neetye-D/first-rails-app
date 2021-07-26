class QuestionsController < ApplicationController
  def ask; end

  def time
    Time.now
  end

  def answer
    @question = params['question']
    # @answer = params['answer']
    # If the message is I am going to work, the coach will answer Great!
    if @question == 'I am going to work'
      @answer = 'Great!'
      # localhost:3000/answer?question=what time is it?
    elsif @question == 'what time is it?'
      @answer = "It is #{time}"
      # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
      # Otherwise the coach will answer I don't care, get dressed and go to work!
    else @answer = "I don't care, get dressed and go to work!"
    end
  end
end
