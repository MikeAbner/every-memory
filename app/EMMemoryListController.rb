class EMMemoryListController < UITableViewController
  def viewDidLoad
    view.delegate = view.dataSource = self
    
    self.navigationItem.title = 'Every Memory'
    
    addNewMemory = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemAdd, target:self, action:"didPressNewMemoryButton")
    
    self.navigationItem.rightBarButtonItem = addNewMemory
  end
  
  def viewWillAppear(animated)
  end
  
  def viewDidAppear(animated)
  end
  
  def numberOfSectionsInTableView(tableview)
    1
  end
  
  def tableView(tableView, numberOfRowsInSection:section)
    return 10
  end
  
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:"cell")
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator
    cell
  end

  def didPressNewMemoryButton
    @new_memory_nav = EMNewMemoryNavController.alloc.init
    
    self.presentModalViewController(@new_memory_nav, animated:true)
  end
  
end