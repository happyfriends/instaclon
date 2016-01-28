require 'rails_helper'

RSpec.describe User, type: :model do
  describe ".create_user" do
    let(:email) { "bob@email.com" }
    it "creates a new user" do
      expect {
        described_class.create_user(email)
      }.to change(User, :count).by 1
    end
  end
end
