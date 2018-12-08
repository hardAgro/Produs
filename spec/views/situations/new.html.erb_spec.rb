require 'rails_helper'

RSpec.describe "situations/new", type: :view do
  before(:each) do
    assign(:situation, Situation.new(
      :plant => nil,
      :spectrum => 1.5,
      :description => "MyString"
    ))
  end

  it "renders new situation form" do
    render

    assert_select "form[action=?][method=?]", situations_path, "post" do

      assert_select "input[name=?]", "situation[plant_id]"

      assert_select "input[name=?]", "situation[spectrum]"

      assert_select "input[name=?]", "situation[description]"
    end
  end
end
