# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def initialize(*params)
    super(*params)
    @style="application"
    @script="application"
  end
end
