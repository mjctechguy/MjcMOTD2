	//MjcMOTD
	//By Sir Mjctechguy

	//Fonts
	surface.CreateFont("MjcMOTD_Font_CloseButton", {
	font = "Roboto",
	size = 60,
	weight = 0,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
		})

	surface.CreateFont("MjcMOTD_Font_TopServerName", {
	font = "Roboto",
	size = 30,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
		})

	surface.CreateFont("MjcMOTD_Font_MaiinLinkButtons", {
	font = "Roboto",
	size = 40,
	weight = 5,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
		})
 surface.CreateFont("MjcMOTD_Font_ServerInfo", {
  font = "Roboto",
  size = 20,
  weight = 5,
  blursize = 0,
  scanlines = 0,
  antialias = true,
  underline = false,
  italic = false,
  strikeout = false,
  symbol = false,
  rotary = false,
  shadow = false,
  additive = false,
  outline = false,
    })

function MjcMOTD()
  local MjcMOTDPanel_Backframe = vgui.Create("DPanel")
			  MjcMOTDPanel_Backframe:SetSize(ScrW()-50, ScrH()-50)
			  MjcMOTDPanel_Backframe:Center()
			  MjcMOTDPanel_Backframe.Paint = function( self, w, h )
    		 	Derma_DrawBackgroundBlur( self, self.startTime )
  			end
  local MjcMOTDPanel_Mainframe = vgui.Create("DPanel", MjcMOTDPanel_Backframe)
			  MjcMOTDPanel_Mainframe:SetSize(ScrW()-50, ScrH()-50)
			  MjcMOTDPanel_Mainframe:SetPos(100,100)
			  MjcMOTDPanel_Mainframe:Dock(FILL)
			  MjcMOTDPanel_Mainframe.Paint = function( self, w, h )
    		 	draw.RoundedBox( 0, 0, 0, w, h, color_white )
  			end

//Left Frame
  local MjcMOTDPanel_LeftFrame = vgui.Create("DPanel", MjcMOTDPanel_Mainframe)
			  MjcMOTDPanel_LeftFrame:SetSize(300, ScrH()-50)
			  MjcMOTDPanel_LeftFrame:Dock(LEFT)
			  MjcMOTDPanel_LeftFrame.Paint = function( self, w, h )
    		 	draw.RoundedBox( 0, 0, 0, w, h, Color(52, 73, 94) )
  			end


  local MjcMOTDPanel_LeftTopFrame = vgui.Create("DPanel", MjcMOTDPanel_LeftFrame)
			  MjcMOTDPanel_LeftTopFrame:SetSize(300, 84)
			  MjcMOTDPanel_LeftTopFrame:Dock(TOP)
			  MjcMOTDPanel_LeftTopFrame.Paint = function( self, w, h )
    		 	draw.RoundedBox( 0, 0, 0, w, h, Color(52, 73, 94) )
  			end
  //Avatar
  local MjcMOTDPanel_LeftTopFrame_Avatar = vgui.Create("AvatarImage", MjcMOTDPanel_LeftTopFrame)
  	    MjcMOTDPanel_LeftTopFrame_Avatar:SetPlayer(LocalPlayer(), 84)
  	    MjcMOTDPanel_LeftTopFrame_Avatar:SetSize(84,84)
  	    MjcMOTDPanel_LeftTopFrame_Avatar:Dock(LEFT)
  //Steam Name
  local MjcMOTDPanel_LeftTopFrame_UserName = vgui.Create("DLabel", MjcMOTDPanel_LeftTopFrame)
  	    MjcMOTDPanel_LeftTopFrame_UserName:SetText(LocalPlayer():GetName())
        MjcMOTDPanel_LeftTopFrame_UserName:SetFont("MjcMOTD_Font_TopServerName")
  	    MjcMOTDPanel_LeftTopFrame_UserName:SetSize(300,300)
  	    MjcMOTDPanel_LeftTopFrame_UserName:Dock(LEFT)
        MjcMOTDPanel_LeftTopFrame_UserName:DockMargin(10,0,0,0)

  //Server Info Title Frame
  local MjcMOTDPanel_LeftFrameST = vgui.Create("DPanel", MjcMOTDPanel_LeftFrame)
        MjcMOTDPanel_LeftFrameST:SetSize(250, MjcMOTDPanel_LeftFrame:GetTall()/30)
        MjcMOTDPanel_LeftFrameST:Dock(TOP)
        MjcMOTDPanel_LeftFrameST.Paint = function( self, w, h )
          draw.RoundedBox( 0, 0, 0, w, h, Color(44, 62, 80) )
        end
  //Server Info Title
  local MjcMOTDPanel_LeftFrameSTT = vgui.Create("DLabel", MjcMOTDPanel_LeftFrameST)
        MjcMOTDPanel_LeftFrameSTT:SetSize(250, MjcMOTDPanel_LeftFrame:GetTall()/30)
        MjcMOTDPanel_LeftFrameSTT:Dock(TOP)
        MjcMOTDPanel_LeftFrameSTT:SetText("Server Info")
        MjcMOTDPanel_LeftFrameSTT:SetFont("MjcMOTD_Font_TopServerName")
        MjcMOTDPanel_LeftFrameSTT:SetContentAlignment( 5 )
  //Server Current Map
  local MjcMOTDPanel_LeftFrameSM = vgui.Create("DLabel", MjcMOTDPanel_LeftFrame)
        MjcMOTDPanel_LeftFrameSM:SetSize(250, MjcMOTDPanel_LeftFrame:GetTall()/30)
        MjcMOTDPanel_LeftFrameSM:Dock(TOP)
        MjcMOTDPanel_LeftFrameSM:SetContentAlignment( 5 )
        MjcMOTDPanel_LeftFrameSM:SetText("Current Map: "..game.GetMap())
        MjcMOTDPanel_LeftFrameSM:SetFont("MjcMOTD_Font_ServerInfo")
  //Server Current Players
  local MjcMOTDPanel_LeftFramePC = vgui.Create("DLabel", MjcMOTDPanel_LeftFrame)
        MjcMOTDPanel_LeftFramePC:SetSize(250, MjcMOTDPanel_LeftFrame:GetTall()/30)
        MjcMOTDPanel_LeftFramePC:Dock(TOP)
        MjcMOTDPanel_LeftFramePC:SetContentAlignment( 5 )
        MjcMOTDPanel_LeftFramePC:SetText("Player Count: "..#player.GetAll().."/"..game.MaxPlayers())
        MjcMOTDPanel_LeftFramePC:SetFont("MjcMOTD_Font_ServerInfo")
   //Left Frame
  local MjcMOTDPanel_LeftFrameButtons = vgui.Create("DScrollPanel", MjcMOTDPanel_LeftFrame)
        MjcMOTDPanel_LeftFrameButtons:Dock(FILL)
        MjcMOTDPanel_LeftFrameButtons.Paint = function( self, w, h )
          draw.RoundedBox( 0, 0, 0, w, h, Color(44, 62, 80) )
        end
  local sbar = MjcMOTDPanel_LeftFrameButtons:GetVBar()
function sbar:Paint( w, h )
  draw.RoundedBox( 0, 0, 0, w, h, Color(189, 195, 199) )
end
function sbar.btnUp:Paint( w, h )
  draw.RoundedBox( 0, 0, 0, w, h, Color(127, 140, 141) )
end
function sbar.btnDown:Paint( w, h )
  draw.RoundedBox( 0, 0, 0, w, h, Color(127, 140, 141) )
end
function sbar.btnGrip:Paint( w, h )
  draw.RoundedBox( 0, 0, 0, w, h, Color(149, 165, 166) )
end
local MjcMOTDPanel_HTMLDefault = vgui.Create("HTML", MjcMOTDPanel_Mainframe)
          MjcMOTDPanel_HTMLDefault:Dock(FILL)
          MjcMOTDPanel_HTMLDefault:OpenURL("http://www.google.com/")
 
 for k, v in pairs(MMOTDButtonTable) do
  local MjcMOTDPanel_MainButton = vgui.Create("DButton", MjcMOTDPanel_LeftFrameButtons)
          MjcMOTDPanel_MainButton:SetSize(250, MjcMOTDPanel_LeftFrame:GetTall()/9)
          MjcMOTDPanel_MainButton:Dock(TOP)
          MjcMOTDPanel_MainButton:DockMargin(0,0,0,5)
          MjcMOTDPanel_MainButton:SetText(k)
          MjcMOTDPanel_MainButton:SetColor(v.textcolor)
          MjcMOTDPanel_MainButton:SetFont("MjcMOTD_Font_MaiinLinkButtons")
          MjcMOTDPanel_MainButton.Paint = function( self, w, h )
          draw.RoundedBox(0, 0, 0, w, h, v.buttoncolor)
        end
          MjcMOTDPanel_MainButton.DoClick = function()
            if type(v.func) == "string" then     
              MjcMOTDPanel_HTMLDefault:OpenURL(v.func)
            else
              v.func()
          end
      end
 end
local MjcMOTDPanel_CloseButton = vgui.Create("DButton", MjcMOTDPanel_Mainframe)
  			MjcMOTDPanel_CloseButton:Dock(RIGHT)
			MjcMOTDPanel_CloseButton:SetSize(80, 100)
			MjcMOTDPanel_CloseButton:SetText("X")
			MjcMOTDPanel_CloseButton:SetTextColor(color_white)
			MjcMOTDPanel_CloseButton:SetFont("MjcMOTD_Font_CloseButton")
			MjcMOTDPanel_CloseButton.DoClick = function() MjcMOTD_CloseMenu() end
			MjcMOTDPanel_CloseButton.Paint = function( self, w, h )
    			draw.RoundedBox( 0, 0, 0, w, h, Color(36,36,36) )
  			end
  	 local MjcMOTDPanel_TopBar = vgui.Create("DPanel", MjcMOTDPanel_Mainframe)
			  MjcMOTDPanel_TopBar:Dock(TOP)
			  MjcMOTDPanel_TopBar:SetSize(ScrW()-50, 40)
			  MjcMOTDPanel_TopBar.Paint = function( self, w, h )
    		 	draw.RoundedBox( 0, 0, 0, w, h, Color(44, 62, 80) )
  			end
  	local MjcMOTDText_ServerName = vgui.Create("DLabel", MjcMOTDPanel_TopBar)
  			MjcMOTDText_ServerName:SetText("Welcome to "..GetHostName())
  			MjcMOTDText_ServerName:Dock(LEFT)
  			MjcMOTDText_ServerName:DockMargin(10,0,0,0)
  			MjcMOTDText_ServerName:SetSize(ScrW()-60,40)
  			MjcMOTDText_ServerName:SetFont("MjcMOTD_Font_TopServerName")

  	
	function MjcMOTD_CloseMenu()
		MjcMOTDPanel_Backframe:Remove()
		gui.EnableScreenClicker(false)
	end
end

  function MjcMOTD_InitialSpawn()
      MjcMOTD()
      gui.EnableScreenClicker(true)
  end
hook.Add("InitPostEntity", "MjcMotd_OOS", MjcMOTD_InitialSpawn) 

function MjcMotd_OpenChatCommand( ply, text )
  if text == "!motd"  then
    MjcMOTD()
    gui.EnableScreenClicker(true)
  end
end
hook.Add("OnPlayerChat", "MjcMotd_OCC", MjcMotd_OpenChatCommand)