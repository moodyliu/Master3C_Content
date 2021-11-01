--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"
local CommonUtils = require("Utils.CommonUtils")
local ObjUtils = require("Utils/ObjUtils")
-- if WITH_LUA_DEBUG then
--     require("LuaPanda").start("127.0.0.1",8818)
-- end

local ThirdPersonCharacter_C = Class()

--function ThirdPersonCharacter_C:Initialize(Initializer)
--end

--function ThirdPersonCharacter_C:UserConstructionScript()
--end

function ThirdPersonCharacter_C:ReceiveBeginPlay()
	self.Overridden.ReceiveBeginPlay(self)

	-- local callback = function(path)
    --     local obj = ObjUtils:GetObject(self, path)
    -- end
    -- ObjUtils:LoadObjAsync(self, "StaticMesh'/Game/Geometry/Meshes/1M_Cube.1M_Cube'", callback)

    local ObjsCallback = function()
        print("hello objs callback")
    end
    local Paths = UE4.TArray(UE4.FString)
    Paths:Add("StaticMesh'/Game/Geometry/Meshes/1M_Cube.1M_Cube'")
    ObjUtils:LoadObjsAsync(self, Paths, ObjsCallback)
end

--function ThirdPersonCharacter_C:ReceiveEndPlay()
--	self.Overridden.ReceiveEndPlay(self)	
--end

-- function ThirdPersonCharacter_C:ReceiveTick(DeltaSeconds)
--	self.Overridden.ReceiveTick(self,DeltaSeconds)	
-- end

--function ThirdPersonCharacter_C:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser)
--end

--function ThirdPersonCharacter_C:ReceiveActorBeginOverlap(OtherActor)
--end

--function ThirdPersonCharacter_C:ReceiveActorEndOverlap(OtherActor)
--end

return ThirdPersonCharacter_C
