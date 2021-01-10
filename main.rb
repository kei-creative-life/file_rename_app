require 'fileutils'

files = Dir.entries('../Desktop/illustlation')
files.each_with_index do |file, i|
  file_info = File.extname(file)
  if file_info == '.jpg' || file_info == '.png'
    case file_info
		when '.png'
      FileUtils.mv("../Desktop/illustlation/#{file}", "../Desktop/illustlation/#{i-2}.png")
    when '.jpg'
      FileUtils.mv("../Desktop/illustlation/#{file}", "../Desktop/illustlation/#{i-2}.jpg")
		end
	else
		file
  end
end
