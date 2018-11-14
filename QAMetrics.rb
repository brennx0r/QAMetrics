#Example sh QAMetrics.sh <club_api_token> 2018-09-17..2018-09-24
COMMAND_PREFIX = 'bundle exec'


# Array loop to process all the project names in the shell script. e.g listings, menuwidget etc

 project = %w{"Listings\ Page", "Menu\ Widget", "Career\ Page", "Google\ Assistant", "Inbound\ Page", "Local\ Guides", "Product", "Restaurant\ Partner\ Websites", "SEO", "Slice.com", "Slicelife\ -\ Homepage", "Storefront", "Top\ of\ Funnel\ -\ Miscellaneous", "Weebly", "Conversion\ Web", "Conversion\ iOS", "Conversion\ Android", "Conversion\ Backend", "Post\ Order\ Feedback", "FO", "Google\ Assistant", "Matrix\ Menu", "RTB", "Clover\ Integration", "Menu\ data", "Owner's\ App\ -\ iOS", "Owner's\ App\ -\ Android", "Restaurant\ Projects", "SliceLink", "SliceOS"} 

# Inbound Page','Local Guides','Product','Restaurant Partner Websites','SEO','Slice.com','Slicelife - Homepage','Storefront','Top of Funnel - Miscellaneous','Weebly','Conversion Web','Conversion iOS','Conversion Android','Conversion Backend','Post Order Feedback','FO','Google Assistant','Matrix Menu','RTB','Clover Integration','Menu data',"Owner's App - iOS","Owner's App - Android", 'Restaurant Projects','SliceLink','SliceOS'}

	

#created bugs
project.each do |item|
	createdcount = `CLUBHOUSE_API_TOKEN=#{ARGV[0]} #{COMMAND_PREFIX} thor app:count -t 'bug' -p #{item} -l 'qa-found' --created #{ARGV[1]}`
	completedcount = `CLUBHOUSE_API_TOKEN=#{ARGV[0]} #{COMMAND_PREFIX} thor app:count -t 'bug' -p #{item} -l 'qa-found' --completed #{ARGV[1]}`

	# def openbugs (createdcount, completedcount)
		
		
# end

	puts "#{item} bugs created: " + createdcount
	puts "#{item} bugs completed: " + completedcount
	
# def openbugs(createdcount, completedcount)
		# openbugs = [createdcount - completedcount]
	
	# puts "#{item} open bugs: " + openbugs
end

project.each do |item|
    createdcount = `CLUBHOUSE_API_TOKEN=#{ARGV[0]} #{COMMAND_PREFIX} thor app:count -t 'bug' -p #{item} -l 'qa-found' --created #{ARGV[1]}`
	completedcount = `CLUBHOUSE_API_TOKEN=#{ARGV[0]} #{COMMAND_PREFIX} thor app:count -t 'bug' -p #{item} -l 'qa-found' --completed #{ARGV[1]}`

  def openbugs(createdcount, completedcount)
		 openbugs = [createdcount - completedcount]
	

	 puts "#{item} open bugs: " + openbugs


end
end
