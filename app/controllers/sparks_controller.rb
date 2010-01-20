class SparksController < ApplicationController

  def file

    chickens = params[:parameters] * '/'
    chickens[/\.(.*)$/]
    params[:format] = $1
 
    respond_to do |wants|
      wants.xml { render :text => 'xml' }
      wants.html { render :text => 'html' }
    end
    
    
  end

end

