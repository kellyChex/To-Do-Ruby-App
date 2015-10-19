class Task < ActiveRecord::Base
  # belongs_to(:list)
  validates :name, :presence => true

  validates :name, :presence => true, :length => { :maximum => 50 }
end
#   def self.not_done
#     self.where(:done => false)
#   end
# end
