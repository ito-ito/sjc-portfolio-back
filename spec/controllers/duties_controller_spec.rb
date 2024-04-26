require 'rails_helper'

describe DutiesController, type: :request do
  let(:duty) { create(:duty) }
  let(:params) { {duty: {title: 'title', start_date: '2024-04-01'.to_date }}}

  describe 'GET #index' do
    subject { get '/duties'}

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    subject { get "/duties/#{duty.id}" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    subject { post '/duties', params: params }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PUT #update' do
    subject { put "/duties/#{duty.id}", params: params  }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE #destroy' do
    subject { delete "/duties/#{duty.id}" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end
end
