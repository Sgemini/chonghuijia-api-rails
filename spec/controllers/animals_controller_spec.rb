require 'rails_helper'

RSpec.describe AnimalsController, type: :controller do
  describe '#index' do
    it 'should return 200' do
      get :index
      expect(response.status).to eq 200
    end

    it 'search should retrurn 200' do
      get :index, params: { search: true }
      expect(response.status).to eq 200
    end
  end
end
