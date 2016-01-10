class BenchmarkController < ApplicationController
  def index
    @answer = nil
  end

  def blank
    @answer = nil
  end

  def hello_world
    @answer = nil
  end

  def template
    @answer = nil
  end

  def fibonacci
    n = params[:value].to_i
    
    sequence = [1]
    
    n.times do
      current_number, last_number = sequence.last(2)
      sequence << current_number + (last_number or 0)
    end
    
    @answer = sequence.last
  end
end
