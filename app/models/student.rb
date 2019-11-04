class Student < ActiveRecord::Base
  def to_str
    self.first_name + " " + self.last_name
  end
end