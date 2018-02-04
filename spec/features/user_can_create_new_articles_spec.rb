require "rails_helper"

describe "user creates a new article" do
  describe "they link from the articles index" do
    describe "they fill in title and body" do
      it "creates a new article" do
        visit articles_path
        click_link "Create a New Article"

        expect(current_path).to eq(new_article_path)

        fill_in "article[title]", with: "new title!"
        fill_in "article[body]", with: "new body!"
        click_on "Create Article"

        expect(page).to have_content("new title!")
        expect(page).to have_content("new body!")
      end
    end
  end
end
