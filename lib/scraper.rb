require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    page = Nokogiri::HTML(open(index_url))
    students = []
    
    page.css("div.student-card"). each do |student|
      name = student.css(".student-name").text 
      location = student.css(".student-location").text 
      profile_url = student.css("a").attr("href").value 
      student_info = {:name => name, :location => location, :profile_url => profile_url}
      students << student_info
    end 
  
  students
  end

  def self.scrape_profile_page(profile_url)
    students = {} 
    profile_page = Nokogiri::HTML(open(profile_url))
    links = profile_page.css
  end

end

