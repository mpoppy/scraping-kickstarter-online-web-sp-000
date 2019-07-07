# require libraries/modules here
require 'nokogiri'
require 'pry'

#projects: kickstarter.css("li.project_grid_4") selector for projects
#title: project.css("h2.bbcard_name strong a").text
#image link: project.css("div.project-thumbnail a img").attribute("src").value
#description: project.css("p.bbcard_blurb").text
#location: project.css("span.location-name").text
#percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  #iterate through projects path above
  kickstarter.css("li.project_grid_4").each do |project|
    projects[project] = {}
  end
  #return the projects hash
  projects
end

create_project_hash
