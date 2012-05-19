class TimerController < UIViewController
  def loadView
    self.view = UIImageView.alloc.init
  end

  def shouldAutorotateToInterfaceOrientation(*)
    true
  end
  
  def viewDidLoad
    view.image = UIImage.imageNamed('midnight.jpg')
    #@labelTitle = makeLabel('Time to Midnight',[[10, 200], [300,80]])

    view.addSubview(@labelTitle)
    @label = makeLabel(show_time,[[10, 60], [300,80]])
    view.addSubview(@label)
    #countdown need to be implemented
  end

  def makeLabel(text,location,font_name='Chalkduster')
    label = UILabel.alloc.initWithFrame(location)
    label.text = text
    label.textColor = UIColor.orangeColor
    label.font = UIFont.fontWithName(font_name, size:40)
    label.textAlignment = UITextAlignmentCenter
    label
  end  

  def show_time
    midnight_seconds = 24.0*3600
    t= Time.now
    time_to_midnight = midnight_seconds - (3600*t.hour + 60*t.min + t.sec)*1.0 

    time_to_midnight
    hour = (time_to_midnight/3600).to_i
    padded_hour = hour.to_s.rjust(2,'0')
    minutes = (time_to_midnight%60).to_i
    padded_minutes =  minutes.to_s.rjust(2,'0')
    "#{padded_hour}:#{padded_minutes}"
  end
  
end