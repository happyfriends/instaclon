module Users
  class Create
    def initialize(user_repository:)
      @user_repository = user_repository
    end

    def call(email)
      user_repository.create_user(email)
    end

    private

    attr_reader :user_repository
  end
end
