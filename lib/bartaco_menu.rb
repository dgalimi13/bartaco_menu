require_relative "./bartaco_menu/version"
require_relative "./bartaco_menu/cli"
require_relative "./bartaco_menu/item"
require_relative "./bartaco_menu/ingredient"
require_relative "./bartaco_menu/scrapper"


require 'pry'
require 'nokogiri'
require 'open-uri'

module BartacoMenu
  class Error < StandardError; end
  # Your code goes here...
end
