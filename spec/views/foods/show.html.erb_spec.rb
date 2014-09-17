require 'spec_helper'

describe "foods/show" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :description => "Description",
      :serving_size => 1,
      :serving_unit => "Serving Unit",
      :sugar => 2,
      :carbohydrate => 3,
      :source => "Source"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/Serving Unit/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Source/)
  end
end
