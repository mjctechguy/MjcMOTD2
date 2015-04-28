//Left Frame Colours
MjcMOTDPanel_LeftFramColour = Color(52, 73, 94) -- Left Frame Colour
MjcMOTDPanel_LeftFrameSTColour = Color(44, 62, 80) -- This is the background colour behind the Server Info
MjcMOTDPanel_LeftFrameButtonsColour = Color(44, 62, 80) -- This is the background of where buttons are located
// Close Button Settings & Colours
MjcMOTDPanel_CloseButtonColour = Color(36,36,36)
MjcMOTDPanel_CloseButtonHoverColour = Color(158, 163, 168)
MjcMOTDPanel_CloseHoverButton = true
//Server Title Settings & Colours
MjcMOTDPanel_ServerNameText = "Welcome to "..GetHostName()
MjcMOTDPanel_TopBarBackgroundColour = Color(44, 62, 80)
MjcMOTDPanel_ServerNameTextColour = Color(255,255,255)

MjcMOTDPanel_ScrollbarbtnUp = Color(127, 140, 141) 
MjcMOTDPanel_ScrollbarbtnDown = Color(127, 140, 141)
MjcMOTDPanel_ScrollbarGrip = Color(149, 165, 166) -- THis is what you hold on to when you drag down or up
MjcmOTDPanel_ScrollbarBackground = Color(189, 195, 199)


//Default HTML URL
MjcMOTDPanel_DefaultURL = "http://facepunch.com" -- This is the deafult page url that we accur when you open your motd. You should keep this the same for your rules or something
//MOTD Commands
MjcMOTD_MotdChatCommand = "!motd"

//Hover Effect on Main Buttons
MjcMOTDPanel_HoverMainButtons = true --When you hover your mouse cursor over the button it would change colour if you don't want this change to false.


//Button Config
-- You can just copy the one below. If there is a button with the same name they don't show check that before cooming to me with error codes
AddMjcMOTDButton("Steam Group", 
{
	func = "http://www.garrysmod.com/",
    buttoncolor = Color(36,36,36),
    buttoncolorhover = Color(158, 163, 168),
    textcolor = Color(255,255,255),
})

AddMjcMOTDButton("Website", 
{
	func = "http://www.garrysmod.com/",
	buttoncolor = Color(36,36,36),
	buttoncolorhover = Color(158, 163, 168),
	textcolor = Color(255,255,255),
})


AddMjcMOTDButton("Rules", -- Button between ""
{
	func = "http://www.facepunch.com",  -- Function for example you could make it go to a website or a webpage
	buttoncolor = Color(36,36,36), -- Button color
	buttoncolorhover = Color(158, 163, 168),
	textcolor = Color(255,255,255), -- Button Text Color
})

AddMjcMOTDButton("Donate", 
{
	func = "http://www.paypal.com/",
	buttoncolor = Color(36,36,36),
	buttoncolorhover = Color(158, 163, 168),
	textcolor = Color(255,255,255),
})

AddMjcMOTDButton("Forums", 
{
	func = "<p>http://www.garrysmod.com/</p>",
	buttoncolor = Color(36,36,36),
	buttoncolorhover = Color(158, 163, 168),
	textcolor = Color(255,255,255),
})	





