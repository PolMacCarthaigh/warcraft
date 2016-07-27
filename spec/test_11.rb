require 'spec_helper'

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

    #Barracks 500hp 
    it "has 500 hp" do
      expect(@barracks.health_points).to eq(500)
    end

    #Damage buildings
     describe "#damage" do
     it "damage buildings by 1/2" do
      @barracks.damage(5)
      expect(@barracks.health_points).to eq(495) 
    end
  end
  

end
