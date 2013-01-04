class Job < ActiveRecord::Base
  attr_accessible :address
  
  def to_s
    "#{id}"
  end
end
