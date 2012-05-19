class OpenController < UIViewController
  
  def loadView
    self.view = UIImageView.alloc.init
  end

  def shouldAutorotateToInterfaceOrientation(*)
    true
  end  

  def viewDidLoad
    
    # view = UIImage.imageNamed('image.jpg')
    @button =  UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle("open covano website", forState:UIControlStateNormal)
    @button.frame = [[100, 400],[75,50]]
    
    view.addSubview(@button)
    #@label = makeLabel
    #view.addSubview(@label)
    #randomColor
    view.userInteractionEnabled = true
    recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:'openSite')
    view.addGestureRecognizer(recognizer)
    #@label.addGestureRecognizer(recognizer)

  end

def openSite
  #log("http://www.covano.com/",'URL')
  
UIApplication.sharedApplication.openURL(NSURL.URLWithString("http://www.covano.com/"))
end  



end  