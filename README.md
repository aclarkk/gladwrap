#Gladwrap
Gladwrap is a cli I made that wraps your UI mockups in a device frame.  Right now it only supports iphone 6 black & white, and assumes you're designing at 2x. I'll add more devices and options soon. I'm sure there are tools that do this and don't involve the command line.  You should use one of those.

### Quick start
- Install `gem install gladwrap`.
- Move to your mockups folder `cd /path/to/your/design/mockups/`
- Run gladwrap `gladwrap`
- Enjoy

You can speicify the device you want to use with
`gladwrap -d iphone6_white`. iPhone6_black is default.

Gladwrap will create a `gladwrap/` folder in your mockups folder and save a new copy of each mockup, wrapped in the specified device frame.

### Device list
- iphone6_black (default)
- iphone6_white

### Coming soon
iPhone6 gold, iPhone6 plus, Android devices, tablets?... you tell me.

### Welp, see ya later.
