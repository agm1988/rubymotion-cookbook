class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    hello = UIAlertView.new
    hello.message = "Hello World"
    # hello.dismiss
    hello.subtitle =  "Subtitle"
    hello.title =  "Title"
    hello.show
    true
  end
end
