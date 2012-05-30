
# Best Practices

Git Submodules was the preferred way to share libraries in the first 2 weeks, but already new DSL and standards emerging for distributing libraries as special rubygem packages



RubyMotion is still evolving, but based on my personal opinion these are the guidelines

challenges

* new projects created by RubyMotion does not have any files in resources folder and under git empty folders are versioned, so please do add .gitkeep (ruby on rails style) files -fixed

* if rake is not going to read your rvm configuration and you are not going to use bundle exec, there is no reason to add .rvmrc file to rubymotion project - new standard emerging

* REPL currently does not allow multi line statements , I would love  a full IRB style compatibility - fixed

less than a month and already 8 updates have been released

WIP