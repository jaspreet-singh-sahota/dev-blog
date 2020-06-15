require 'rails_helper'

RSpec.describe "categoriesses/new", type: :view do
  before(:each) do
    assign(:categoriess, Categoriess.new())
  end

  it "renders new categoriess form" do
    render

    assert_select "form[action=?][method=?]", categoriesses_path, "post" do
    end
  end
end
