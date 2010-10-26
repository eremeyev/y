class MainController < ApplicationController
  layout 'main', :except => [:show_full_image, :close_full_image]
  
  def index
  end

  def home
  end

  def blog
  end

  def disks
  end

  def contacts
  end
  
  def magazins
    @magazins = Magazin.all
#    [
 #     {'title'=>'1','year'=>'2005','season'=>'spring'},
  #    {'title'=>'2','year'=>'2005','season'=>'summer'},
   #   {'title'=>'3','year'=>'2005','season'=>'autumn'}
    #]
  end
  
  def show_full_image
    @id = params[:id]
  end

  def close_full_image
  end

end
