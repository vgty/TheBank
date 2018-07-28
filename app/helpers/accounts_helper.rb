module AccountsHelper
  
  def disposal(account)
    amount_array(account).sum
  end
  
  def amount_array(account)
    account.transactions.map do |t|
      t.amount
    end
  end
  
end
