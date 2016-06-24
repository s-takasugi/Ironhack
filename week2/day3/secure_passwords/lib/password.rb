class PasswordChecker
  def initialize(email, password)
    @email=email
    @password=password
  end

  def seven
    @password.length > 7
  end

  def symbols
    if @password.match(/[0-9]/) &&
       @password.match(/[a-z]/) &&
       @password.match(/[a-z]/) &&
       @password.match(/[^A-Za-z0-9_]/)
      return true
    else
      return false
    end
  end

  def email
    name = (@email.match /\w*@/).to_s.gsub!('@','')
    domain = (@email.match /@\w*/).to_s.gsub!('@','')
    if (@password.match(name) == nil) &&
       (@password.match(domain) == nil)
       return true
     else
       return false
     end
  end

  def check_password
    seven && symbols && email
  end  
end
