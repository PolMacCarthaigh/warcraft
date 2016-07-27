require 'spec_helper'
 # Enhancement 1
     # In most strategy games, like Warcraft III, buildings can also be attacked by Units. Since a Barracks is a building, it has substantially more HP (500). Additionally, a Footman does only half of its AP as damage to a Barracks. This is because they are quite ineffective against buildings.The damage amount should be an integer (Fixnum), but the ceiling (ceil) of the division should be used as the resulting amount.

  describe Barracks do
    before :each do
    @barracks = Barracks.new
  end

  #Barracks 500hp 
    it "has 500 hp" do
      expect(@barracks.health_points).to eq(500)
    end

  #Damage buildings
  describe "damage" do
    it "damage buildings by 1/2" do
      @barracks.damage(5)
      expect(@barracks.health_points).to eq(495) 
    end
  end
  

end
