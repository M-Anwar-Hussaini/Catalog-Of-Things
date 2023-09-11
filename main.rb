require_relative 'helpers/app'

class Main
  attr_accessor :app

  def initialize
    @app = Application.new
  end
end
Main.new
