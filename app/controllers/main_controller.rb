class MainController < ApplicationController
  layout "main"
  def index
    @main_props = { name: "Fernando" }
    #render : template => 'index'
  end
end
