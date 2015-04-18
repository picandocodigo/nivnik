class Contact < ActiveRecord::Base
  validates :name, presence: true

  def full_name
    !self.surname.empty? ? "#{self.name} #{self.surname}" : self.name
  end

  def name_and_description
    markup = <<-EOF
    #{self.full_name}
    <span>#{self.description}</span>
    EOF
    markup.html_safe
  end
end
