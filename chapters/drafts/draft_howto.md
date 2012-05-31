
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







# share stored content inside app to itunes
in rakefile
app.info_plist['UIFileSharingEnabled'] = true







[http://epic.net/labs/?p=230](http://epic.net/labs/?p=230)
RubyMotion: Debugging Objective-C


Following the release of RubyMotion we can finally talk a bit about it (if you haven’t yet, I definitively encourage you to check it out!)

For one of our upcoming project (super ultra top-secret, but you can see the icon here  ;) we need to mix a bit of custom Objective-C in the project. “Vendoring” the project in RM is a breeze but due to the complexity of this particular piece of code (a custom version of GPUImage), NSLog is not enough for debugging.

Fortunately, you can use Xcode to debug the Objective-C part super easily. Just start your app in the simulator with rake and open your vendor project in Xcode.

From there, make sure you selected iPhone/iPad simulator as a target and don’t click on “Run”



Open “Product > Attach to process” and select your app in the process list


Note that, as it runs in the simulator, your app won’t appear in the “Applications” group but in the “System” group.

Once done, just set your breakpoints, watches, … as you usually would. Everything should work as expected.

Have fun with RubyMotion, we sure do!





[http://blog.shinetech.com/2011/06/23/ci-with-jenkins-for-ios-apps-build-distribution-via-testflightapp-tutorial/](http://blog.shinetech.com/2011/06/23/ci-with-jenkins-for-ios-apps-build-distribution-via-testflightapp-tutorial/)

continuous integration with jenkins



waxsim

http://cocoamanifest.net/articles/2012/04/xcode-4-3-fix-for-simulating-from-the-command-line.html
