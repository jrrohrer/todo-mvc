class ListsController < ApplicationController
    def index
        # index also contains the 'new' form, so no need for 'new' action or view
        # implicitly render 'lists/index'
        @lists = List.all
        @list = List.new
    end

    def show
        # I need to load the list. Which one?
        # params has all the data passed by the user
        @list = List.find(params[:id])
        # reads the ID value from the URL to know which list to show
    end

    def create
        @list = List.new
        @list.name = params[:list][:name]
        @list.save

        redirect_to list_path(@list)
    end
end
