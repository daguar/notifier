require 'spec_helper'

describe "contracts/edit" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contract_path(@contract), "post" do
      assert_select "input#contract_title[name=?]", "contract[title]"
      assert_select "textarea#contract_description[name=?]", "contract[description]"
    end
  end
end
