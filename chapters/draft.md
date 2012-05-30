
# Draft chapters

# how to create a basic splash screen


Create a image in resources directory "Defaults.png" this is case sensitive.

Add sleep(duration) as the first line inside your app delegate 

   class AppDelegate
     def application(application, didFinishLaunchingWithOptions:launchOptions)
       sleep(3) 
       hello = UIAlertView.new
       hello.message = "Hello World"
       # hello.dismiss
       hello.subtitle =  "Subtitle"
       hello.title =  "Title"
       hello.show
       true
     end
  end

Now when the app is run first the splash image will be shown for duration in seconds and then the actual app will start running

