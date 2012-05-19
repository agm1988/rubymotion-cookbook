class LightController < UIViewController
  
  def loadView
    self.view = UIImageView.alloc.init
  end

  def shouldAutorotateToInterfaceOrientation(*)
    true
  end  

  def viewDidLoad
    #view.image = UIImage.imageNamed('background.jpg')
    @label = makeLabel
    view.addSubview(@label)
    randomColor
    view.userInteractionEnabled = true
    recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:'randomColor')
    view.addGestureRecognizer(recognizer)
  end

  def randomColor
    mycolors = [:blackColor, :whiteColor, :grayColor, :lightGrayColor, :darkGrayColor, :redColor, :greenColor, :blueColor, :cyanColor, :magentaColor, :yellowColor, :orangeColor, :purpleColor, :brownColor, :clearColor]
    index = mycolors.length - 1
    key = rand(index)
    log(key,"key")
    color = mycolors[key]
    log(color,"chosen color")
    @label.text = color
    @label.backgroundColor =  UIColor.send(color)
    end

  def makeLabel
    label = UILabel.alloc.initWithFrame([[0, 0], [600,600]])
    label
  end


end  