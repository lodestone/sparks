class SparksController < ApplicationController

  def file

    chickens = params[:sparkpath] * '/'
    chickens[/\.(.*)$/]
    params[:format] = $1
 
    static_file = params[:sparkpath].join('/')
    if Dir.glob("#{Rails.root}/app/views/sparks/#{static_file}.*").empty?
      render :file => "#{RAILS_ROOT}/public/404.html", :layout => false, :status => 404
    else
      render :action => static_file and return
    end
    
  end

end

