
# TestFlight

TestFlight is a platform that you can use to distribute development builds of your apps to you team members. You receive feedback, console logs and crash reports automatically.

You can create an account on [http://testflightapp.com](http://testflightapp.com)  . It’s free.


[http://www.rubymotion.com/developer-center/articles/testflight/](http://www.rubymotion.com/developer-center/articles/testflight/)

The updates are done by clicking a link on a email or from the browser within your iOS device. no need to be physically present, so your tester can live across the street or across the globe.

The device provisioning, linking projects per device happens over the air as well, no apple developer account it needed to test the apps.


## installation

motion-testflight allows RubyMotion projects to easily embed the TestFlight SDK and be submitted to the TestFlight platform.

[https://github.com/HipByte/motion-testflight](https://github.com/HipByte/motion-testflight)


     gem install motion-testflight





## Unpack the SDK

You will need to download the TestFlight SDK package from http://testflightapp.com/sdk/download and unpack it into the vendor/TestFlightSDK directory of your RubyMotion project.
Create the vendor directory if it does not exist.
You should then have something like this.
	$ ls vendor/TestFlightSDK
	README.txt                      libTestFlight.a
	TestFlight.h                    release_notes.txt




## Change your project configuration
You will need to change the Rakefile of your project in order to set up the gem.
First, you need to require the gem. Add the following line at the beginning of the file, right after the other require statements.
require 'motion-testflight'
Now that the gem is loaded, it’s time to configure it. Inside your application configuration block, add the following lines.

	Motion::Project::App.setup do |app|
  	# ...
  	app.testflight.sdk = 'vendor/TestFlight'
  	app.testflight.api_token = '<insert your API token here>'
  	app.testflight.team_token = '<insert your team token here>'
	end




You can retrieve the values for api_token and team_token from your TestFlight account page.
Optionally, you can use the distribution_lists key if you do want to set up a distribution list for your submissions.

	Motion::Project::App.setup do |app|
  	# ...
  	app.testflight.distribution_lists = ['CoolKids']
	end


## Usage
You will see that a new rake task is available, rake testflight, which will automatically submit a development build of your app to TestFlight.
The notes argument must be provided, its content will be the actual release notes for the submission.
$ rake testflight notes='zomg!'


WIP