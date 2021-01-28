class OrderController < ApplicationController

    # *** NOTE: use '<%=' in erb file when calling passed in variables

# create (object): renders order form to create new order
get '/orders/new' do
    erb :'orders/new'
end

# submit action: submits to database the new order, and redirects to url with created id
post '/orders' do 
    # "Order submitted"
    @order = Order.create(
        address: params[:address],
        item: params[:item],
        item_price: params[:item_price],   
        total: params[:total]
    )
    redirect "/orders/#{@order.id}"
end

#read: gets the order id passed from the url and display to user
get '/orders/:id' do
    @order = Order.find(params[:id])
    erb :'/orders/show'
end

get '/orders' do
    @orders= Order.all
    erb :'/orders/all'
end

#update

# get '/orders/:id'




#delete





end