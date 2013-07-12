require 'spec_helper'

describe "contracts/new" do
  before(:each) do
    assign(:contract, stub_model(Contract,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contracts_path, "post" do
      assert_select "input#contract_title[name=?]", "contract[title]"
      assert_select "textarea#contract_description[name=?]", "contract[description]"
    end
  end
end
