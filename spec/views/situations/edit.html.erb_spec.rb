require 'rails_helper'

RSpec.describe "situations/edit", type: :view do
  before(:each) do
    @situation = assign(:situation, Situation.create!(
      :plant => nil,
      :spectrum => 1.5,
      :description => "MyString"
    ))
  end

  it "renders the edit situation form" do
    render

    assert_select "form[action=?][method=?]", situation_path(@situation), "post" do

      assert_select "input[name=?]", "situation[plant_id]"

      assert_select "input[name=?]", "situation[spectrum]"

      assert_select "input[name=?]", "situation[description]"
    end
  end
end
