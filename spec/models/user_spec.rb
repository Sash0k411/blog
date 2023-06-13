# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:post) { create(:post) }
  describe 'associations' do
    it { is_expected.to have_many(:posts) }
  end
end
