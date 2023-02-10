local RitnEvent = require(ritnlib.defines.class.luaClass.event)
----------------------------------------------------------------

-- Quand le joueur est créer :
local function on_player_created(e)
    RitnEvent(e):getPlayer():getForce():getRecipe("radar"):setEnabled(false)
    RitnEvent(e):getPlayer():getForce():getRecipe("electronic-circuit"):setEnabled(false)
    RitnEvent(e):getPlayer():getForce():getRecipe("inserter"):setEnabled(false)
    RitnEvent(e):getPlayer():getForce():getRecipe("electric-mining-drill"):setEnabled(false)
    RitnEvent(e):getPlayer():getForce():getRecipe("repair-pack"):setEnabled(false)
end


----------------------------------------------------------------
local module = { events = {} }
module.events[defines.events.on_player_created] = on_player_created
----------------------------------------------------------------
return module