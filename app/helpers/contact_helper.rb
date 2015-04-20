module ContactHelper

  def name_and_description(contact)
    markup = []
    markup << contact.name
    markup << "<span>#{contact.surname}</span>" unless contact.surname.empty?
    markup << "<span>#{contact.description}</span>"
    markup.join("").html_safe
  end
end
