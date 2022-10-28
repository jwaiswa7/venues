require 'rails_helper'

RSpec.describe "venues/show", type: :view do
  before(:each) do
    assign(:venue, Venue.create!(
      name: "Name",
      user: nil,
      details: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
