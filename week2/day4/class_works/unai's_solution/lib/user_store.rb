require 'yaml/store'

class UserStore
  def initialize(filename)
    @store = YAML::Store.new "#{filename}.yml"
  end

  def find(username)
    store.transaction do
      return if store[:users][username].nil?

      {
        username: username,
        password: store[:users][username]
      }
    end
  end

  def add(user)
    store.transaction do
      store[:users] ||= {}
      store[:users].merge!(
        user[:username] => user[:password]
      )
    end
  end

  private

  attr_reader :store
end
