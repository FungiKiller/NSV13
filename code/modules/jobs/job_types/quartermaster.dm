/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department_head = list("Executive Officer")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Executive Officer"
	selection_color = "#d7b088"

	outfit = /datum/outfit/job/quartermaster

	access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_CARGO, ACCESS_QM, ACCESS_MINING, ACCESS_MECH_MINING, ACCESS_MINING_STATION, ACCESS_MINERAL_STOREROOM, ACCESS_VAULT)
	minimal_access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_CARGO, ACCESS_QM, ACCESS_MINING, ACCESS_MECH_MINING, ACCESS_MINING_STATION, ACCESS_MINERAL_STOREROOM, ACCESS_VAULT)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_CAR

	display_order = JOB_DISPLAY_ORDER_QUARTERMASTER
	display_rank = "GSGT" //Sephora - Displays the player's actual rank alongside their name, such as GSGT Sergei Koralev

/datum/outfit/job/quartermaster
	name = "Quartermaster"
	jobtype = /datum/job/qm

	belt = /obj/item/pda/quartermaster
	ears = /obj/item/radio/headset/headset_cargo
	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/sneakers/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/clipboard

	chameleon_extras = /obj/item/stamp/qm

