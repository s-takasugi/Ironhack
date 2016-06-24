class LoginService
  VALID_USERS = {
    soy: 1234,
    admin: 0000
  }.freeze

  def initialize(user)
    @user = user
  end

  def login
    VALID_USERS[@user[:username].to_sym] == @user[:password].to_i
  end
end
