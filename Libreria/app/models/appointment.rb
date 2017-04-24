class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :pet
=begin
  validates :date, presence: true
  validate :date_in_past , :on => :create
  validates :pet, presence: true
  validates :customer, presence: true
  validates :reason, presence: true  
=end

end
