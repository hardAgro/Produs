require 'rails_helper'

RSpec.describe "situations/index", type: :view do
  before(:each) do
    assign(:situations, [
      Situation.create!(
        :plant => nil,
        :spectrum => 2.5,
        :description => "Description"
      ),
      Situation.create!(
        :plant => nil,
        :spectrum => 2.5,
        :description => "Description"
      )
    ])
  end

  it "renders a list of situations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
