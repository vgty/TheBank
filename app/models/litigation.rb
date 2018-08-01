class Litigation < ApplicationRecord
  validates :status, inclusion: { in: ["nouveau", "encours de traitement", "traité"] },
                     presence: true
                     
  before_create :set_identifier
  belongs_to :counselor


#Rails Admin custom

  rails_admin do
    
    create do 
      field :cause
      field :transaction_id
      field :status , :enum do
        enum do
          ["nouveau", "encours de traitement", "traité"]
        end
      end
      field :counselor
    end
    update do 
      field :cause
      field :transaction_id
      field :status , :enum do
        enum do
          ["nouveau", "encours de traitement", "traité"]
        end
      end
      field :counselor
    end
  end
  
  private

  def set_identifier
    self.identifier = generate_identifier
  end

  def generate_identifier
    loop do
      token = ('A'..'Z').to_a.shuffle[0,2].join + '-' + rand.to_s[2..5]
      break token unless Litigation.where(identifier: token).exists?
    end
  end
end
