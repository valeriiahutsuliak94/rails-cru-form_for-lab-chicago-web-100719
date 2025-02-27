class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
    end 

    def new
        @genre = Genre.new
    end 

    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to new_genre_path
        

    end 

    def edit
        @genre = Genre.find(params[:id])
    end 

    def update
        @genre = Genre.update(genre_params)
        redirect_to @genre
    end 

private 

    def genre_params
        params.require(:genre).permit(:name)
    end 


end
