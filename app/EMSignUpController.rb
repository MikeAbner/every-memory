class EMSignUpController < UITableViewController
	def viewDidLoad
    view.delegate = view.dataSource = self
    drawFooterView
	end
  
  def numberOfSectionsInTableView(tableView)
    1
  end
  
  def tableView(tableView, titleForHeaderInSection:section)
    case section
    when 0
      return "Sign up"
    end
  end
  
  def tableView(tableView, numberOfRowsInSection:section)
    4
  end
  
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    case indexPath.row
    when 0
      cell = drawFirstNameCell
    when 1
      cell = drawLastNameCell
    when 2
      cell = drawEmailCell
    when 3
      cell = drawPasswordCell
    end
  
    cell
  end
  
  def drawHeaderView
    
  end
  
  def drawFirstNameCell
    cell = self.tableView.dequeueReusableCellWithIdentifier("firstname")
    
    if cell.nil?
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleValue2, reuseIdentifier:"firstname")
      cell.textLabel.text = 'First name'
      cell.detailTextLabel.text = 'Mike'
    end
    
    cell
  end
  
  def drawLastNameCell
    cell = self.tableView.dequeueReusableCellWithIdentifier("lastname")
    
    if cell.nil?
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleValue2, reuseIdentifier:"lastname")
      cell.textLabel.text = 'Last name'
      cell.detailTextLabel.text = 'Abner'
    end
    
    cell
  end
  
  def drawEmailCell
    cell = self.tableView.dequeueReusableCellWithIdentifier("email")
    
    if cell.nil?
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleValue2, reuseIdentifier:"email")
      cell.textLabel.text = 'Email'
      cell.detailTextLabel.text = 'mike.abner@gmail.com'
    end
    
    cell
  end
  
  def drawPasswordCell
    cell = self.tableView.dequeueReusableCellWithIdentifier("password")
    
    if cell.nil?
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleValue2, reuseIdentifier:"password")
      cell.textLabel.text = 'Password'
      cell.detailTextLabel.text = 'This app rocks!'
    end
    
    cell
  end
  
  def drawFooterView
    footer = UIView.alloc.initWithFrame([ [0, 0], [320, 60] ])
    footer.backgroundColor = UIColor.yellowColor

    sign_up_btn = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    sign_up_btn.frame = [[10, 10], [200, 44]]
    sign_up_btn.titleLabel.text = 'Sign Up!'
    sign_up_btn.addTarget(self, action:'didPressSignUpButton', forControlEvents:UIControlEventTouchUpInside)

    footer.addSubview(sign_up_btn)
    self.tableView.tableFooterView = footer
  end
  
  def didPressSignUpButton
    puts 'didPressSignUpButton'
  end
  
end