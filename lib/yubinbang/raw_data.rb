require 'open-uri'

module Yubinbang
  module RawData
    def self.fetch(path)
      open("http://www.post.japanpost.jp/zipcode/dl/kogaki/lzh/ken_all.lzh") do |f|
        File.open(path, "w") {|o| o.write(f.read)}
      end
    end
  end
end
