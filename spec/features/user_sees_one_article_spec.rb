require "rails_helper"

describe "user sees one article" do
  describe "they link from the articles index" do
    it "text" do
      article = Article.create!(title: "new title", body: "new body")

      visit articles_path

      click_link article.title

      expect(page).to have_content(article.title)
      expect(page).to have_content(article.body)
    end
  end
end
