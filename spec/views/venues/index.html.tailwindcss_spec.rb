require 'rails_helper'

RSpec.describe "venues/index", type: :view do
  before(:each) do
    assign(:venues, [
      Venue.create!(
        name: "Name",
        user: nil,
        details: "MyText"
      ),
      Venue.create!(
        name: "Name",
        user: nil,
        details: "MyText"
      )
    ])
  end

  it "renders a list of venues" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
