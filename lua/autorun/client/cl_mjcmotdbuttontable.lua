ButtonTable = {}
function AddMjcMOTDButton(name, options)
	
	if not name then 
		name = "No Name Button"
    end
	
	if not options.func then
		error("Command has not been set! Clicking this button doesn't do anything.")
    end
	
	MjcMOTD.ButtonTable[name] = {
		func = options.func, 
	} 
		
end