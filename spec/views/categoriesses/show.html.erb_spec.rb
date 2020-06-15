require 'rails_helper'

RSpec.describe "categoriesses/show", type: :view do
  before(:each) do
    @categoriess = assign(:categoriess, Categoriess.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
