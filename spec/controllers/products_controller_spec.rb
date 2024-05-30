require 'rails_helper'

describe ProductsController, type: :request do
  let(:product) { create(:product) }
  let(:params) {{ product: { name: 'name', description: 'description text' }}}

  describe 'GET #index' do
    subject { get "/products" }

    before { create_list(:product, 10) }

    it do
      subject
      expect(response).to have_http_status(200)
      assert_schema_conform
    end
  end

  describe 'GET #show' do
    subject { get "/products/#{product_id}" }

    let(:product_id) { product.id }

    context 'product_id is exist' do
      it do
        subject
        expect(response).to have_http_status(200)
        assert_schema_conform
      end
    end

    context 'product_id is not exist' do
      let(:product_id) { 99999 }

      it do
        subject
        expect(response).to have_http_status(404)
        assert_schema_conform
      end
    end
  end

  describe 'POST #create' do
    subject { post '/products', params: params }

    it do
      subject
      expect(response).to have_http_status(201)
      assert_schema_conform
    end
  end

  describe 'PUT #update' do
    subject { put "/products/#{product_id}", params: params  }

    let(:product_id) { product.id }

    context 'product_id is exist' do
      it do
        subject
        expect(response).to have_http_status(200)
        assert_schema_conform
      end
    end

    context 'product_id is not exist' do
      let(:product_id) { 99999 }

      it do
        subject
        expect(response).to have_http_status(404)
        assert_schema_conform
      end
    end
  end

  describe 'DELETE #destroy' do
    subject { delete "/products/#{product_id}" }

    let(:product_id) { product.id }

    context 'product_id is exist' do
      it do
        subject
        expect(response).to have_http_status(204)
        assert_schema_conform
      end
    end

    context 'product_id is not exist' do
      let(:product_id) { 99999 }

      it do
        subject
        expect(response).to have_http_status(404)
        assert_schema_conform
      end
    end
  end
end
