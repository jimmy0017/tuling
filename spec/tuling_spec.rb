# coding: utf-8
require "spec_helper"



describe Tuling do

  it "should have an api key" do
    #ENV["tuling123"] = "b022470dcaedfaf2841a07d1d25bbb7c"
    expect(Tuling.api).not_to be_empty
  end


  describe "gathering response" do

    tl = Tuling.new

    it "should have a url" do
      url = tl.full_url("test","")
      expect(url).to eq("http://www.tuling123.com/openapi/api?key=#{Tuling.api}&info=test&userid=")
    end

  end


end