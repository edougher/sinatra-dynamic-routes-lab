require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    @reverse_string = params["name"]
    "#{@reverse_string.reverse}"
  end

  get '/square/:number' do 
    @num = params["number"].to_i
    @sqr_num = @num * @num
    "#{@sqr_num}"
  end

  get '/say/:number/:phrase' do 
    @phrase = params[:phrase].to_s
    answer = ""
    params[:number].to_i.times do
      answer += @phrase
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i

    answer = "Unable to process"
    case params[:operation]
    when 'add'
      answer = (number_1 + number_2).to_s
    when 'subtract'
      answer = (number_1 - number_2).to_s
    when 'multiply'
      answer = (number_1 * number_2).to_s
    when 'divide'
      answer = (number_1 / number_2).to_s
    end
  end
end