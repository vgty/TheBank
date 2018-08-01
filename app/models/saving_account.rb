class SavingAccount < ApplicationRecord
  validates_presence_of :name, :user_id, :saving_account_type_id

  belongs_to :user
  belongs_to :saving_account_type
  
  before_save :set_unique_id
  

  def interest_rate
    account_type = SavingAccountType.find(self.saving_account_type_id)
    account_type.interest_rate
  end
  
  rails_admin do
    
    create do
      field :name
      field :user_id
      field :saving_account_type_id , :enum do
        enum do
          [['Père de Famille',1],['Livret A',2],['Actif',3],['Pays Emergents',4]]
        end
      end 
    end
    update do 
      field :name
      field :user_id
      field :saving_account_type_id , :enum do
        enum do
          [['Père de Famille',1],['Livret A',2],['Actif',3],['Pays Emergents',4]]
        end
      end 
    end
  end
  
  def set_unique_id
    self.unique_id = generate_unique_id
  end

  def generate_unique_id
    loop do
      token = rand.to_s[2..17]
      break token unless SavingAccount.where(unique_id: token).exists?
    end
  end

end
