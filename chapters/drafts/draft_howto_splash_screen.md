
# how to create a basic splash screen


create a image in resources directory "Defaults.png" this is case sensitive.

add sleep(duration) as the first line inside your app delegate 

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

now when the app is run first the splash image will be shown for duration is seconds and then the actual app will start running