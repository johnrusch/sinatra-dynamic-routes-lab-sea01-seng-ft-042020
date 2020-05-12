require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @reversed_name = @name.reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared_number = (@number * @number)
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params.map {|k, v| v }.join(" ") + "."
  end
  
  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      (@number1 + @number2).to_s
    when 'subtract'
      (@number1 - @number2).to_s
    when 'multiply'
      (@number1 * @number2).to_s
    when 'divide'
      (@number1 / @number2).to_s
    end
    
  end
end