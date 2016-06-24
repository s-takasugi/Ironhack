require '../../lib/models/post.rb'

describe 'Post' do
  before :each do
    @post=Post.new "title #1", Date.new(2016, 06, 23), "text #1"
  end

  describe '#title' do
    it 'should return title' do
      expect(@post.title).to eq("title #1")
    end
  end

  describe '#date' do
    it 'should return date' do
      expect(@post.date).to eq([2016-06-23]])
    end
  end

  describe '#text' do
    it 'should return text' do
      expect(@post.text).to eq("text #1"])
    end
  end
end
