class SavingAccountType < ApplicationRecord  
  validates_presence_of :name, :interest_rate
  has_many :saving_accounts
end
