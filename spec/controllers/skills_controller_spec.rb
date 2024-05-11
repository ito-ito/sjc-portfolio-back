require 'rails_helper'

describe SkillsController, type: :request do
  let(:skill) { create(:skill) }
  let(:params) {{ skill: { name: 'name', level: 10 }}}

  describe 'GET #index' do
    subject { get "/skills" }

    before { create_list(:skill, 10) }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    subject { get "/skills/#{skill.id}" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    subject { post '/skills', params: params }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PUT #update' do
    subject { put "/skills/#{skill.id}", params: params  }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE #destroy' do
    subject { delete "/skills/#{skill.id}" }

    it do
      subject
      expect(response).to have_http_status(:success)
    end
  end
end
