class Counselor < ApplicationRecord
  has_many :users  
  has_many :litigations
  has_many :accounts
  has_many :saving_accounts
  has_many :transactions
end
