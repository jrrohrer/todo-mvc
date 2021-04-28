class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id]) # finds the list we're adding items to
    @item = @list.items.build(item_params) # builds item objects through the list object (b/c items are a nested resource)
    @item.save # don't forget to save...build method does not persist to the database
    redirect_to list_path(@list) # redirects back to the the list's show page
  end

  private

  def item_params
    params.require(:item).permit(:description)
  end
end
