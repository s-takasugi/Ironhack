# Week2 Day2 Pair Programming <ASCII art>

require 'sinatra'
require 'sinatra/reloader'
require 'artii'

get '/ascii/:word/?:font?/?:secret?' do
  @word = params[:word]
  @font = params[:font]
  @secret = params[:secret]
  @key = 0

  if
    @font == nil
    @font = 'standard'
  elsif
    @word == 'dachshund' && @font == 'digital' && @secret == 'secret'
    @key = 1
  end

  input = Artii::Base.new :font => @font
  @output = input.asciify(@word)
  erb(:word)

end
