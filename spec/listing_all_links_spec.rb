require 'spec_helper'

feature "Uses browses the list of links" do
  before(:each) {Link.create(title: "Makers Academy", url: "http://www.makersacademy.com")}

  scenario "when opening the home page" do
    visit '/'
    expect(page).to have_content("Makers Academy")
  end

  before(:each) {

	Link.create(url: "http://www.makersacademy.com",
		title: "Makers Academy",
		tags: [Tag.first_or_create(text: 'education')])  
		
	Link.create(url: "http://www.google.com",
		title: "Google",
		tags: [Tag.first_or_create(text: 'search')])

	Link.create(url: "http://www.bing.com",
		title: "Bing",
		tags: [Tag.first_or_create(text: 'search')])

	Link.create(url: "http://www.code.org",
		title: "Code.org",
		tags: [Tag.first_or_create(text: 'education')])	
  }

  scenario "filtered by a tag" do
  	visit '/tags/search'
  	expect(page).not_to have_content("Makers Academy")
  	expect(page).not_to have_content("Code.org")
  	expect(page).to have_content("Google")
  	expect(page).to have_content("Bing")
  end
  
end