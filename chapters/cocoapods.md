#WIP
# Cocoapods: using Objective C third party libraries/frameworks

https://github.com/CocoaPods/CocoaPods

CocoaPods manages library dependencies for your Xcode project

 http://cocoapods.org/ 

# installation

   sudo gem install cocoapods
   pod setup
   

# finding pods

  $ pod search asi
    ==> ASIHTTPRequest (1.8.1)
        Easy to use CFNetwork wrapper for HTTP requests, Objective-C, Mac OS X and iPhone

    ==> ASIWebPageRequest (1.8.1)
        The ASIWebPageRequest class included with ASIHTTPRequest lets you download
        complete webpages, including external resources like images and stylesheets.



the xcode way of managing dependencies is like Gemfiles, create a pod file and install them via "pod install" command

But in RubyMotion, we have a even better way


http://www.rubymotion.com/developer-center/articles/cocoapods/

    sudo gem install motion-cocoapods


in your rake file add the gem

    require 'motion-cocoapods'

    Motion::Project::App.setup do |app|
       # ...
     app.pods do
        dependency 'JSONKit'
     end
    end


The next time you build your project, the JSONKit sources will be downloaded then built and linked against your application executable. If you require a Pod that has dependencies, they will also be properly honored.




# list of pods available

https://github.com/CocoaPods/Specs


the projects folder if you clone all the projects you can find example of following pods
    dependency 'AFNetworking'
    dependency 'SSPullToRefresh'
    dependency 'ASIHTTPRequest'
    dependency 'Facebook-iOS-SDK'
    dependency 'KSCrypto'
    dependency 'NSData+Base64'
    dependency 'RestKit'
    dependency 'NanoStore', '~> 2.1.4'
    dependency 'Facebook-iOS-SDK'
    dependency 'QuickDialog'
    dependency 'FMDB'
    dependency 'NanoStore'
    dependency 'Sparrow-Framework'
    dependency 'GDataXML-HTML'

