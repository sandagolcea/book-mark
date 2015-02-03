##Bookmark Manager

## Synopsis
We have been tasked to build a bookmark manager, similar to pineapple.io or delicious.com in spirit.  

A bookmark manager is a website where you can maintain a collection of links, organised by tags.  You can use it to save a webpage you found useful.  
You can add tags to the webpages you saved to find them later.  
You can browse links other users have added.  

##How to run
`git clone git@github.com:sandagolcea/book-mark.git`  
`cd book-mark`  
`open postgres`  
`rake auto_migrate`  
`rackup`  
`go to localhost:9292`  

### Technologies
- Ruby
- Sinatra
- DataMapper
- PostgreSQL
- BCrypt
- RSpec
- Capybara

## Job List
- [x] Each user has an account (they can sign in and out)
- [x] Show a list of links from the database
- [x] Add new links
- [x] Add tags to the links
- [x] Filter links by a tag

## Collaborators
- [Sanda Golcea](http://www.github.com/sandagolcea)
- [Steph Oldcorn](https://github.com/stepholdcorn)

## Takeaway
This project allowed us to explore how relational databases work.
