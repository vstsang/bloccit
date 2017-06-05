require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advert) { Advertisement.create!(title: "New ad title", body: "New ad body", price: 10) }

  describe "attributes" do
    it "has title, body and price attributes" do
      expect(advert).to have_attributes(title: "New ad title", body: "New ad body", price: 10)
    end
  end
end
