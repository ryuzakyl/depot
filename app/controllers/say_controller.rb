class SayController < ApplicationController
  def hello
    @time = Time.now
  end

  def goodbye
  end

  def playtime
    @files = Dir.glob('*')
  end
end
