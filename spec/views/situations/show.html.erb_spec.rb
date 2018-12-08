require 'rails_helper'

RSpec.describe "situations/show", type: :view do
  before(:each) do
    @situation = assign(:situation, Situation.create!(
      :plant => nil,
      :spectrum => 2.5,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Description/)
  end
end
