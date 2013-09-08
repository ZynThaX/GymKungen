require 'spec_helper'

describe "images/show" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :image_url => "Image Url",
      :title => "Title",
      :album_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Url/)
    rendered.should match(/Title/)
    rendered.should match(/1/)
  end
end
