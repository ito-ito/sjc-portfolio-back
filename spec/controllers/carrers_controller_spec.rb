require 'rails_helper'

describe CareersController, type: :request do
  let(:career) { create(:career) }
  let(:params) { {career: {title: 'title', start_date: '2024-04-01'.to_date }}}

  describe 'GET #index' do
    subject { get "/careers" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    subject { get "/careers/#{career.id}" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    subject { post '/careers', params: params }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PUT #update' do
    subject { put "/careers/#{career.id}", params: params  }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE #destroy' do
    subject { delete "/careers/#{career.id}" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end
end
