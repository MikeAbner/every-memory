class EMTabBarController < UITabBarController
  def viewDidLoad
    self.view.backgroundColor = UIColor.blueColor
    
    @memory_list_nav  = EMMemoryListNavController.alloc.init
    @profile          = EMProfileController.alloc.init
    
    self.viewControllers = [@memory_list_nav, @profile]
  end
  
  def viewWillAppear animated
  end
  
  def viewDidAppear animated
  end
end