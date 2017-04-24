class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :pets, :through => :appointments
  
    validates_length_of :zip, :maximum => 5
	validates :name, presence: true, length: {maximum: 35}
	validates :experience, presence: true, :inclusion => 1..100

  def self.get_name(id)
    return self.find(id).name
  end
	
end
