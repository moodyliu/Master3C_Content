require "UnLua"

local CommonUtils = require("Utils/CommonUtils")

local ObjUtils = Class()

function ObjUtils:GetLoadSubSystem(WorldContext)
    local SubSystem = UE4.USubsystemBlueprintLibrary.GetGameInstanceSubsystem(WorldContext, UE4.UMGI_ResourceSubsystem.StaticClass())
    return SubSystem
end

function ObjUtils:LoadObjAsync(WorldContext, InPath, InCallback)
    local Callback = function(_, Path)
        InCallback(Path)
    end
    local SubSystem = self:GetLoadSubSystem(WorldContext)
    SubSystem:LoadObjAsync(InPath, {WorldContext, Callback})
end

function ObjUtils:GetObject(WorldContext, Path)
    return self:GetLoadSubSystem(WorldContext):GetObject(Path)
end

return ObjUtils