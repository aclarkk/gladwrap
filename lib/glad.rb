require "rubygems"
require "bundler/setup"
require "rmagick"

class Glad

  bg = Magick::Image.read("https://s3.amazonaws.com/gladwrapp-assets/iphone6_black.png").first
  
  files = Dir.glob"*.png"

  puts "We bout to wrap bout: #{files.count} files."

  files.each_with_index do |f, index| 
    overlay = Magick::Image.read("#{f}").first
    bg.composite!(overlay, 51, 217, Magick::OverCompositeOp)
    bg.write("#{index}.png")
    puts "writing #{index}.png"
  end

end
