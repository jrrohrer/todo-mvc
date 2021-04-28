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
        @item = @list.items.build
    end

    def create
        @list = List.new(list_params)
        if @list.save # if list is valid
            redirect_to list_path(@list) # create list and redirect to the list's show page
        else # otherwise
            @lists = List.all # re-populate the list of lists
            render :index # render the index page
        end

        
    end

    private

    def list_params
        params.require(:list).permit(:name)
    end
end
