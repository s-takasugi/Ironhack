class TextInspectionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(' ').length
    @word_per_minute = (@word_count / 275.0).round(2)

    @words = @text.split(' ')
    @frequency = Hash.new
    @words.each do |word|
      if @frequency[word.downcase]
        @frequency[word.downcase] += 1
      else
        @frequency[word.downcase] = 1
      end
    end
    @sorted_frequency = @frequency.sort_by{|word, num| num}.reverse[0..9]
    render 'results'
  end
end
