MMOTDButtonTable = {}
function AddMjcMOTDButton(name, options)
	
	if not name then 
		name = "No Name Button"
    end

	if not options.func then
		error("MjcMOTD: No Function inputed button is broke please go back to your MjcMOTD2/lua/autorun/client/cl_mjcmotd_config.lua and edit the button wiith a function like a url")
    end

    if not options.buttoncolor then
		buttoncolor = Color(36,36,36) 
    end

    if not options.buttoncolorhover then
    	buttoncolorhover = Color(158, 163, 168)
    end

    if not options.textcolor then
		textcolor = Color(255,255,255)
    end
	
	MMOTDButtonTable[name] = {
		func = options.func, 
		buttoncolor = options.buttoncolor,
		buttoncolorhover = options.buttoncolorhover,
		textcolor = options.textcolor
	} 
end

