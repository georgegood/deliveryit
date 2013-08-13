require 'spec_helper'

describe Risk do 
  context "validating" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:impact) }
    it { should validate_presence_of(:likeliness) }
  end
end