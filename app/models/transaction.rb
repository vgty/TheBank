class Transaction < ApplicationRecord
  belongs_to :account
  belongs_to :counselor, optional: true
  has_one :litigation
  before_save :credit_or_debit
  
  private
  
  def credit_or_debit
    self.amount = 0 - self.amount if self.out
  end
end
