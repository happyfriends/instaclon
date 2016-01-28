class User < ActiveRecord::Base

  def self.create_user(email)
    create(email: email)
  end
end
