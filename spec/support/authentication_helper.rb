module AuthenticationHelper

  def signin_as(user)
    visit signin_path
    click_link "developer signin"
    fill_in :name, with: user.name
    fill_in :email, with: user.uid
    click_button "Sign In"
    current_path.should == root_path
  end

end
