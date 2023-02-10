local RitnProtoGroup = require(ritnlib.defines.class.prototype.group)
local RitnProtoSubgroup = require(ritnlib.defines.class.prototype.subgroup)
local RitnProtoCategory = require(ritnlib.defines.class.prototype.category)
------------------------------------------------------

--New order Item-Group

RitnProtoGroup("environment"):changePrototype("order", "a-a")
RitnProtoGroup("enemies"):changePrototype("order", "a-b")
------------------------------------------------------
RitnProtoGroup("logistics"):changePrototype("order", "w-a")
RitnProtoGroup("production"):changePrototype("order", "w-b")
RitnProtoGroup("combat"):changePrototype("order", "w-c")
RitnProtoGroup("intermediate-products"):changePrototype("order", "y-a")
------------------------------------------------------
RitnProtoGroup("fluids"):changePrototype("order", "z-a")
RitnProtoGroup("signals"):changePrototype("order", "z-b")
RitnProtoGroup("other"):changePrototype("order", "z-c")
------------------------------------------------------

RitnProtoGroup("combat"):setIcon("__RitnElectronic__/graphics/item-group/combat.png", 385)
RitnProtoGroup("intermediate-products"):setIcon("__RitnElectronic__/graphics/item-group/others.png", 385)
RitnProtoGroup("fluids"):setIcon("__RitnElectronic__/graphics/item-group/fluids.png", 385)
RitnProtoGroup("signals"):setIcon("__RitnElectronic__/graphics/item-group/signals.png", 385)
RitnProtoGroup("logistics"):setIcon("__RitnElectronic__/graphics/item-group/logistics.png", 385)
RitnProtoGroup("production"):setIcon("__RitnElectronic__/graphics/item-group/production.png", 385)


if mods["creative-mod"] then 
    RitnProtoGroup("creative-mod_creative-tools"):setIcon("__RitnElectronic__/graphics/item-group/creative.png", 385)
end

--ITEM GROUP
RitnProtoGroup:extend("ritn-electronic", "c-a", 
    "__RitnElectronic__/graphics/item-group/electronic.png", 385
)


--ITEM SUBGROUPS
RitnProtoSubgroup:extend("production-machine-electronic", "ritn-electronic", "a")
RitnProtoSubgroup:extend("electronic-product-base", "ritn-electronic", "b")
RitnProtoSubgroup:extend("electronic-product", "ritn-electronic", "c")
RitnProtoSubgroup:extend("advanced-electronic-product", "ritn-electronic", "d")
RitnProtoSubgroup:extend("process-electronic-product", "ritn-electronic", "e")
RitnProtoSubgroup:extend("ritn-circuit-network", "ritn-electronic", "f")
RitnProtoSubgroup:extend("ritn-logistic-network", "ritn-electronic", "g")
RitnProtoSubgroup:extend("ritn-module", "ritn-electronic", "h")
RitnProtoSubgroup:extend("ritn-space", "ritn-electronic", "i")
RitnProtoSubgroup:extend("ritn-logo", "intermediate-products", "z-b-a")
RitnProtoSubgroup:extend("creative-mod_signal", "intermediate-products", "z-a-z")


--RECIPE CATEGORY
RitnProtoCategory:extend("ritn-electronics")
