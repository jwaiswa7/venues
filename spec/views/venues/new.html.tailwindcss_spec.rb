require 'rails_helper'

RSpec.describe "venues/new", type: :view do
  before(:each) do
    assign(:venue, Venue.new(
      name: "MyString",
      user: nil,
      details: "MyText"
    ))
  end

  it "renders new venue form" do
    render

    assert_select "form[action=?][method=?]", venues_path, "post" do

      assert_select "input[name=?]", "venue[name]"

      assert_select "input[name=?]", "venue[user_id]"

      assert_select "textarea[name=?]", "venue[details]"
    end
  end
end
