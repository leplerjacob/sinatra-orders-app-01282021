class OrderController < ApplicationController


# create (object): renders order form to create new order
get '/orders/new' do
    erb :'orders/new'
end

# submit action: submits to database the new order
post '/orders' do 
    # "Order submitted"
    redirect '/orders'
end

#read
get '/orders' do
    "Order submitted. Showing order"    
end





#update






#delete





end