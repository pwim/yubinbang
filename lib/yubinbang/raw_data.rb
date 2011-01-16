require 'open-uri'
require 'iconv'
require 'fastercsv'

module Yubinbang
  module RawData
    def self.fetch(path)
      open("http://www.post.japanpost.jp/zipcode/dl/kogaki/lzh/ken_all.lzh") do |f|
        File.open(path, "w") {|o| o.write(f.read)}
      end
    end

    def self.decode(source, target)
      s = `cd #{target}; lha x #{source}`
    end
    
    def self.parse(source)
      iconv = Iconv.new("UTF-8", "Shift_JIS")
      s = iconv.iconv(File.read(source))
      a = []
      FasterCSV.parse(s) do |row|
        a << {
          :postal_code => row[2],
          :prefecture => row[6],
          :municipality => row[7],
        }
      end
      a
    end
  end
end
