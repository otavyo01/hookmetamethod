local LocalPlayer = game:GetService("Players").LocalPlayer.Notas.Value
local OldIndex = nil

OldIndex = hookmetamethod(game, "__index", function(Self, Key)
    if not checkcaller() and Self == LocalPlayer and Key == "Value" then
        return 100
    end

    return OldIndex(Self, Key, 100)
end)
