
# my answer on Quora

http://www.quora.com/Ruby-programming-language/What-are-some-experiences-and-opinions-on-using-RubyMotion-for-iOS-development/answer/Senthil-Nayagam?__snids__=42185085#ans1229542


# Ruby (programming language): What are some experiences and opinions on using RubyMotion for iOS development?

I am feeling highly productive using RubyMotion, here are the reasons

* getting a hello world app in under 1 minute.
* config is in a rakefile where you can write ruby code, no XML, plist, or cumbersome conf file
* supports unix tool chain, no IDE needed, Xcode is a memory hog and not the most productive environment
* good early adopter community where problems are solved and interesting high level discussions happen
* support for iOS objective-c 3rd party , makes it easy to get current apps supported until ruby based motion libraries come
* performance is really good, I have burnt my hands with Titanium, so feel comfortable
* REPL and ruby's inspection capabilities makes interactive development possible no waiting for compile to happen. REPL is forgiving so you can make syntax mistakes and it won't crash, and has history so less typing
* There is already a RubyMotion open source game on the appstore, I am testing a app on test flight , on my build machine I have 69 apps running on simulator(open source/under development)
* already community powered projects are coming to fill in the opportunity, BubbleWrap, Nitron are popular.

As any new development platform, there are some wrinkles need to be ironed out.
* REPL currently does not allow multi line statements , I would love  a full IRB style compatibility
* no ruby gem or file require support available it needs to be specified in the build script
* syntax is not pure ruby yet so for some methods which have Objective-C style syntax
* no standard library, so we have to use Apple recommended libraries or write our own

 I am writing a book https://github.com/railsfactory/rubymotion-cookbook/ based on my experience in learning and mastering RubyMotion