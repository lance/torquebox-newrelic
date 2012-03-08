require 'rubygems'
require 'sinatra/base'

require 'haml'
require 'sass'

require 'widget'

module WidgetCatalog

  class Application < Sinatra::Base

    enable :sessions, :logging, :static, :method_override
    
    before do
      @dispatcher = NewRelic::Control.instance.local_env.dispatcher
      @agent      = NewRelic::Agent.instance
    end

    get '/' do
      @widgets = Widget.all
      haml :index
    end

    put '/widget/:id' do
      do_update
      redirect '/'
    end

    delete '/widget/:id' do
      do_delete
      content_type :json
      "{\"id\": #{params[:id]}}"
    end

    post '/widget' do
      attrs = params[:widget] || {}
      widget = Widget.create( attrs )
      redirect '/'
    end

    get '/styles.css' do
      scss :styles
    end
    
    private
    def do_update
      widget = Widget.get(params[:id])
      widget.update( params[:widget] ) if widget
      widget.save
    end

    def do_delete
      widget = Widget.get(params[:id])
      puts "Can't find a widget with that id. Sorry." and return unless widget
      widget.destroy
    end

  end
end


require 'newrelic_rpm'
