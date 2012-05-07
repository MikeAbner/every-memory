class EMNewMemoryNavController < UINavigationController
	def viewDidLoad
    @new_memory = EMNewMemoryController.alloc.init
    
    self.viewControllers = [@new_memory]
	end
end