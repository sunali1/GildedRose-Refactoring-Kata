require 'gilded_rose'

describe GildedRose do

  # subject(:rose) { described_class.new }
  # item = class_double("Item").as_stubbed_const

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
  end
    it "degrades item 'Conjured' twice as quickly " do
      items = [Item.new("Conjured", 50, 80)]
      GildedRose.new(items).never_sold()
    end

  describe "items never sold" do
    it "never sells 'Sulfuras'" do
      items = [Item.new("Sulfuras, Hand of Ragnaros", 50, 80)]
      GildedRose.new(items).never_sold()
      expect(items[0].quality).to eq 80
    end
  end


end
