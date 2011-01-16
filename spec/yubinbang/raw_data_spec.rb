require 'spec_helper'

describe Yubinbang::RawData do
  it "should retreive raw data" do
    raw_file = File.join(spec_root, "tmp/ken_all.lzh")
    described_class.fetch(raw_file)
    File.exist?(raw_file).should be_true
  end

  it "should decode raw data" do
    raw_file = File.join(spec_root, "data/ken_all.lzh")
    described_class.decode(raw_file, File.join(spec_root, "tmp"))
    extracted_file = File.join(spec_root, "tmp/ken_all.csv")
    File.exist?(extracted_file).should be_true
  end

  it "should parse raw data" do
    csv_file = File.join(spec_root, "data/ken_all.csv")
    expected = {
      :postal_code => "0600000",
      :prefecture => "北海道",
      :municipality => "札幌市中央区"
    }
    described_class.parse(csv_file).first.should == expected
  end

  after do
    Dir[File.join(spec_root, "tmp/*")].each {|f| File.delete(f)}
  end
end
