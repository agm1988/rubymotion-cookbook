#!/bin/bash -ex

dir="$PWD"


folders=( 
"./bnr-ios-rubymotion/04/WhereAmI/"
"./bnr-ios-rubymotion/05/WhereWasI/"
"./bnr-ios-rubymotion/06/hypnosister/"
"./learning-rubymotion/01/RubyQuiz/"
"./pragmatic-rubymotion/Magic8Ball/"
"./remote_model/examples/FacebookGraph/"
"./remote_model/"
"./rubios/DataMart/"
"./rubios/Splashy/"
"./rubios/SvcData/"
"./rubymotion-experiments/rm/JobFairs/"
"./rubymotion-nerd/01_Quiz/"
"./rubymotion-nerd/02_RandomPossessions/"
"./rubymotion-nerd/02_RandomPossessionsGold/"
"./rubymotion-spikes/MapKitSpike1/"
"./rubymotion-spikes/MapKitSpike2/"
"./rubymotion-spikes/MapKitSpike3/"
"./rubymotion-starter-kits/ParseBase/"
"./RubyMotion-Storyboard-Example/storyboard/"
"./RubyMotionApps/Browser/"
"./RubyMotionApps/TinyBrowser/ByRubyMotion/TinyBrowser/"
"./RubyMotionSamples/Beers/"
"./RubyMotionSamples/Fonts/"
"./RubyMotionSamples/GestureTable/"
"./RubyMotionSamples/Hello/"
"./RubyMotionSamples/HelloGL/"
"./RubyMotionSamples/Locations/"
"./RubyMotionSamples/Mustache/"
"./RubyMotionSamples/Paint/"
"./RubyMotionSamples/PaintHTML/"
"./RubyMotionSamples/StoryboardCustoms/"
"./RubyMotionSamples/TicTacToe/"
"./RubyMotionSamples/Timer/"
"./RubyMotionSamples/Trollify/"
"./RubyMotionSamples/Tweets/"
)
for i in "${folders[@]}"
do
	echo == $i ==
	echo $dir
	cd $dir
	cd $i
	rake --trace
	
	
	#cd $PWD
done
