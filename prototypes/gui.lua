local RitnStyle = require(ritnlib.defines.class.prototype.style)
local RitnConstants = require(ritnlib.defines.class.prototype.utility.constants)
--------------------------------------------------
RitnStyle("filter_group_tab"):changePrototype("minimal_width" , 48)
RitnConstants("select_group_row_count"):setValue(10)
RitnConstants("select_slot_row_count"):setValue(13)


if ritnmods.lumberjack.beautifulBridge 
or ritnmods.electronic.vehicleWagon 
or not ritnmods.mechanic then  
    RitnConstants("select_slot_row_count"):setValue(14)
end


if ritnmods.lumberjack.beautifulBridge and ritnmods.electronic.vehicleWagon then  
    RitnConstants("select_slot_row_count"):setValue(16)
end