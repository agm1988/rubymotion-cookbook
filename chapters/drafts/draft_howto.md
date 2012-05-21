
# Freestyle writing is easier

##this is my clipboard, everything written is liable to change, can be totally wrong, read it if you want to understand my state of mind

## once the content is in a readable state will push it to chapters and make it part of future builds




$ cat Rakefile
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'hello'
#  app.provisioning_profile = ''
end

adding these lines will make the the expected changes



app.device_family = :iphone # for iPhone


test retina apps



## how to add icons to your app

different icon sizes for different designs



## taking screenshots

## how to detect internet connection availability





## how will RubyMotion evolve as new iOS 6 will be announced in WWDC in June

RubyMotion is installed in this folder /Library/RubyMotion
I read the code

bin/ very few files are compiled, 

all files inside the data folder are xml and the detail and volume shows it has been build with tools for parsing iOS API and building the XML file

so within a short term of iOS 6 release is available it would be ported, tested and released


Most the of the following topic are curiosity in me to build iOS apps not specific for RubyMotion


## non english apps


## change location in iOS simulator programatically


## any good reference apps for testing

## testing with lower speed for simulating network speeds
http://pmilosev-notes.blogspot.in/2011/02/ios-simulator-testing-over-different.html







opening in other registered applications

UIApplication.sharedApplication.openURL(NSURL.URLWithString("http://www.covano.com/"))
UIApplication.sharedApplication.openURL(NSURL.URLWithString("http://maps.google.com/maps?q=1 Infinite Loop, Cupertino, CA 95014"))
UIApplication.sharedApplication.openURL(NSURL.URLWithString("tel://919600072457"))
UIApplication.sharedApplication.openURL(NSURL.URLWithString("mailto:email@email.com?subject=Hello"))



