class Voucher < ActiveRecord::Base
  belongs_to :job
  belongs_to :claimant, class_name: 'Contractor'
  attr_accessible :code
end
