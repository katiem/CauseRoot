require 'spec_helper'

describe "rules/new" do
  before(:each) do
    assign(:rule, stub_model(Rule,
      :name => "MyString",
      :type => "",
      :xpath => "MyString",
      :regex => "MyString",
      :field_name => "MyString",
      :rule_id => 1
    ).as_new_record)
  end

  it "renders new rule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rules_path, :method => "post" do
      assert_select "input#rule_name", :name => "rule[name]"
      assert_select "input#rule_type", :name => "rule[type]"
      assert_select "input#rule_xpath", :name => "rule[xpath]"
      assert_select "input#rule_regex", :name => "rule[regex]"
      assert_select "input#rule_field_name", :name => "rule[field_name]"
      assert_select "input#rule_rule_id", :name => "rule[rule_id]"
    end
  end
end
