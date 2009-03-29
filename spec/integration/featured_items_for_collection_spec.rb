require File.join(File.dirname(__FILE__),'..','spec_helper')

describe "featured_items_for_colelction" do
  it "should be successful" do
    response = post_method('featured_items_for_collection', { 'params' => { 'alias' => '/p4006coll2' }.to_json })

    response.should be_success
  end
  it "should return JSON data" do
    response = post_method('featured_items_for_collection', { 'params' => { 'alias' => '/p4006coll2' }.to_json })
    
    response.headers['Content-Type'].should == 'application/json'
  end
end