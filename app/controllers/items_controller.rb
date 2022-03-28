class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    Item.create(name: params['name'], price: params['price'])

    redirect_to "/items/new"
  end

  def destroy
    Item.destroy(params['id'])
  end

  def show
    @item = Item.find(params['id'])
  end

  def update
    Item.update(params['id'], :name => params['name'], :price => params['price'])
  end

  def new
  end

  def edit
    @item = Item.find(params['id'])
  end
end
