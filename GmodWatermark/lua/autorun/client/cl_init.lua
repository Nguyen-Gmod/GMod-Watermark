whitelistedgroups = {"superadmin","admin"} //if you are using ulx what classes do you want to not see the watermark?

function flashWatermark()
	if (input.IsKeyDown(KEY_F5)) or (input.IsKeyDown(KEY_F12)) then
		down = 1
		hook.Add("HUDPaint", "paintwatermark", function()
			if down == 1 then
				local length = string.len(GetHostName().."You're playing on:")
				draw.RoundedBox(4,25,25,length*10+5,45,Color(0,0,0,255))
				draw.SimpleText("You're playing on: "..GetHostName(),"Trebuchet24",35,35,Color(255,255,255,255))
			end
		end)
	else
		down = 0
	end
end

hook.Add("tick","checkKey",flashWatermark)