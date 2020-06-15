require 'rails_helper'

RSpec.describe "categoriesses/index", type: :view do
  before(:each) do
    assign(:categoriesses, [
      Categoriess.create!(),
      Categoriess.create!()
    ])
  end

  it "renders a list of categoriesses" do
    render
  end
end
