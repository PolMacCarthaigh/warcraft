require_relative 'spec_helper'

# Enhancement 2
# Units start off alive but they die if their HP reaches 0 or lower. This is usually a result of receiving damage from combat.

# Part 1

# Define a method #dead? on the Unit class. We add it to Unit instead of Footman because all Units can die, not just Footmans or Peasants.

# Part 2

# A dead Unit cannot attack another Unit. Conversely, a living Unit will also not attack another Unit that is already dead.

describe Unit do 

  

  describe "Footman dead?" do

    it "returns false if the unit has health points left" do
      unit = Unit.new(25,25)
      expect(unit.dead?).to be_falsey
    end

    it "returns true if the unit has no health points left" do
      unit = Unit.new(0,10)
      expect(unit.dead?).to be_truthy
    end


  end

end
