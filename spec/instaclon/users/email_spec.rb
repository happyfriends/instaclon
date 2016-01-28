require_relative "../../../app/instaclon/users/email"

describe Users::Email do
  subject(:user_email) { described_class.for(email) }
  let(:email) { "bob@email.com" }

  describe "#to_s" do
    it "returns the email value" do
      expect(user_email.to_s).to eql "bob@email.com"
    end
  end
end
