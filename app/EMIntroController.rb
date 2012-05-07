class EMIntroController < UIViewController
  def viewDidLoad
    self.view.backgroundColor = UIColor.redColor
  end
  
  def viewWillAppear animated
    @introView = UIView.alloc.initWithFrame([ [0, 0], [320, 480] ])
    @introView.addSubview(createTitleLabel)
    self.view.addSubview(@introView)
  end
  
  def viewDidAppear animated
    self.performSelector('loadApp', withObject:nil, afterDelay:0.1)
  end
  
  def loadApp
    navCtrlr = EMTabBarController.alloc.init
    navCtrlr.modalTransitionStyle = UIModalTransitionStyleCrossDissolve
    self.presentModalViewController(navCtrlr, animated:true)
  end
  
  def createTitleLabel
    titleLabel                = UILabel.alloc.initWithFrame([ [0, 50], [320, 44] ])
    titleLabel.text           = 'Every Memory!'
    titleLabel.textColor      = UIColor.blueColor
    titleLabel.textAlignment  = UITextAlignmentCenter
    titleLabel
  end
end