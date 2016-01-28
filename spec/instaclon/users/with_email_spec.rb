require_relative "../../../app/instaclon/users/email"
require_relative "../../../app/instaclon/users/with_email"

describe Users::WithEmail do
  subject(:with_email) { described_class.new(user_repository: user_repo) }
  let(:user_repo) { double :user_repo, find_by_email: user }
  let(:email) { Users::Email.for("bob@email.com") }
  let(:user) do
    double :user,
      email: email.to_s,
      bio: "",
      followers: [],
      followees: [],
      photos: [],
      avatar: ""
  end

  describe "#call" do
    it "returns user info based on email" do
      expect(
        with_email.call(email).to_h
      ).to eql({
        email: email.to_s,
        bio: "",
        followers: 0,
        followees: 0,
        photos: 0,
        avatar: ""
      })
    end
  end
end
