class WallpaperController < UIViewController


  def loadView
    self.view = UIImageView.alloc.init
  end

  def shouldAutorotateToInterfaceOrientation(*)
    true
  end  

  def viewDidLoad
    
    randomImage
    @button =  UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle("change", forState:UIControlStateNormal)
    @button.frame = [[100, 400],[75,50]]
    
    view.addSubview(@button)
    #@label = makeLabel
    #view.addSubview(@label)
    #randomColor
    view.userInteractionEnabled = true
    recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:'randomImage')
    view.addGestureRecognizer(recognizer)
    #@label.addGestureRecognizer(recognizer)

  end

def randomImage
  images = ['apple1.jpg','apple2.jpg','apple3.jpg','apple4.jpg']
  index = images.length #- 1
  key = rand(index)
  log(key,'key')
  view.image = UIImage.imageNamed(images[key]) 
end


  def randomColor
    @label.text = 'change'
    @label.backgroundColor =  UIColor.send(:whiteColor)
    end

  def makeLabel
    label = UILabel.alloc.initWithFrame([[10, 10], [100,100]])
    label
  end





end  