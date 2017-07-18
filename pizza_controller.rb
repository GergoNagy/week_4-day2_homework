require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/pizza.rb')

#INDEX
get '/pizzas' do
  @pizzas = Pizza.all
  erb(:index)
end
#NEW
get '/pizzas/new' do
  
  erb(:new)
end
#CREATE
post '/pizzas' do
  new_order = Pizza.new(params)
  new_order.save
  erb(:create)
end
#SHOW
get '/pizzas/:id' do
  erb(:details)
end

#EDIT

#UPDATE

#DESTROY
