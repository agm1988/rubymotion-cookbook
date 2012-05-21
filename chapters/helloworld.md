
# Build your first app

after seeing the screencasts you would be charged up, now let us begin

## Motion command

let us run motion and know what this command can do


    $ motion
	Usage:
	  motion [-h, --help]
	  motion [-v, --version]
	  motion <command> [<args...>]

	Commands:
	  create       Create a new project
	  activate     Activate the software license
	  update       Update the software
	  support      Create a support ticket



## Update motion command
RubyMotion is a moving target and it is getting frequent release, I have personally updated from 1.0 to 1.1 , 1.2,  1.3 in less than a week. one thing for sure, Laurent Sansonetti, the RubyMotion author listens to customer feedback and bug reports and fixes at a astonishing pace. I have tested over 40 apps and crashes have reduced by over 90% between these updates.

    $ sudo motion update

    $ motion -v
    1.3


## Hello World

It is obligatory to build a Hello World app in every technology/language

    $ motion create hello
    Create hello
    Create hello/.gitignore
    Create hello/Rakefile
    Create hello/app
    Create hello/app/app_delegate.rb
    Create hello/resources
    Create hello/spec
    Create hello/spec/main_spec.rb

Our project is created and at this stage we can run it on our iOS simulator

    $ cd hello
    $ rake
	     Build ./build/iPhoneSimulator-5.0-Development
	   Compile ./app/app_delegate.rb
	    Create ./build/iPhoneSimulator-5.0-Development/hello.app
	      Link ./build/iPhoneSimulator-5.0-Development/hello.app/hello
	    Create ./build/iPhoneSimulator-5.0-Development/hello.app/Info.plist
	    Create ./build/iPhoneSimulator-5.0-Development/hello.app/PkgInfo
	    Create ./build/iPhoneSimulator-5.0-Development/hello.dSYM
	  Simulate ./build/iPhoneSimulator-5.0-Development/hello.app
	2012-05-10 23:54:08.743 hello[29464:f803] Applications are expected to have a root view controller at the end of application launch
	(main)>> 


Just ran one command and voila the iOS Simulator is running in iPhone mode and a blank screen is running. Actually your application was compiled, copied to the simulator and executed on the simulator.

## Exiting the app

There are three ways

* Command + Q when the iOS simulator app is selected and simulator quits, easiest but not intuitive, the app running terminal would break abruptly. Not a nice way for a programmer.
    
     ((null))>> 
    $

* Ctrl+c interrupts the program immediately.Not a nice way for a programmer.

    (main)>> rake aborted!
	Command failed with status (1): [ /Library/RubyMotion/bin/sim 2 1 5.0 "/Dev...]

	Tasks: TOP => default => simulator
	(See full trace by running task with --trace)
	$

* from the terminal type 'exit'

    (main)>> exit
    $

Third way is the recommended version but when app hangs or crashes or erratic behavior you know now how to get out of it.


## How it works

now you know the code works, what code boilerplate has been added

WIP

# Let there be Hello World

Let us add some text and display it, one of the simplest to display message is Label or a alert Message, I dont want to create additional files or config, let us do it in a ruby way, from the RubyMotion console(REPL)

     $ rake
     Build ./build/iPhoneSimulator-5.0-Development
     Simulate ./build/iPhoneSimulator-5.0-Development/hello.app
     2012-05-12 08:43:50.545 hello[46454:f803] Applications are expected to     have a root view controller at the end of application launch
     (main)>> hello = UIAlertView.new
     => #<UIAlertView:0x8dac150>
     (main)>> hello.message = "Hello World"
     => "Hello World"
     (main)>> hello.show
     => #<UIAlertView:0x8dac150>

Did you see the message is now displayed on your simulator.

Can we change the message to something else, easy

     (main)>> hello.message = "Thanks Laurent and Matz"
     => "Thanks Laurent and Matz"

 

## What else can I do

     => hello.methods
     => [:"addTextFieldWithValue:label:", :titleLabel,     
     :canBecomeFirstResponder, :numberOfRows, :table, :keyboard,
     :textField, :"setSubtitle:", :subtitle, :tableView, :dismiss,
     :"initWithTitle:buttons:defaultButtonIndex:delegate:context:",     
     :"setNumberOfRows:", :"popupAlertAnimated:", :"setDimView:",
     :"setTitleMaxLineCount:", :"setRunsModal:", :"setBodyText:",
     :"setAlertSheetStyle:", :"buttonAtIndex:", :requiresPortraitOrientation,
     :textFieldCount, :buttons, :"layoutAnimated:", :"dismissAnimated:",
     :"popupAlertAnimated:atOffset:", :"presentSheetFromAboveView:",
     :"presentSheetFromBehindView:", :groupsTextFields,  :"setGroupsTextFields:",
     :"setTaglineText:", :bodyText, :titleMaxLineCount,
     :"setBodyTextMaxLineCount:", :bodyMaxLineCount, :"setDefaultButton:",
     :defaultButton, :"setDestructiveButton:", :destructiveButton,
     :"addButtonWithTitle:label:", :"addButtonWithTitle:buttonClass:",
     :buttonCount, :"setTableShouldShowMinimumContent:",
     :tableShouldShowMinimumContent, :"setShowsOverSpringBoardAlerts:",
     :showsOverSpringBoardAlerts, :isBodyTextTruncated, :"presentSheetInView:",
     :"presentSheetToAboveView:", :backgroundSize, :alertSheetStyle,
     :"setDimsBackground:", :dimsBackground, :"setSuspendTag:", :suspendTag,
     :"setBlocksInteraction:", :blocksInteraction, :runsModal, :titleRect,
     :numberOfLinesInTitle, :"presentSheetFromButtonBar:", :"replaceAlert:",
     :"popupAlertAnimated:animationType:atOffset:",
     :"popupAlertAnimated:animationType:", :"setKeyboardShowsOnPopup:",      :bodyTextLabel, :taglineTextLabel, :"setForceHorizontalButtonsLayout:",
     :forceHorizontalButtonsLayout, :resignFirstResponder, :becomeFirstResponder,
     :layout, :context, :"setContext:",
     :"initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:",
     :"showWithAnimationType:", :show, :cancelButtonIndex,
     :"dismissWithClickedButtonIndex:animated:", :isVisible,
     :"addButtonWithTitle:", :"setCancelButtonIndex:", :numberOfButtons,
     :"buttonTitleAtIndex:", :"textFieldAtIndex:", :"setMessage:",
     :"setDefaultButtonIndex:",
         :"initWithTitle:message:delegate:defaultButton:cancelButton:otherButtons:",
     :defaultButtonIndex, :firstOtherButtonIndex, :"setAlertViewStyle:",
     :alertViewStyle, :dealloc, :"initWithFrame:", :"setTitle:", :title,
     :"setDelegate:", :delegate, :message, :"resizeForKeyplaneSize:",
     :"drawRect:forViewPrintFormatter:", :viewPrintFormatter, :textInputView,
     :isAccessibilityElementByDefault,
     :isElementAccessibilityExposedToInterfaceBuilder,
     :textEffectsVisibilityLevel, :textEffectsVisibilityLevelWhenKey,
     :"compareTextEffectsOrdering:", :needsWebDocumentViewEventsDirectly,
     :"reduceWidth:", :"gestureEnded:", :"setGestureDelegate:",
     :"setEnabledGestures:", :"setValue:forGestureAttribute:", :"gestureStarted:",
     :"gestureChanged:", :"stateForGestureType:", :"animator:stopAnimation:",
     :"animator:startAnimation:", :"zoomToScale:", :"rotateToDegrees:",
     :canHandleGestures, :gestureDelegate, :enabledGestures,
     :"valueForGestureAttribute:", :"setRotationDegrees:duration:",
     :rotationDegrees, :"endEditing:", :useBlockyMagnificationInClassic,
     :scriptingInfoWithChildren, :recursiveDescription, :description,
     :"layoutSublayersOfLayer:", :"actionForLayer:forKey:",
     :"drawLayer:inContext:", :"setValue:forKey:", :gestureRecognizers,
     :removeAllGestureRecognizers, :"removeGestureRecognizer:",
     :"setGestureRecognizers:", :gesturesEnabled, :"setGesturesEnabled:",
     :deliversTouchesForGesturesToSuperview,
     :"setDeliversTouchesForGesturesToSuperview:", :"addGestureRecognizer:",
     :viewTraversalMark, :isInAnimatedVCTransition, :"setInAnimatedVCTransition:",
     :"setViewTraversalMark:", :skipsSubviewEnumeration,
     :"setSkipsSubviewEnumeration:", :frameOrigin, :"setFrameOrigin:",
     :"pointInside:forEvent:", :"hitTest:forEvent:", :"initWithSize:",
     :"setClipsSubviews:", :"createSnapshotWithRect:", :"setEnabled:", :isEnabled,
     :"setSize:", :size, :"addAnimation:forKey:",
     :"setNeedsDisplayOnBoundsChange:", :"setAlpha:", :"setContentScaleFactor:",
     :"setClearsContextBeforeDrawing:", :"setContentMode:", :"setContentStretch:",
     :"setClipsToBounds:", :clearsContextBeforeDrawing, :contentMode,
     :contentStretch, :clipsToBounds, :contentScaleFactor, :"setClearsContext:",
     :recursivelyForceDisplayIfNeeded, :visibleBounds,
     :"setFixedBackgroundPattern:", :isHiddenOrHasHiddenAncestor,
     :"setContentsPosition:", :"newSnapshotWithRect:", :forceDisplayIfNeeded,
     :alpha, :needsDisplay, :needsDisplayOnBoundsChange, :"setBackgroundColor:",
     :backgroundColor, :"setHidden:", :isHidden, :"setOpaque:", :isOpaque,
     :setNeedsDisplay, :"drawRect:", :"setNeedsDisplayInRect:", :didMoveToWindow,
     :layoutSubviews, :"sendSubviewToBack:", :"bringSubviewToFront:",
     :"containsView:", :layoutBelowIfNeeded, :"willMoveToWindow:",
     :deferredBecomeFirstResponder, :"movedFromSuperview:", :didMoveToSuperview,
     :"viewWithTag:", :"insertSubview:atIndex:",
     :"exchangeSubviewAtIndex:withSubviewAtIndex:",
     :"insertSubview:belowSubview:", :"insertSubview:aboveSubview:",
     :"didAddSubview:", :"willMoveToSuperview:", :"insertSubview:below:",
     :"insertSubview:above:", :"movedToSuperview:",      :"viewWillMoveToSuperview:",
     :viewDidMoveToSuperview, :"movedFromWindow:", :"movedToWindow:",
     :"isDescendantOfView:", :window, :subviews, :setNeedsLayout, :superview,
     :removeFromSuperview, :"willRemoveSubview:", :layoutIfNeeded, :"addSubview:",
     :"sizeThatFits:", :"hitTest:withEvent:", :isMultipleTouchEnabled,
     :"resizeSubviewsWithOldSize:", :"pointInside:withEvent:",
     :"resizeWithOldSuperviewSize:", :autoresizingMask,
     :"setMultipleTouchEnabled:", :"setExclusiveTouch:", :isExclusiveTouch,
     :"convertSize:toView:", :"convertSize:fromView:", :hitRect,
     :"setFrame:forFields:", :"setRotationBy:", :"setAutoresizesSubviews:",
     :autoresizesSubviews, :sizeToFit, :origin, :"setOrigin:", :extent,
     :"setAutoresizingMask:", :"convertRect:toView:", :"convertRect:fromView:",
     :bounds, :transform, :position, :"setFrame:", :"setTransform:",
     :"setBounds:", :"convertPoint:fromView:", :"convertPoint:toView:", :frame,
     :center, :"setCenter:", :"setPosition:", :"setUserInteractionEnabled:",
     :charge, :"setTag:", :isUserInteractionEnabled, :cancelTouchTracking,
     :cancelMouseTracking, :tapDelegate, :"setCharge:", :"setTapDelegate:",
     :"startHeartbeat:inRunLoopMode:", :"stopHeartbeat:", :canHandleSwipes,
     :"swipe:withEvent:", :tag, :init, :layer, :nextResponder, :"initWithCoder:",
     :"encodeWithCoder:", :defaultFirstResponder, :nextFirstResponder,
     :inputAccessoryView, :inputView, :reloadInputViews,
     :reloadInputViewsWithoutReset, :"canPerformAction:withSender:",
     :"touchesCancelled:withEvent:", :"motionEnded:withEvent:",
     :"touchesBegan:withEvent:", :"touchesMoved:withEvent:",      :"touchesEnded:withEvent:", :"motionBegan:withEvent:",
     :"motionCancelled:withEvent:", :"remoteControlReceivedWithEvent:",
     :"mouseDragged:", :isFirstResponder, :canResignFirstResponder, :undoManager,
     :"mouseDown:", :"mouseExited:", :"mouseEntered:", :"scrollWheel:",
     :"mouseMoved:", :"mouseUp:", :firstResponder, :sessions, :help, :quit,
     :"repl:", :to_plist, :"Complex:", :Complex, :"Rational:", :Rational,
     :"enum_for:", :enum_for, :"to_enum:", :to_enum, :object_id, :__id__,
     :"define_singleton_method:", :define_singleton_method, :"public_method:",
     :"method:", :"extend:", :extend, :"respond_to_missing?:", :"respond_to?:",
     :respond_to?, :"public_send:", :public_send, :"send:", :send, :"__send__:",
     :__send__, :"instance_exec:", :instance_exec, :"instance_eval:",
     :instance_eval, :__callee__, :__method__, :tap, :"is_a?:", :"kind_of?:",
     :"instance_of?:", :"instance_variable_defined?:", :"instance_variable_set:",
     :"instance_variable_get:", :instance_variables, :"public_methods:",
     :public_methods, :"private_methods:", :private_methods,
     :"protected_methods:", :protected_methods, :"singleton_methods:",
     :singleton_methods, :"methods:", :methods, :inspect, :to_s, :untrusted?,
     :untrust, :trust, :frozen?, :freeze, :untaint, :tainted?, :taint, :__type__,
     :dup, :clone, :"<=>:", :"eql?:", :"!~:", :"=~:", :"===:", :nil?, :"!=:", :!,
     :"==:", :"equal?:", :selectionAffinity, :defaultAccessibilityTraits,
     :"accessibilitySetIdentification:", :"indexOfAccessibilityElement:",
     :"accessibilityElementAtIndex:", :accessibilityElementCount,
     :accessibilityIncrement, :accessibilityDecrement, :"accessibilityScroll:",
     :accessibilityPerformEscape, :accessibilityElementDidBecomeFocused,
     :accessibilityElementDidLoseFocus, :accessibilityElementIsFocused,
     :accessibilityFrame, :storedAccessibilityViewIsModal,
     :storedAccessibilityElementsHidden, :accessibilityHint,
     :accessibilityActivationPoint, :accessibilityTraits, :accessibilityLanguage,
     :accessibilityIdentifier, :accessibilityViewIsModal,
     :accessibilityElementsHidden, :storedAccessibilityTraits,
     :storedIsAccessibilityElement, :storedAccessibilityFrame,
     :storedAccessibilityActivationPoint, :"setAccessibilityElementsHidden:",
     :"setAccessibilityViewIsModal:", :"setAccessibilityHint:",
     :"setAccessibilityFrame:", :"setAccessibilityActivationPoint:",
     :"setAccessibilityTraits:", :"setIsAccessibilityElement:",
     :"setAccessibilityContainer:", :"setAccessibilityLanguage:",
     :"setAccessibilityIdentifier:", :accessibilityContainer, :accessibilityLabel,
     :"setAccessibilityValue:", :accessibilityValue, :"setAccessibilityLabel:",
     :isAccessibilityElement, :awakeFromNib, :classForPortCoder,
     :"replacementObjectForPortCoder:", :"methodDescriptionForSelector:",
     :"performSelectorOnMainThread:withObject:waitUntilDone:modes:",
     :"performSelector:onThread:withObject:waitUntilDone:modes:",
     :"performSelectorInBackground:withObject:",
     :"performSelector:onThread:withObject:waitUntilDone:",
     :"performSelectorOnMainThread:withObject:waitUntilDone:",
     :"performSelector:object:afterDelay:",
     :"performSelector:withObject:afterDelay:",
     :"performSelector:withObject:afterDelay:inModes:",
     :autoContentAccessingProxy, :classForCoder, :"replacementObjectForCoder:",
     :"awakeAfterUsingCoder:", :"implementsSelector:", :allowsWeakReference,
     :retainWeakReference, :classForKeyedArchiver,
     :"replacementObjectForKeyedArchiver:", :observationInfo,
     :"setObservationInfo:", :"willChange:valuesAtIndexes:forKey:",
     :"didChange:valuesAtIndexes:forKey:",
     :"willChangeValueForKey:withSetMutation:usingObjects:",
     :"didChangeValueForKey:withSetMutation:usingObjects:",
     :"didChangeValueForKey:", :"willChangeValueForKey:",
     :"removeObserver:forKeyPath:", :"addObserver:forKeyPath:options:context:",
     :"removeObserver:forKeyPath:context:",
     :"observeValueForKeyPath:ofObject:change:context:",
     :"setValuesForKeysWithDictionary:", :"dictionaryWithValuesForKeys:",
     :"setNilValueForKey:", :"validateValue:forKeyPath:error:",
     :"validateValue:forKey:error:", :"mutableArrayValueForKeyPath:",
     :"mutableArrayValueForKey:", :"mutableOrderedSetValueForKeyPath:",
     :"mutableOrderedSetValueForKey:", :"mutableSetValueForKeyPath:",
     :"mutableSetValueForKey:", :"setValue:forKeyPath:", :"valueForKeyPath:",
     :"valueForUndefinedKey:", :"setValue:forUndefinedKey:", :"valueForKey:",
     :"replacementObjectForArchiver:", :classForArchiver, :isNSValue__,
     :isNSString__, :isNSNumber__, :isNSArray__, :isNSDictionary__, :isNSData__,
     :isNSDate__, :isNSSet__, :isNSOrderedSet__, :isNSTimeZone__,
     :"CA_interpolateValues:::interpolator:", :"CA_distanceToValue:",
     :"CA_interpolateValue:byFraction:", :"CA_addValue:multipliedBy:",
     :CA_copyRenderValue, :CA_prepareRenderValue, :pep_onMainThread,
     :"pep_onOperationQueue:priority:",
     :"pep_onThread:immediateForMatchingThread:", :"pep_onThread:",
     :"pep_getInvocation:", :"pep_onOperationQueue:", :"pep_afterDelay:",
     :pep_onDetachedThread, :pep_onMainThreadIfNecessary, :releaseOnMainThread,
     :class, :"isEqual:", :hash, :retain, :release, :autorelease, :retainCount,
     :copy, :finalize, :"forwardInvocation:", :"isKindOfClass:",
     :"respondsToSelector:", :"doesNotRecognizeSelector:", :"performSelector:",
     :"performSelector:withObject:", :self, :mutableCopy, :debugDescription,
     :"forwardingTargetForSelector:", :"methodSignatureForSelector:", :superclass,
     :zone, :"performSelector:withObject:withObject:", :isProxy,
     :"isMemberOfClass:", :"conformsToProtocol:", :isFault, :"methodForSelector:"]
     (main)>> self.methods.count
      464
	
Thats so much information to handle to understand what these do , iOS API docs on Dash is a better option, but you get what is possible
	
	
How do we identify the relevant methods

    (main)>> def useful_methods(variable); variable.public_methods.select {|k|  k == k.downcase} - " ".methods ; end

So useful_methods is too long change it into something memorable for you, I will define it as "um", I am typing again as alias method is not available as RubyMotion is still not a 100% ruby implementation

    def um(variable); variable.public_methods.select {|k|  k == k.downcase} - " ".methods ; end

    (main)>> um(hello)
    ...
    (main)>> useful_methods(hello)
    => [:table, :keyboard, :subtitle, :dismiss, :buttons, :layout, :context, :show, :title, :delegate, :message, :alpha, :window, :subviews, :superview, :origin, :extent, :bounds, :transform, :position, :frame, :charge, :tag, :layer]

This is more manageable, what did that magic method do, since RubyMotion is using native Objective-C as primitive all the methods are visible and they follow camelCase and colon in methods. additionally i have removed common methods derived in any string instance.

Let us hide the message from console

     (main)>> hello.dismiss

Bring it back

     (main)>> hello.show

Let us add a title to the message window


     (main)>> hello.title =  "Title"


See this is fun.

Let us try few more properties

     (main)>> hello.subtitle =  "Subtitle"
     (main)>> hello.message =  "New Message"

Let us try something else


     (main)>> hello.position
     => #<TypeError: unrecognized runtime type `{CGPoint=ff}'

We dont know what parameters are required but nothing big is lost, as the worst that might happen is the console crashes, but it is still a rare occasion.

Whatever code works fine on console gets added to your editor and then gets committed to you repository and you are making progress one line at a time.

Think about doing it on Xcode, each compile would take its time, and would be not the best way to develop quickly.

You dont need to perfect code which would run on the first run, you just need to focus on the task in hand

There are more than one way of doing anything in nearly every technology, but when you are learning learn one way of doing it first and go forward, over a period you would be a learnt man and can justify which is better as experience teaches you.



WIP