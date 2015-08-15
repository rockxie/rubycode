#!/usr/bin/ruby
require 'rubygems'
require 'mechanize' 
agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'

page = agent.get('http://www.jyeoo.com/search?c=0&q=%E5%88%86%E6%95%B0')
#page = agent.page.link_with(:text => '按章节').click 
#page = agent.page.link_with(:text => '人教新版').click 
#page = agent.page.link_with(:text => '三年级上').click 
#page = agent.page.link_with(:text => '第1章 时、分、秒').click 

table = page.search('//li[@class="QUES_LI"]')
puts table
#text = table.html
#puts text


#page.links.each do |link| puts link.text end

#page = agent.page.link_with(:text => '剧情灵感生成器').click 

#page.links.each do |link| puts link.text end



# a=1


# while a < 113 do
# 	table = page.search('//p[@style="margin-bottom:0px;"]')
# 	#table = page.search('//div[@class="sons"]')
# 	text = table.inner_text
# 	#puts text
# 	#page = agent.page.link_with(:text => '下一页').click
# 	aFile = File.new("text/景色2诗句.txt", "a+")

# 	if aFile
# 	   aFile.syswrite(text)
# 	   puts "#{a} page save ok!"
# 	else
# 	   puts "Unable to open file!"
# 	end

# 	aFile.close
	
# 	page = agent.page.link_with(:text => '下一页').click

# 	a=a+1
# end


