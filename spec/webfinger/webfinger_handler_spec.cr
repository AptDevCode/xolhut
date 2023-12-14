require "../spec_helper"
require "../../src/webfinger/webfinger_handler"

include Smilodon::Webfinger

describe WebfingerHandler do
  handler = WebfingerHandler.new

  describe "#find_account" do
    it "should return a valid webfinger response" do
      response = handler.find_account("acct:captain_america@marvel.social")
    end

    it "should return a 404 response" do
      response = handler.find_account("acct:red_skull@marvel.social")
    end
  end
end
