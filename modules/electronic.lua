
----------------------------------------------------------------

-- Quand le joueur est créer :
local function on_player_created(e)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("radar"):setEnabled(false)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("electronic-circuit"):setEnabled(false)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("inserter"):setEnabled(false)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("electric-mining-drill"):setEnabled(false)
    RitnLibEvent(e):getPlayer():getForce():getRecipe("repair-pack"):setEnabled(false)
end


----------------------------------------------------------------
local module = { events = {} }
module.events[defines.events.on_player_created] = on_player_created
----------------------------------------------------------------
return module