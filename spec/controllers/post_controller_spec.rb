# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:post) { FactoryBot.create(:post, user:) }

  before do
    sign_in user
  end

  describe 'GET index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET show' do
    it 'returns a successful response' do
      get :show, params: { id: post.id }
      expect(response).to be_successful
    end
  end
end
