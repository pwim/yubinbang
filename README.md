# Yubinbang

Japanese Postal Code Search / 郵便番号検索

At the moment, just handles fetching and parsing of postal code data

## Dependencies

  * lha - lzh archiver

## Usage

    require 'rubygems'
    require 'yubinbang'
    Yubinbang::RawData.parse_from_source('/tmp') # /tmp is working directory
