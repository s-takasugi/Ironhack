require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do

  describe 'GET #index' do
    it 'should return a success code (200)' do
      get :index

      expect(response.code).to eq('200')
      expect(response).to be_success
      expect(response).to have_http_status(200)
      expect(response).to render_template('index')
    end
  end

  describe 'GET #show' do
    it 'shows an Ingredient' do
      ingredient = Ingredient.create(name: 'Carrot', calories: 123)
      get :show, {id: ingredient.id}
      expect(response).to be_success
      ingredient.destroy
    end

    it 'returns 404 when ingredient does not exist' do
      get :show, {id: -1}
      expect(response).to have_http_status(404)
    end
  end

  describe 'POST #create' do
    it 'creates a new Ingredient' do
      expect{
        post :create, {ingredient: {name: 'Carrot', calories: 123}}
      }.to change(Ingredient, :count).by(1)
      expect(Ingredient.last.name).to eq('Carrot')
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes an Ingredient' do
      ingredient = Ingredient.create(id: 1, name: 'Carrot', calories: 123)
      expect{
        delete :destroy, {id: ingredient.id}
      }.to change(Ingredient, :count).by(-1)
    end
  end
end
