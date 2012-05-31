

# Continuous Integration

## Tooling

you would need a build machine to do automated tests when each commit is made. you have to choose the tooling to accomplish this

* a server to run the tests and publish the results
* a script to automate the tests
* a hook to use within your SCM tool or SCM hosting to trigger a build
* notification/escalation for build status


## Jenkins as Continuous Integration Server




## Waxsim


I have been testing waxsim, and this fork https://github.com/jonathanpenn/WaxSim works good with Xcode 4.3

	senthil$ waxsim
	No app-path was specified!
	usage: waxsim [options] app-path
	example: waxsim -s 2.2 /path/to/app.app
	Available options are:
		-s sdk	Version number of sdk to use (-s 3.1)
		-f family	Device to use (-f ipad)
		-e VAR=value	Environment variable to set (-e CFFIXED_HOME=/tmp/iphonehome)
		-a 	Available SDKs
		-v path	Output video recording at path
		-h 	Prints out this wonderful documentation!

	rake build:simulator
	cd build/iPhoneSimulator-5.1-Development/
	waxsim LOLCatApp.app
	

# Github hook

https://wiki.jenkins-ci.org/display/JENKINS/Github+Plugin


WIP





# steps

http://fourkitchens.com/blog/2011/09/20/trigger-jenkins-builds-pushing-github


https://github.com/moredip/Sim-Launcher

http://cdrussell.blogspot.in/2012/04/ios-integrating-kif-tests-with-jenkins.html


http://devblog.xing.com/qa/keep-it-functional-iphone-test-automation/


https://github.com/unboxed/icuke

http://code.google.com/p/nativedriver/





WIP