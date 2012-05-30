
# Read Code

Reading code is the best way to learn programming. I have been daily searching [Hacker News](http://news.ycombinator.com/) , [github](https://github.com/) and [RubyMotion group](https://groups.google.com/forum/?hl=en&fromgroups#!forum/rubymotion)  to learn for how RubyMotion works, discover projects, problems faced by other people.

I have tried to automate the process of downloading all the new projects for you to discover on your mac. If you follow the following steps you can checkout over 40 repositories as of now, more would be added in coming days

## Clone the RubyMotion Cookbook repository

     $ git clone https://github.com/railsfactory/rubymotion-cookbook.git
     Cloning into rubymotion-cookbook...
	remote: Counting objects: 143, done.
	remote: Compressing objects: 100% (88/88), done.
	remote: Total 143 (delta 53), reused 115 (delta 28)
	Receiving objects: 100% (143/143), 1.11 MiB | 178 KiB/s, done.
	Resolving deltas: 100% (53/53), done.
	
	$ cd projects
	$ sh clone_all.sh
	....
	
It will take some time as about 100mb is downloaded directly from the repositories.




## Reading the code and Running the apps

You can read all the project code in your favorite text editor or IDE, I prefer Textmate. Running individual app is simple change into the directory and run rake and it compiles and runs.





# List of all the projects included

[https://github.com/railsfactory/rubymotion-cookbook/blob/master/projects/projects.list](https://github.com/railsfactory/rubymotion-cookbook/blob/master/projects/projects.list)

# Downloading and running all the projects
Go grab for a coffee, it will take about 30 minutes for this task, this will download 71 projects

      cd rubymotion-cookbook/projects
      sh clone_all.sh
      ...
      sh run_all.sh


each projects will run in sequence in simulator.  Stopping app technique one and two might be occasionally required.

# Cleaning all the build artifacts
when you have updating the RubyMotion , it would be better to clean the artifacts and test them again, there has been multiple updates in last 2 weeks, (1.0 - 1.4)


      sh clean_all.sh

# Update all the projects
I check new code commits every few hours, you can do it once in a while.

      sh update.sh

occasionally if project is close sourced or renamed or deleted update will break the update, you can manually fix it or check the next step

      git pull


update to get the latest projects, modifications etc


# Find the project
projects and URL are case sensitive so it makes sense to find the project you are looking for

      sh find.sh keyword
      sh find.sh bubble
      https://github.com/mattetti/BubbleWrap.git


# Search within project code
if you have good text editor like textmate _SHIFT+COMMAND+F_ find in project will do the trick. You can use this shell command to find what you are looking for

      sh search.sh  JSON
      .......lots of lines


## Submit your app for this list

If you want your app be added, removed, please post a ticket

[https://github.com/railsfactory/rubymotion-cookbook/issues](https://github.com/railsfactory/rubymotion-cookbook/issues)


## Reading Apple iOS API Documentation

Dash is a nice app to read iOS Documentation
[Mac App Store link](http://itunes.apple.com/us/app/dash-docs-snippets/id458034879?mt=12)

After downloading go to preferences and enable docsets and choose the libraries you would like to read and download, but for iOS you would need to download it inside xcode itself. iOS 5 documentation is about 500mb but still it is worth if you want to build or debug any non trivial apps

* I found this gem from Steven Ringo on RubyMotion Group


## Where to find interesting code

when you are exploring a new project, the sequence which I go through

* if there is a app folder and rake file, try running the app, thats the easiest approach, once you see a running app you get a idea of what is in store.
* read the Rakefile, it has configuration information, what libraries the app uses, what cocoapods that is included in the project
* if there is guardfile or a autotest file, expect good tests written
* if it has .gitmodule , always do git submodule init and git submodule update to fetch the dependencies.
* if the resources file has many images it would have a pretty UI and possibly a app icon

 



# Commands and Configuration
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

You can change these settings by overriding the defaults in your rakefile


# Answers to Common Questions

## how to get a app run as a iPad app?
app.device_family  = :ipad # for iPad 

## how to compile the app to support both iPhone and iPad, Universal Applications?
app.device_family = [:iphone, :ipad]

## how to run the Universal application is a specific mode?

$ rake simulator device_family=ipad
$ rake simulator device_family=iphone




# Simulator

## Troubleshooting Crashes
Most apps in the projects.list are work in progress, most apps would run out of the box, but some of them crash before running in simulator, others on edge cases, though RubyMotion provides a good stack trace but there are times when the error is tough to debug. Reading the crash logs is a good way to debug those

##  Where to find the crash logs

http://stackoverflow.com/questions/1864479/crash-logs-generated-by-iphone-simulator


Crash reports are found in ~/Library/Logs/DiagnosticReports

So if your app has crashed and does not give you much information, crash logs can be a good place to investigate. while submitting support ticket via please include all possible information


## how to delete apps in simulator

Simulator behaves like the regular iPhone, so you can basically, click and hold for couple of seconds and all the apps will start shaking/wiggline and you can delete the apps you want to delete. but if have use the clone_all and run_all scripts you know there would be over 50 apps installed on your simulator

Application menu, select the "Reset Contents and Settings...". 



rake simulator clean=1 #fails for me

cat delete_all_from_simulator.sh
cd ~/Library/Application\ Support/iPhone\ Simulator/5.1/Applications
###ls to list all the apps, delete the apps which you want all zap all the files/folders inside it
 rm -rf 

http://stackoverflow.com/questions/692064/cleaning-up-the-iphone-simulator

source

http://www.rubymotion.com/developer-center/guides/project-management/



WIP