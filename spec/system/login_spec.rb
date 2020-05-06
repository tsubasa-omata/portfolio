require 'rails_helper'

RSpec.describe 'ログイン、ログアウト', type: :system do
    
    it "有効な情報の場合、ログインに成功すること" do
      user = FactoryBot.create(:user, name: 'sample',
        email: 'sample@example.com',
        password: 'password')
      visit new_user_session_path
      fill_in "メールアドレス", with: "sample@example.com"
      fill_in "パスワード", with: "password"
      click_button "ログイン"
      expect(current_path).to eq root_path
      expect(page).to have_content "ログインしました。"
    end

    it "無効な情報の場合、ログインに失敗すること" do
      user = FactoryBot.create(:user, name: 'sample',
        email: 'sample@example.com',
        password: 'password')
      visit new_user_session_path
      fill_in "メールアドレス", with: "sample@example.com"
      fill_in "パスワード", with: "pass"
      click_button "ログイン"
      expect(current_path).to eq new_user_session_path
      expect(page).to have_content "メールアドレス もしくはパスワードが不正です。"
    end

    it "ログアウトに成功すること" do
      user = FactoryBot.create(:user)
      visit new_user_session_path
      fill_in "メールアドレス", with: user.email
      fill_in "パスワード", with: user.password
      click_button "ログイン"
      click_on "ログアウト"
      expect(current_path).to eq root_path
      expect(page).to have_content "ログアウトしました。"
    end

end