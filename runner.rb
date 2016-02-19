require 'CSV'
require_relative 'controller'
require_relative 'view'
require_relative 'card'
require_relative 'deck'

controller = Controller.new
controller.run
