class Account < ApplicationRecord
  validates_presence_of :wording
  validates :unique_id, length: { is: 16 }, uniqueness: true

  belongs_to :user
  
  def gen_id
    self.unique_id = rand.to_s[2..17] 
  end
end
