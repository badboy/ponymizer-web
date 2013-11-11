# encoding: utf-8

require 'sinatra'
require 'ponymizer'
require 'json'

class PonymizerWeb < Sinatra::Base
  get '/' do
    content_type 'text/plain'
    Ponymizer.new.gimmie_a_pony!
  end

  get '/json' do
    content_type 'application/json'
    { pony: Ponymizer.new.gimmie_a_pony! }.to_json
  end
end
