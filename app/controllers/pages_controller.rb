class PagesController < ApplicationController
  def about
    @title = 'About Tulip';
    @who = 'This product was created by Anthony Diké'
  end 
end
