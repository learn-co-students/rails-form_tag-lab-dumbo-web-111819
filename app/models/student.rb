class Student < ActiveRecord::Base
  def to_s
    if self.last_name
      self.first_name + " " + self.last_name
    else
      self.first_name
    end
  end
end