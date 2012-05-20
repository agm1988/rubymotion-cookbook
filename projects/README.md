
# RubyMotion Projects




# cloning all the projects

      git clone https://github.com/railsfactory/rubymotion-cookbook.git


# list of all the projects included

[https://github.com/railsfactory/rubymotion-cookbook/blob/master/projects/projects.list](https://github.com/railsfactory/rubymotion-cookbook/blob/master/projects/projects.list)

# downloading and running all the projects
Go grab for a coffee, it will take about 30 minutes for this task, this will download 71 projects

      cd rubymotion-cookbook/projects
      sh clone_all.sh
      ...
      sh run_all.sh


each projects will run in sequence in simulator.

# cleaning all the build artifacts
when you have updating the RubyMotion , it would be better to clean the artifacts and test them again, there has been multiple updates in last 2 weeks, (1.0 - 1.4)


      sh clean_all.sh

# update all the projects
I check new code commits every few hours, you can do it once in a while.

      sh update.sh

occasionally if project is close sourced or renamed or deleted update will break the update, you can manually fix it or check the next step

      git pull


update to get the latest projects, modifications etc


# find the project
projects and URL are case sensitive so it makes sense to find the project you are looking for

      sh find.sh keyword
      sh find.sh bubble
      https://github.com/mattetti/BubbleWrap.git


# search within project code


      sh search.sh  JSON
      .......lots of lines







