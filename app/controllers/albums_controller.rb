class AlbumsController < ApplicationController
    #before_action :set_albums, only: [:show, :edit, :update, :destroy]
    #respond_to? :html, :json
    def index
        @albums = Album.all
        #respond_to do |format|
        #    format.html
        #    format.js
        #end
       #respond_with(@albums)
    end

    def show
        @album = Album.find(params[:id])
        @tracks = @album.tracks
    end
end
