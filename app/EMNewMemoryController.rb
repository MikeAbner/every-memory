class EMNewMemoryController < UIViewController
	def viewDidLoad
    view.backgroundColor = UIColor.grayColor
    
    cancelButton  = UIBarButtonItem.alloc.initWithTitle('Cancel', style:UIBarButtonItemStylePlain, target:self, action:"didPressCancelButton")
    saveButton    = UIBarButtonItem.alloc.initWithTitle('Save',   style:UIBarButtonItemStyleDone, target:self, action:"didPressSaveButton")
    self.navigationItem.title = 'New Memory'
    self.navigationItem.leftBarButtonItem   = cancelButton
    self.navigationItem.rightBarButtonItem  = saveButton
	end
  
  def didPressCancelButton
    title = 'Are you sure?'
    msg   = 'Any data on this page will not be saved.'
    alert = UIAlertView.new
    alert.title     = title
    alert.message   = msg
    alert.delegate  = self
    alert.addButtonWithTitle('Yes')
    alert.addButtonWithTitle('No')
    alert.show
  end

  def alertView(alertView, clickedButtonAtIndex:buttonIndex)
    self.dismissModalViewControllerAnimated(true) if buttonIndex == 0
  end
  
  def didPressSaveButton
    puts "didPressSaveButton"
    
    backButton = UIBarButtonItem.alloc.initWithTitle("Back", style:UIBarButtonItemStylePlain, target:nil, action:nil)
    self.navigationItem.backBarButtonItem = backButton;
    
    @location = EMNewMemoryLocationController.alloc.init
    self.navigationController.pushViewController(@location, animated:true)
  end
end