require 'spec_helper'

describe "promo_slots/index" do
  before(:each) do
    assign(:promo_slots, [
      stub_model(PromoSlot,
        :product_id => 1,
        :slot_type => 2,
        :title => "Title",
        :description => "MyText",
        :link_url => "Link Url"
      ),
      stub_model(PromoSlot,
        :product_id => 1,
        :slot_type => 2,
        :title => "Title",
        :description => "MyText",
        :link_url => "Link Url"
      )
    ])
  end

  it "renders a list of promo_slots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link Url".to_s, :count => 2
  end
end
