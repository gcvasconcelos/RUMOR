require 'rails_helper'

RSpec.describe "lunches/index", type: :view do
  before(:each) do
    @m1 = Menu.create!(:date => "2018-04-06")
    @m2 = Menu.create!(:date => "2018-04-16")
    assign(:lunches, [
      Lunch.create!(
        :menu_id => @m1.id,
        :salad => "Salad",
        :sauce => "Sauce",
        :main_course => "Main Course",
        :garnish => "Garnish",
        :vegetarian_dish => "Vegetarian Dish",
        :accompaniments => "Accompaniments",
        :dessert => "Dessert",
        :juice => "Juice"
      ),
      Lunch.create!(
         :menu_id => @m2.id,
        :salad => "Salad",
        :sauce => "Sauce",
        :main_course => "Main Course",
        :garnish => "Garnish",
        :vegetarian_dish => "Vegetarian Dish",
        :accompaniments => "Accompaniments",
        :dessert => "Dessert",
        :juice => "Juice"
      )
    ])
  end

  it "renders a list of lunches" do
    render
    assert_select "tr>td", :text => "Salad".to_s, :count => 2
    assert_select "tr>td", :text => "Sauce".to_s, :count => 2
    assert_select "tr>td", :text => "Main Course".to_s, :count => 2
    assert_select "tr>td", :text => "Garnish".to_s, :count => 2
    assert_select "tr>td", :text => "Vegetarian Dish".to_s, :count => 2
    assert_select "tr>td", :text => "Accompaniments".to_s, :count => 2
    assert_select "tr>td", :text => "Dessert".to_s, :count => 2
    assert_select "tr>td", :text => "Juice".to_s, :count => 2
  end
end
