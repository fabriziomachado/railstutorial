class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
  end

  def about
     @title = "About"
  end

end
