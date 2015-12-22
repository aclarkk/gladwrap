require "rubygems"
require "bundler/setup"
require "fileutils"
require "RMagick"
require "slop"

class Gladwrap


  opts = Slop.parse do |o|
    o.string  "--device", "-d", "Which device to use (iphone6_black, iphone6_white, more coming soon)", default: "iphone6_black"
    o.on "--help", "-h" do
      puts o
      exit
    end
  end

  begin

    # puts opts.to_hash #show the opts

    device = opts[:device]
    output_directory = "gladwrap/#{device}/"

    bgURL = "https://s3.amazonaws.com/gladwrapp-assets/#{device}.png"
    bg = Magick::Image.read(bgURL).first
    files = Dir.glob"*.png"

    if files.count < 1
      puts "No .png files could be found =("
    elsif
      puts "Ok, let's do this."
    end

    unless File.exist?(output_directory)
      puts "creating #{output_directory}"
      FileUtils::mkdir_p(output_directory)
    end

    files.each_with_index do |f, index|
      overlay = Magick::Image.read("#{f}").first
      bg.composite!(overlay, 52, 217, Magick::OverCompositeOp)
      bg.write("./#{output_directory}/#{f}")
      puts "writing #{f} to #{output_directory}"
    end

    puts "All finished."

  rescue Slop::Error => e
    puts e.message
    puts opts
  end

end
