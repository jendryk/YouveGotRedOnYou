WMPVP = CreateFrame("Frame", nil, nil)  
WMPVP:RegisterEvent("PLAYER_TARGET_CHANGED")

WMPVP:SetScript("OnEvent", function()
      if not IsInInstance() then
         if UnitExists("target") then
            if UnitIsPlayer("target") then
               if UnitIsPVP("target") then
                  wrmpvpmsg = ("***" .. UnitName("target") .. " is PVP flagged!***")
                  UIErrorsFrame:AddMessage(wrmpvpmsg, 1.0, 0.0, 0.0, 53, 5)
                  PlaySoundFile("Sound/Character/Gnome/GnomeVocalMale/GnomeMaleNo03.wav")
               end  
            end
         end 
      end
end)
