//handles custom grenade launcher shells
//obj/item/ammo_casing/custom_grenade_casing
//	name = "Custom grenade shell casing"
//	desc = "a custom grenade shell casing"
	//icon = 'icons/obj/ammo.dmi'
	//icon_state = "baguette"
	//slot_flags = SLOT_FLAG_BELT
	//throwforce = 1
	//w_class = WEIGHT_CLASS_SMALL
	//fire_sound = null
	//casing_drop_sound = "casingdrop"
	//harmful = TRUE
//	var/complete = FALSE
	//var/nade = null

//obj/item/ammo_casing/custom_grenade_casing/attackby(obj/item/I, mob/user, params)
	//. = ..()
	//if(istype(I, /obj/item/grenade/plastic))
	//	to_chat(user, "<span class='warning'>no plastic explosives</span>")
	//	return
	//if(istype(I, /obj/item/grenade/chem_grenade) && !I.stage == READY)
	//	to_chat(user, "<span class='warning'>chem grenade not completed</span>")
	//	return
	//if(istype(I, /obj/item/grenade))
	//	I.forceMove(src)
	//	BB = I
	//	complete = TRUE
	//return

