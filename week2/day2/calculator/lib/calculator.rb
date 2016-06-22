# Week2 Day2 Exercise <The Online Calculator>

require "yaml/store"

class Calculator
  def self.add(num1, num2)
    num1 + num2
  end
  def self.subtract(num1, num2)
    num1-num2
  end
  def self.multiply(num1, num2)
    num1 * num2
  end
  def self.divide(num1, num2)
    num1 / num2
  end
  def self.save(result)
    store = YAML::Store.new("./public/data.yml")
    store.transaction do
      store["data"] = result
    end
  end

end
