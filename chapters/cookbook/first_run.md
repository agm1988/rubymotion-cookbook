# First Run

Many times we need to check if the app is run for the first time.

typical usecases
* tracking app first run, this may be lower than the download numbers provided by app store statistics
* initialize the database and load seed data from local or sync
* ask user to sign up or login
* show a additional splash screen or show a tutorial









I like to use NSUserDefaults to store an indication of the the first run.

NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];  
if (![defaults objectForKey:@"firstRun"])
  [defaults setObject:[NSDate date] forKey:@"firstRun"];

[[NSUserDefaults standardUserDefaults] synchronize];
You can then test for it later...

NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];        
if([defaults objectForKey:@"firstRun"])           
{
  // do something or not...
}






In your app delegate register a default value:

NSDictionary *defaultsDict = 
[[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithBool:YES], @"FirstLaunch", nil];
[[NSUserDefaults standardUserDefaults] registerDefaults:defaultsDict];
[defaultsDict release];
Then where you want to check it:

NSUserDefaults *sharedDefaults = [NSUserDefaults standardUserDefaults];
if ([sharedDefaults boolForKey:@"FirstLaunch"]) {
  //Do the stuff you want to do on first launch
  [sharedDefaults setBool:NO forKey:@"FirstLaunch"];
  [sharedDefaults synchronize];
}



source: http://stackoverflow.com/questions/1664177/best-way-to-check-if-an-iphone-app-is-running-for-the-first-time
