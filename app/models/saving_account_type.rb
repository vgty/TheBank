class SavingAccountType < ApplicationRecord  
  validates_presence_of :name, :interest_rate
end
