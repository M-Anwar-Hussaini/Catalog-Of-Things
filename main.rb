require_relative 'helpers/app'
require_relative 'helpers/helper'
require_relative 'helpers/reader'
include Reader
class Main
  include Helper
  attr_accessor :app

  def initialize
    create_folder('json')
    @app = Application.new
  end
end
Main.new
