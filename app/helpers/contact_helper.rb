module ContactHelper

  def name_and_description(contact)
    markup = []
    markup << contact.name
    markup << " <strong>#{contact.surname}</strong>" unless contact.surname.empty?
    markup << " <span>#{contact.description}</span>"
    markup.join("").html_safe
  end
end
