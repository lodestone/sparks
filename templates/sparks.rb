class SparksGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      m.file 'controllers/static_controller.rb', 'app/controllers/static_controller.rb'
      m.directory 'app/views/static'
      
    end

  end


end

