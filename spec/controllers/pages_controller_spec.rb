require 'spec_helper'

describe PagesController do

  describe "GET 'welcome'" do
    it "should be successful" do
      get 'welcome'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'development'" do
    it "should be successful" do
      get 'development'
      response.should be_success
    end
  end

end
