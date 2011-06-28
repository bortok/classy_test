require 'spec_helper'

describe Billboard do
  before(:each) do
    @etype = Factory(:etype)
    @attr = { :title    => "First Keynote",
              :etype_id => @etype
    }
  end

  it "should create a new instance given valid attributes" do
    Billboard.create!(@attr)
  end

end
