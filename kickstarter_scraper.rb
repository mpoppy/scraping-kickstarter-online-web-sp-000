# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end

create_project_hash
#projects: kickstarter.css("li.project_grid_4") selector for projects
# title: project.css("h2.bbcard_name strong a").text
#image link: project.css("div.project-thumbnail a img").attribute("src").value
