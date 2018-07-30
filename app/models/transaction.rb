class Transaction < ApplicationRecord
  belongs_to :account
  before_save :credit_or_debit
  
  def credit_or_debit
    self.amount = 0 - self.amount if self.out
  end
end
