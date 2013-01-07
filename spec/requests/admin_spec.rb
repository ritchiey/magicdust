require 'spec_helper'

describe "as an unauthenticated user" do
  describe "accessing the admin site" do
    it "should require me to login" do
      visit admin_dashboard_url
      current_path.should == signin_path
    end
  end
end

describe "as a contractor user" do
  include AuthenticationHelper

  before(:each) do
    contractor_user = create :contractor_user
    signin_as contractor_user
  end

  describe "accessing the admin site" do
    before(:each) do
      click_link "Admin"
    end
    it "should redirect to the root path and display an error" do
      current_path.should == root_path
      page.should have_content("You must be admin to access admin pages.")
    end
  end
end

describe "as a client user" do
  include AuthenticationHelper

  before(:each) do
    client_user = create :client_user
    signin_as client_user
  end

  describe "accessing the admin site" do
    before(:each) do
      click_link "Admin"
    end
    it "should redirect to the root path and display an error" do
      current_path.should == root_path
      page.should have_content("You must be admin to access admin pages.")
    end
  end
end

describe "as an admin user" do
  include AuthenticationHelper

  before(:each) do
    admin_user = create :admin_user
    signin_as admin_user
  end

  describe "accessing the admin site" do
    before(:each) do
      click_link "Admin"
    end
    it "should display the admin dashboard" do
      current_path.should == admin_dashboard_path
    end
  end
end
