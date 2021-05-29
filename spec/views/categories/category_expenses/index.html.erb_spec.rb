require 'rails_helper'

RSpec.describe "categories/category_expenses/index", type: :view do
  before(:each) do
    assign(:categories_category_expenses, [
      Categories::CategoryExpense.create!(
        title: "Title",
        color: "Color",
        icon: "Icon",
        wallet: nil
      ),
      Categories::CategoryExpense.create!(
        title: "Title",
        color: "Color",
        icon: "Icon",
        wallet: nil
      )
    ])
  end

  it "renders a list of categories/category_expenses" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Color".to_s, count: 2
    assert_select "tr>td", text: "Icon".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
