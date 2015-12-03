class ItemController < ApplicationController
    # list all
    get '/' do
        @items = Item.all
        erb :read
    end

    # create
    get '/create' do
        erb :create
    end

    post '/create' do
        @item = Item.new
        @item.name = params[:name]
        @item.quantity = params[:quantity].to_i
        @item.save
        @items = Item.all
        erb :read
    end

    # read
    get '/read' do
        @items = Item.all
        erb :read
    end

    # update
    get '/update/:id' do
        @item = Item.find(params[:id])
        erb :update
    end

    post '/update' do
        @item = Item.find(params[:id])
        @item.name = params[:name]
        @item.quantity = params[:quantity].to_i
        @item.save
        @items = Item.all
        erb :read
    end

    # destroy
    get '/destroy/:id' do
        @item = Item.find(params[:id])
        erb :destroy
    end

    post '/destroy' do
        @item = Item.find(params[:id])
        @item.destroy
        @items = Item.all
        erb :read
    end
end
