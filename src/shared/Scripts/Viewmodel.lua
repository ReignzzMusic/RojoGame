local module = {

    weaponModel= nil;

};

function module:SetWeapon(_settings)
    if self.weaponModel then
        self.weaponModel:Destroy();
    end

    _settings = require(_settings);

    self.weaponModel = _settings.model:Clone();
    self.weaponModel.Parent = game.Workspace.CurrentCamera;
end

function module:Update(dt)
    
    print("Updating our viewmodel");
    if self.weaponModel then
        self.weaponModel:PivotTo(game.Workspace.CurrentCamera.CFrame);      
    end

end


return module;