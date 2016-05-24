module SignInMacros
  def sign_in_and_redirect_to(path)
    author = FactoryGirl.create(:author)
    visit '/cms/sign-in'
    fill_in 'email', with: author.email
    fill_in 'password', with: author.password
    click_on 'SignIn'

    visit path
  end

  def sign_in_and_redirect_to(path, model: author)
    visit '/cms/sign-in'
    fill_in 'email', with: author.email
    fill_in 'password', with: author.password
    click_on 'SignIn'

    visit path
  end

end