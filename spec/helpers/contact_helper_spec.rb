require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ContactHelper. For example:
#
# describe ContactHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ContactHelper, :type => :helper do
  describe "Get name and description" do
    it "should show contact name and surname" do
      contact = Contact.create(name: "Marty", surname: "McFly",
                               description: "Time traveler")
      expect(name_and_description(contact)).
        to eq("Marty <strong>McFly</strong> <span>Time traveler</span>")
    end
  end
end
