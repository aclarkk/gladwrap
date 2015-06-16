require "rubygems"
require "bundler/setup"
require "rmagick"
require "slop"

class Gladwrap

  output_directory = './wraps/'

  opts = Slop.parse do |o|
    o.string  '--device', '-d', 'Which device to use (iphone6_black, iphone6_white, more coming soon)', default: 'iphone6_black'
    o.on '--help', '-h' do
      puts o
      exit
    end
  end

  begin

    # puts opts.to_hash #show the opts

    device = opts[:d]
    bgURL = "https://s3.amazonaws.com/gladwrapp-assets/#{device}.png"
    bg = Magick::Image.read(bgURL).first
    files = Dir.glob"*.png"

    if files.count < 1
      puts "I don't see any files. What the heck." 
    elsif
      puts "We bout to wrap bout #{files.count} files."
    end

    unless File.exist?(output_directory)
      puts "creating #{output_directory}"
      Dir.mkdir(output_directory)
    end

    files.each_with_index do |f, index| 
      overlay = Magick::Image.read("#{f}").first
      bg.composite!(overlay, 51, 217, Magick::OverCompositeOp)
      bg.write("./#{output_directory}/#{index}.png")
      puts "writing #{index}.png to #{output_directory}"
    end

    puts "We all done here."

  rescue Slop::Error => e
    puts e.message
    puts opts
  end

end
