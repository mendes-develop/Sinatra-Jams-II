class InstrumentsController < ApplicationController
  
    get "/instruments" do
      @instruments = Instrument.all
      erb :'instruments/index'
    end
  
    # get "/artists/new" do
    #   @artist = Artist.new
    #   erb :'artists/new'
    # end
  
    get "/instruments/:id" do
      @instrument = Instrument.find(params[:id])
      erb :'instruments/show'
    end
  
    # get "/artists/:id/edit" do
    #   @artist = Artist.find(params[:id])
    #   erb :'artists/edit'
    # end
  
    # patch "/artists/:id" do
    #   @artist = Artist.find(params[:id])
    #   @artist.update(params[:artist])
    #   redirect to "/artists/#{@artist.id}"
    # end
  
    # post "/artists" do
    #   @artist = Artist.create(params[:artist])
    #   redirect to "/artists"
    # end
  
    # delete "/artists/:id" do
    #   @artist = Artist.find(params[:id])
    #   @artist.destroy
    #   redirect to "/artists"
    # end
  
  end
  