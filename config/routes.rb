ActionController::Routing::Routes.draw do |map|

  map.spark '*:sparkpath', :controller => 'sparks', :action => 'file'

end
