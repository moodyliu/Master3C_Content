require "UnLua"

local CommonUtils = require("Utils/CommonUtils")

local DataUtils = Class()

function DataUtils:GetDataSubSystem(WorldContext)
    local SubSystem = UE4.USubsystemBlueprintLibrary.GetGameInstanceSubsystem(WorldContext, UE4.UMGI_MUDSubsystem.StaticClass())
    return SubSystem
end

function DataUtils:GetData(WorldContext, TableName, RowKey)
    local SubSystem = self:GetDataSubSystem(WorldContext)
    if SubSystem then
        return SubSystem:GetData(TableName, RowKey)
    end
end

function DataUtils:SetData(WorldContext, TableName, RowKey, NewData)
    local SubSystem = self:GetDataSubSystem(WorldContext)
    if SubSystem then
        return SubSystem:SetData(TableName, RowKey, NewData)
    end
    return false
end

return DataUtils