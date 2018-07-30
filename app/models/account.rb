class Account < ApplicationRecord
  validates_presence_of :wording
  validates :unique_id, length: { is: 16 }, uniqueness: true
  belongs_to :user
  has_many :transactions
  
  before_create :set_unique_id

  private

  def set_unique_id
    self.unique_id = generate_unique_id
  end

  def generate_unique_id
    loop do
      token = rand.to_s[2..17]
      break token unless User.where(unique_id: token).exists?
    end
  end
  
end
