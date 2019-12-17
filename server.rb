require 'sinatra'
require 'httparty'
# require 'twilio-ruby'

account_sid = 'ACd03436f1b868105eed3c751042edbc15'
auth_token = 'bd1485607f6b34afb5e15be46862f479'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+12056273389' # Your Twilio number
to = '+16462491401' # Your mobile phone number

get '/' do 
    erb :index
end

get '/cookies' do 
    client.messages.create(
    from: from,
    to: to,
    body: "We have the best deals on cookies. Prices range from $1 to $1050. we have options for everyone.")
    
    erb :cookies
end

get '/cupcake' do 
    client.messages.create(
    from: from,
    to: to,
    body: "We have the best deals on cupcakes. Prices range from $1 to $1050. we have options for everyone.")
    
    erb :cupcake
end

get '/cake' do 
    client.messages.create(
        from: from,
        to: to,
        body: "We have the best deals on cakes. Prices range from $1 to $1050. we have options for everyone.")  
    erb :cake
end


