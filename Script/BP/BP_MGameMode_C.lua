--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

require "UnLua"
local ObjUtils = require("Utils/ObjUtils")
-- if WITH_LUA_DEBUG then
--     require("LuaPanda").start("127.0.0.1",8818)
-- end

local BP_MGameMode_C = Class()

--function BP_MGameMode_C:Initialize(Initializer)
--end

--function BP_MGameMode_C:UserConstructionScript()
--end

function BP_MGameMode_C:ReceiveBeginPlay()
	self.Overridden.ReceiveBeginPlay(self)
    if not BUILD_SHIPPING then
        require "LuaPanda"
        -- LuaPanda.start("127.0.0.1",8818)
    end

end

--function BP_MGameMode_C:ReceiveEndPlay()
--	self.Overridden.ReceiveEndPlay(self)	
--end

-- function BP_MGameMode_C:ReceiveTick(DeltaSeconds)
--	self.Overridden.ReceiveTick(self,DeltaSeconds)	
-- end

--function BP_MGameMode_C:ReceiveAnyDamage(Damage, DamageType, InstigatedBy, DamageCauser)
--end

--function BP_MGameMode_C:ReceiveActorBeginOverlap(OtherActor)
--end

--function BP_MGameMode_C:ReceiveActorEndOverlap(OtherActor)
--end

return BP_MGameMode_C
