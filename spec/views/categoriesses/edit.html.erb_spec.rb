require 'rails_helper'

RSpec.describe "categoriesses/edit", type: :view do
  before(:each) do
    @categoriess = assign(:categoriess, Categoriess.create!())
  end

  it "renders the edit categoriess form" do
    render

    assert_select "form[action=?][method=?]", categoriess_path(@categoriess), "post" do
    end
  end
end
