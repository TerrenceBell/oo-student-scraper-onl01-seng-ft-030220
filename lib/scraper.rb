require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    page = Nokogiri::HTML(open(index_url))
    students = []
    page.css("student-card"). each do |student|
      name = student.css("student-name").text 
      location = student.css("student-location").text 
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

