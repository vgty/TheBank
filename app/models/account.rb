class Account < ApplicationRecord
  validates_presence_of :wording, :user_id
  
  belongs_to :user
  belongs_to :counselor, optional: true
  has_many :transactions, dependent: :destroy
  
  before_save :set_unique_id
  
  
  rails_admin do
    
    create do
      field :wording
      field :user_id
      field :counselor
    end
    update do 
      field :wording
      field :user_id
      field :counselor
    end
  end
  
  def disposal
    amount_array(self).sum
  end
  
  def amount_array(account)
    account.transactions.map do |t|
      if t.litigation == nil || t.litigation.status == "traité"
        t.amount
      else
        0
      end
    end
  end

  def set_unique_id
    self.unique_id = generate_unique_id
  end

  def generate_unique_id
    loop do
      token = rand.to_s[2..17]
      break token unless Account.where(unique_id: token).exists?
    end
  end
  
end
