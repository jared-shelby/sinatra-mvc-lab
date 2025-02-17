require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        piglatinizer = PigLatinizer.new
        @pig_latin = piglatinizer.piglatinize(params[:user_phrase])
        erb :pig_latin
    end
end