require 'spec_helper'

describe "foods/index" do
  before(:each) do
    assign(:foods, [
      stub_model(Food,
        :description => "Description",
        :serving_size => 1,
        :serving_unit => "Serving Unit",
        :sugar => 2,
        :carbohydrate => 3,
        :source => "Source"
      ),
      stub_model(Food,
        :description => "Description",
        :serving_size => 1,
        :serving_unit => "Serving Unit",
        :sugar => 2,
        :carbohydrate => 3,
        :source => "Source"
      )
    ])
  end

  it "renders a list of foods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Serving Unit".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
  end
end
