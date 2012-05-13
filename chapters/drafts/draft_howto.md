
# Freestyle writing is easier

##this is my clipboard, everything written is liable to change, can be totally wrong, read it if you want to understand my state of mind

## once the content is in a readable state will push it to chapters and make it part of future builds


check your projects default configuration

   $ rake -T
   rake archive              # Create archives for everything
   rake archive:development  # Create an .ipa archive for development
   rake archive:release      # Create an .ipa for release (AppStore)
   rake build                # Build everything
   rake build:device         # Build the device version
   rake build:simulator      # Build the simulator version
   rake clean                # Clear build objects
   rake config               # Show project config
   rake ctags                # Generate ctags
   rake default              # Build the project, then run the simulator
   rake device               # Deploy on the device
   rake simulator            # Run the simulator
   rake spec                 # Run specs


   $ rake config
    ERROR! Can't find an iPhone Developer certificate in the keychain
   build_dir              : "./build"
   codesign_certificate   : "Error"
   delegate_class         : "AppDelegate"
   deployment_target      : "5.1"
   device_family          : :iphone
   entitlements           : {}
   files                  : ["./app/app_delegate.rb"]
   fonts                  : []
   frameworks             : ["UIKit", "Foundation", "CoreGraphics"]
   icons                  : []
   identifier             : "com.yourcompany.hello"
   interface_orientations : [:portrait, :landscape_left, :landscape_right]
   libs                   : []
   name                   : "hello"
   prerendered_icon       : false
   provisioning_profile   : ""
   resources_dir          : "./resources"
   sdk_version            : "5.1"
   seed_id                : "PH4EH3BX7L"
   specs_dir              : "./spec"
   version                : "1.0"
   xcode_dir              : "/Applications/Xcode.app/Contents/Developer"

you can change these settings by overriding the defaults in your rakefile


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

## how to get a app run as a iPad app
app.device_family  = :ipad # for iPad 

## how to compile the app to support both iPhone and iPad, Universal Applications
app.device_family = [:iphone, :ipad]

## how to run the Universal application is a specific mode

$ rake simulator device_family=ipad
$ rake simulator device_family=iphone

test retina apps

## how to delete apps in simulator

simulator behaves like the regular iPhone, so you can basically, click and hold for couple of seconds and all the apps will start shaking/wiggline and you can delete the apps you want to delete. but if have use the clone_all and run_all scripts you know there would be over 50 apps installed on your simulator

Application menu, select the "Reset Contents and Settings...". 



rake simulator clean=1 #fails for me

cat delete_all_from_simulator.sh
cd ~/Library/Application\ Support/iPhone\ Simulator/5.1/Applications
###ls to list all the apps, delete the apps which you want all zap all the files/folders inside it
 rm -rf 

http://stackoverflow.com/questions/692064/cleaning-up-the-iphone-simulator

source

http://www.rubymotion.com/developer-center/guides/project-management/


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


## simulator crash logs


http://stackoverflow.com/questions/1864479/crash-logs-generated-by-iphone-simulator


crash reports are found in ~/Library/Logs/DiagnosticReports
