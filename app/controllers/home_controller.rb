class HomeController < ApplicationController
  def index
    @script="home"    
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @guest_books }
    end
  end
end
