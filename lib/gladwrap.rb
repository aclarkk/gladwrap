require "rubygems"
require "bundler/setup"
require "rmagick"
require "slop"

class Gladwrap

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
    puts "We bout to wrap bout #{files.count} files."

    files.each_with_index do |f, index| 
      overlay = Magick::Image.read("#{f}").first
      bg.composite!(overlay, 51, 217, Magick::OverCompositeOp)
      bg.write("#{index}.png")
      puts "writing #{index}.png"
    end

  rescue Slop::Error => e
    puts e.message
    puts opts
  end

end
