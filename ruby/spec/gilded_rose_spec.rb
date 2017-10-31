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
    it "degrading item normally" do
      items = [Item.new("Elixir of the Mongoose", 5, 7)]
      GildedRose.new(items).degrading_normally()
      expect(items[0].quality).to eq 6
      expect(items[0].sell_in).to eq 4
    end

  describe "items never sold" do
    it "never sells 'Sulfuras'" do
      items = [Item.new("Sulfuras, Hand of Ragnaros", 0, 80)]
      GildedRose.new(items).never_sold()
      expect(items[0].quality).to eq 80
    end
  end

  # Item.new(name="Backstage passes to a TAFKAL80ETC concert", sell_in=15, quality=20),
  #   Item.new(name="Backstage passes to a TAFKAL80ETC concert", sell_in=10, quality=49),
  #   Item.new(name="Backstage passes to a TAFKAL80ETC concert", sell_in=5, quality=49),
end
