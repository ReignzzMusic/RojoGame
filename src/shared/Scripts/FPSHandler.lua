local module = {

    versionID = 1.0;
    viewmodel = require(game.ReplicatedStorage.Shared.Scripts.Viewmodel);

}


function module:Init()
    
    --#region Setting up camera for use
    game.Players.LocalPlayer.CameraMinZoomDistance = 0;
    game.Players.LocalPlayer.CameraMaxZoomDistance = 0;

    game.Workspace.CurrentCamera.FieldOfView = 90;
    game:GetService("UserInputService").MouseIcon = "http://www.roblox.com/asset/?id=2216363423";

    --#endregion

    game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
        self:Update(deltaTime)        
    end)
end

function module:Update(dt)
    self.viewmodel:Update(dt);
end

return module;

