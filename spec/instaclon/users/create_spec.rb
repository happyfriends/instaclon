require_relative "../../../app/instaclon/users/create"

describe Users::Create do
  subject(:user_create) { described_class.new(user_repository: user_repo) }
  let(:user_repo) { double :user }
  let(:email) { "bob@email.com" }
  describe "#call" do
    it "creates a new user" do
      expect(user_repo).to receive(:create_user).with(email)
      user_create.call(email)
    end
  end
end
