class EMMemoryListNavController < UINavigationController
	def viewDidLoad    
    @memory_list = EMMemoryListController.alloc.init
    
    self.viewControllers = [@memory_list]
	end
end