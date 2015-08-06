class Store < ActiveRecord::Base

   has_many :employees, dependent: :destroy
   validates :name, length: { minimum: 3 }
   validates :annual_revenue, numericality: { greater_than: 0 }
   validate :mens_or_womens_apparel 

   def mens_or_womens_apparel
    unless mens_apparel || womens_apparel 
      errors.add(:base, "A store must carry mens or womens apparel")
    end
  end

end

