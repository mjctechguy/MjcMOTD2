

MMOTDButtonTable = {}
function AddMjcMOTDButton(name, options)
	
	if not name then 
		name = "No Name Button"
    end
	
	if not options.func then
		error("Command has not been set! Clicking this button doesn't do anything.")
    end

    if not options.buttoncolor then
		buttoncolor = Color(36,36,36) 
    end

    if not options.textcolor then
		textcolor = Color(255,255,255)
    end
	
	MMOTDButtonTable[name] = {
		func = options.func, 
		buttoncolor = options.buttoncolor,
		textcolor = options.textcolor
	} 
		
end


-- You can just copy the one below. If there is a button with the same name they don't show check that before cooming to me with error codes
AddMjcMOTDButton("Steam Group", 
{
	func = "http://www.garrysmod.com/",
    buttoncolor = Color(36,36,36),
    textcolor = Color(255,255,255),
})

AddMjcMOTDButton("Website", 
{
	func = "http://www.garrysmod.com/",
	buttoncolor = Color(36,36,36),
	textcolor = Color(255,255,255),
})


AddMjcMOTDButton("Rules", -- Button between ""
{
	func = "http://www.garrysmod.com/",  -- Function for example you could make it go to a website or a webpage
	buttoncolor = Color(36,36,36), -- Button color
	textcolor = Color(255,255,255), -- Button Text Color
})

AddMjcMOTDButton("Donate", 
{
	func = "http://www.garrysmod.com/",
	buttoncolor = Color(36,36,36),
	textcolor = Color(255,255,255),
})

AddMjcMOTDButton("Forums", 
{
	func = "<p>http://www.garrysmod.com/</p>",
	buttoncolor = Color(36,36,36),
	textcolor = Color(255,255,255),
})	



