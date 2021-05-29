require 'rails_helper'

RSpec.describe "categories/category_expenses/show", type: :view do
  before(:each) do
    @categories_category_expense = assign(:categories_category_expense, Categories::CategoryExpense.create!(
      title: "Title",
      color: "Color",
      icon: "Icon",
      wallet: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(//)
  end
end
