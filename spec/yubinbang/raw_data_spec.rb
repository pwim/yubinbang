require 'spec_helper'

describe Yubinbang::RawData do
  it "should retreive raw data" do
    raw_file = File.join(spec_root, "tmp/ken_all.lzh")
    described_class.fetch(raw_file)
    File.exist?(raw_file).should be_true
    File.delete(raw_file)
  end

  it "should decode raw data" do
    raw_file = File.join(spec_root, "data/ken_all.lzh")
    described_class.decode(raw_file, File.join(spec_root, "tmp"))
  end
end
