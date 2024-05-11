require 'rails_helper'

describe ProductsController, type: :request do
  let(:product) { create(:product) }
  let(:params) {{ product: { name: 'name', description: 'description text' }}}

  describe 'GET #index' do
    subject { get "/products" }

    before { create_list(:product, 10) }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    subject { get "/products/#{product.id}" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    subject { post '/products', params: params }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PUT #update' do
    subject { put "/products/#{product.id}", params: params  }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE #destroy' do
    subject { delete "/products/#{product.id}" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end
end
