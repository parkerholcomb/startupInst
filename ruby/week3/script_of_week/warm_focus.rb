require 'date'
require 'pry'
require 'open-uri'

def download_program(date)
  dir = "/Users/parkerholcomb/Music/iTunes/iTunes\ Media/Music/Hoverbird/Warm\ Focus/"
  file_name = "warm-focus_#{date}_12-00-00.mp3"
  target = "#{dir}/#{file_name}"
  uri = "https://bffdotfm.s3.amazonaws.com/audio/warm-focus/#{file_name}"
  puts "start #{date}"
  download = open(uri)
  IO.copy_stream(download, target)

  puts "end #{date}"
end

date = Date.parse('2015-07-22')
ending = Date.today

while date < ending
  begin
    download_program(date)
    date += 7
  rescue StandardError => e
    puts e
  end
end
