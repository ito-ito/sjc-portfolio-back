require 'rails_helper'

describe CareersController, type: :request do
  let(:career) { create(:career) }
  let(:params) { {career: {title: 'title', start_date: '2024-04-01'.to_date }}}

  describe 'GET #index' do
    subject { get "/careers", params: path_parameters }

    before { create_list(:career, 10) }

    let(:path_parameters) { nil }

    it do
      subject
      expect(response).to have_http_status(:success)
    end

    describe "params limit" do
      context 'params is nil' do
        it 'limitを指定しない場合全件返ってくること' do
          subject
          expect(JSON.parse(response.body).length).to eq 10
        end
      end

      context 'limit 3' do
        let(:path_parameters) { {limit: 3} }
        it '指定された件数だけ件数だけ返ってくること' do
          subject
          expect(JSON.parse(response.body).length).to eq 3
        end
      end
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
