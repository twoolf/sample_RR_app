require 'spec_helper'

describe "foods/new" do
  before(:each) do
    assign(:food, stub_model(Food,
      :description => "MyString",
      :serving_size => 1,
      :serving_unit => "MyString",
      :sugar => 1,
      :carbohydrate => 1,
      :source => "MyString"
    ).as_new_record)
  end

  it "renders new food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", foods_path, "post" do
      assert_select "input#food_description[name=?]", "food[description]"
      assert_select "input#food_serving_size[name=?]", "food[serving_size]"
      assert_select "input#food_serving_unit[name=?]", "food[serving_unit]"
      assert_select "input#food_sugar[name=?]", "food[sugar]"
      assert_select "input#food_carbohydrate[name=?]", "food[carbohydrate]"
      assert_select "input#food_source[name=?]", "food[source]"
    end
  end
end
