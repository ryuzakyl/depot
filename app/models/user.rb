class User < ActiveRecord::Base
  # the username can't be null and has to be unique
  validates :name, presence: true, uniqueness: true

  has_secure_password

  after_destroy :ensure_an_admin_remains

  private
    # the exception is raised inside a transaction
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
end
