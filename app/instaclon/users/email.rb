module Users
  class Email
    def self.for(email)
      new(email: email)
    end

    def initialize(email:)
      @email = email
    end

    def to_s
      email
    end

    private

    attr_reader :email
  end
end
