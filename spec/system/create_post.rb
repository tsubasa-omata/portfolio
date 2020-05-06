require 'rails_helper'

RSpec.describe 'スレッド作成', type: :system do

  #let!(:user) { FactoryBot.create(:user, name: 'sample', 
  #                                      email: 'sample@example.com', 
  #                                      password: 'password') }

  

  context "スレッド作成について" do

    before do
      user = FactoryBot.create(:user, name: 'sample',
        email: 'sample@example.com',
        password: 'password')
      visit new_user_session_path
      fill_in "メールアドレス", with: "sample@example.com"
      fill_in "パスワード", with: "password"
      click_button "ログイン"
    end

    it "スレッドを作成できること" do
      categories = FactoryBot.create :category, :work
      visit new_post_path
      fill_in "タイトル", with: "ruby"
      fill_in "説明", with: "ruby"
      check categories.name
      click_button "作成"
      #expect(current_path).to eq post_path
      expect(page).to have_content "作成完了"
    end

    it "カテゴリーを選択しない場合スレッドを作成できないこと" do
      categories = FactoryBot.create :category, :work
      visit new_post_path
      fill_in "タイトル", with: "ruby"
      fill_in "説明", with: "ruby"
      click_button "作成"
      #expect(current_path).to eq post_path
      expect(page).to have_content "カテゴリーを入力してください"
    end

    it "スレッドを作成したらスレッド一覧にひとつスレッドが増える" do

    end

  end
end