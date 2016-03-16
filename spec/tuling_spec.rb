# coding: utf-8
require "spec_helper"



describe Tuling do



  it "should have an api key" do
    expect(Tuling.api).not_to be_empty
  end


  describe "gathering response" do

    tl = Tuling.new

    it "should have a response" do
      result = tl.input("test",1)
      expect(result).not_to be_empty
    end

    it "should have a response without user_id" do
      result = tl.input("test")
      expect(result).not_to be_empty
    end

    it "should return don't know english" do
      result = tl.input("test", "")
      expect(result['text']).to eq("我不会说英语的啦，你还是说中文吧。")
    end
  end


end