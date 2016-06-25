class LoginService
  def initialize(user, store)
    @user = user
    @store = store
  end

  def login
    password_for(user[:username]) == user[:password]
  end

  private

  def password_for(username)
    store.find(username)[:password]
  end

  attr_reader :user, :store
end
