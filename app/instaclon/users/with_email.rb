module Users
  class WithEmail
    def initialize(user_repository:)
      @user_repository = user_repository
    end

    def call(email)
      Presenter.new(user_repository.find_by_email(email.to_s))
    end

    private

    class Presenter
      extend Forwardable
      delegate [:email,
                :bio,
                :followers,
                :followees,
                :photos,
                :avatar] => :user

      def initialize(user)
        @user = user
      end

      def to_h
        {
          email: email,
          bio: bio,
          followers: followers.size,
          followees: followees.size,
          photos: photos.size,
          avatar: avatar,
        }
      end

      private

      attr_reader :user
    end

    attr_reader :user_repository
  end
end
