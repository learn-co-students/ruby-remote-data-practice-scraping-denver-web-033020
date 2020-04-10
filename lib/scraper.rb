require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://flatironschool.com/"))
doc.css(".site-header__hero__headline")

# ------------------------
# Retriveing a specific element by class 
# ------------------------
puts doc.css(".site-header__hero__headline")

# ------------------------
# Accessing element text 
# ------------------------
puts doc.css(".site-header__hero__headline").text


# ------------------------
# iterating over elements:
# ------------------------ 
courses = doc.css(".tout__label.heading.heading--level-4") 
courses.each do |course|
  puts course.text.strip
end 

# ------------------------
# Operating on XML 
# ------------------------
p doc.css(".tout__label.heading.heading--level-4")[0]
#=> #<Nokogiri::XML::Element:0x3fd385890ca4 name="h2" attributes=[#<Nokogiri::XML::Attr:0x3fd385890c04 name="class" value="tout__label heading heading--level-4">] children=[#<Nokogiri::XML::Text:0x3fd3858906c8 "\n          $1M in Scholarships for Women\n        ">]>

# ------------------------
# Accessing tag name 
# ------------------------
p doc.css(".tout__label.heading.heading--level-4")[0].name
# => "h2"

# ------------------------
# Accessing attributes 
# ------------------------
p doc.css(".tout__label.heading.heading--level-4")[0].attributes
# => {"class"=>#<Nokogiri::XML::Attr:0x3ff04f8b3754 name="class" value="tout__label heading heading--level-4">}
