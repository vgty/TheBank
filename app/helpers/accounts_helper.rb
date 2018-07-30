module AccountsHelper
  
  def disposal(account)
    amount_array(account).sum
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
  
end
