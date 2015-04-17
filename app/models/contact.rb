class Contact < ActiveRecord::Base
  validates :name, presence: true

  def full_name
    !self.surname.empty? ? "#{self.name} #{self.surname}" : self.name
  end
end
