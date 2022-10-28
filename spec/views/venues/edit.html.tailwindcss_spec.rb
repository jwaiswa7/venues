require 'rails_helper'

RSpec.describe "venues/edit", type: :view do
  let(:venue) {
    Venue.create!(
      name: "MyString",
      user: nil,
      details: "MyText"
    )
  }

  before(:each) do
    assign(:venue, venue)
  end

  it "renders the edit venue form" do
    render

    assert_select "form[action=?][method=?]", venue_path(venue), "post" do

      assert_select "input[name=?]", "venue[name]"

      assert_select "input[name=?]", "venue[user_id]"

      assert_select "textarea[name=?]", "venue[details]"
    end
  end
end
