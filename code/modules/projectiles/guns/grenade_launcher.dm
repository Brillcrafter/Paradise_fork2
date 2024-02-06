/obj/item/gun/projectile/grenadelauncher
	name = "grenade launcher"
	desc = "a terrible, terrible thing. it's really awful!"
	icon = 'icons/obj/guns/projectile.dmi'
	icon_state = "riotgun"
	item_state = "riotgun"
	w_class = WEIGHT_CLASS_BULKY
	throw_speed = 2
	throw_range = 10
	force = 5
//	var/list/grenades = new/list()
//	var/max_grenades = 3
	mag_type = /obj/item/ammo_box/magazine/internal/grenadelaunchercustom
	var/fired = FALSE

	materials = list(MAT_METAL=2000)
/obj/item/gun/projectile/grenadelauncher/process_chamber()
	return

/obj/item/gun/projectile/grenadelauncher/attack_self(mob/living/user)
	var/obj/item/ammo_casing/custom_grenade_casing = chambered
	if(!chambered)
		to_chat(user, "<span class='warning'>it is empty</span>")
		return
	custom_grenade_casing.BB = null
	custom_grenade_casing.loc = get_turf(src)
	custom_grenade_casing.SpinAnimation(10, 1)
	chambered = null
	to_chat(user, "<span class='notice'>You unload the round from \the [src]'s chamber.</span>")
	playsound(src, 'sound/weapons/gun_interactions/remove_bullet.ogg', 50, 1)
	update_icon()

//obj/item/ammo_casing/fire(atom/target, mob/living/user, params, distro, quiet, zone_override = "", spread, atom/firer_source_atom)

///obj/item/gun/grenadelauncher/examine(mob/user)
	//. = ..()
	//if(get_dist(user, src) <= 2)
		//. += "<span class='notice'>[grenades.len] / [max_grenades] grenades.</span>"

/obj/item/gun/projectile/grenadelauncher/attackby(obj/item/A as obj, mob/user as mob, params)
	. = ..()
	if (.)
		return
	var/num_loaded = magazine.attackby(A, user, params, 1)
	if(num_loaded)
		to_chat(user, "<span class='notice'>You load a grenade into the [src]!</span>")
		chamber_round()
	else
		to_chat(user, "<span class='warning'>The grenade launcher cannot hold more grenades.</span>")

//obj/item/gun/grenadelauncher/afterattack(obj/target, mob/user , flag)
//	if(target == user)
//return
//
	//if(grenades.len)
	//	fire_grenade(target,user)
	//else
	//	to_chat(user, "<span class='danger'>The grenade launcher is empty.</span>")

//obj/item/gun/grenadelauncher/proc/fire_grenade(atom/target, mob/user)
	//user.visible_message("<span class='danger'>[user] fired a grenade!</span>", \
						"<span class='danger'>You fire the grenade launcher!</span>")
	//var/obj/item/grenade/chem_grenade/F = grenades[1] //Now with less copypasta!
	//grenades -= F
	//F.loc = user.loc
	//F.throw_at(target, 30, 2, user)
	//message_admins("[key_name_admin(user)] fired a grenade ([F.name]) from a grenade launcher ([name]).")
	//log_game("[key_name(user)] fired a grenade ([F.name]) from a grenade launcher ([name]).")
	//F.active = TRUE
	//F.icon_state = initial(icon_state) + "_active"
	//playsound(user.loc, 'sound/weapons/armbomb.ogg', 75, 1, -3)
	//spawn(15)
		//F.prime()
