class EMNewMemoryLocationController < UIViewController
	def viewDidLoad
		view.backgroundColor = UIColor.purpleColor
    
    doneButton    = UIBarButtonItem.alloc.initWithTitle('Done',   style:UIBarButtonItemStyleDone, target:self, action:"didPressDoneButton")
    self.navigationItem.title = 'Where?'
    self.navigationItem.rightBarButtonItem  = doneButton
	end
  
  def didPressDoneButton
    self.navigationController.popViewControllerAnimated(true)
  end
end