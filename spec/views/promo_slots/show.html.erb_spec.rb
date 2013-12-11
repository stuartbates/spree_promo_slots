require 'spec_helper'

describe "promo_slots/show" do
  before(:each) do
    @promo_slot = assign(:promo_slot, stub_model(PromoSlot,
      :product_id => 1,
      :slot_type => 2,
      :title => "Title",
      :description => "MyText",
      :link_url => "Link Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Link Url/)
  end
end
