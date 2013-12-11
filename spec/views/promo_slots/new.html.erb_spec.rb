require 'spec_helper'

describe "promo_slots/new" do
  before(:each) do
    assign(:promo_slot, stub_model(PromoSlot,
      :product_id => 1,
      :slot_type => 1,
      :title => "MyString",
      :description => "MyText",
      :link_url => "MyString"
    ).as_new_record)
  end

  it "renders new promo_slot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", promo_slots_path, "post" do
      assert_select "input#promo_slot_product_id[name=?]", "promo_slot[product_id]"
      assert_select "input#promo_slot_slot_type[name=?]", "promo_slot[slot_type]"
      assert_select "input#promo_slot_title[name=?]", "promo_slot[title]"
      assert_select "textarea#promo_slot_description[name=?]", "promo_slot[description]"
      assert_select "input#promo_slot_link_url[name=?]", "promo_slot[link_url]"
    end
  end
end
