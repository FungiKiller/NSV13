/datum/job/cook
	title = "Cook"
	flag = COOK
	department_head = list("Executive Officer")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the Executive Officer"
	selection_color = "#bbe291"
	var/cooks = 0 //Counts cooks amount

	outfit = /datum/outfit/job/cook

	access = list(ACCESS_HYDROPONICS, ACCESS_BAR, ACCESS_KITCHEN, ACCESS_MORGUE, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_KITCHEN, ACCESS_MORGUE, ACCESS_MINERAL_STOREROOM)
	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_SRV

	display_order = JOB_DISPLAY_ORDER_COOK
	display_rank = "CRW" //Sephora - Displays the player's actual rank alongside their name, such as GSGT Sergei Koralev

/datum/outfit/job/cook
	name = "Cook"
	jobtype = /datum/job/cook

	belt = /obj/item/pda/cook
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/chef
	suit = /obj/item/clothing/suit/toggle/chef
	head = /obj/item/clothing/head/chefhat
	mask = /obj/item/clothing/mask/fakemoustache/italian
	backpack_contents = list(/obj/item/sharpener = 1)

/datum/outfit/job/cook/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	var/datum/job/cook/J = SSjob.GetJobType(jobtype)
	if(J) // Fix for runtime caused by invalid job being passed
		if(J.cooks>0)//Cooks
			suit = /obj/item/clothing/suit/apron/chef
			head = /obj/item/clothing/head/soft/mime
		if(!visualsOnly)
			J.cooks++

/datum/outfit/job/cook/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	var/list/possible_boxes = subtypesof(/obj/item/storage/box/ingredients)
	var/chosen_box = pick(possible_boxes)
	var/obj/item/storage/box/I = new chosen_box(src)
	H.equip_to_slot_or_del(I,SLOT_IN_BACKPACK)
	var/datum/martial_art/cqc/under_siege/justacook = new
	justacook.teach(H)

