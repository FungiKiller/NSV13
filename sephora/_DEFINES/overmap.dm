//Weapon modes

#define FIRE_MODE_PDC 1
#define FIRE_MODE_RAILGUN 2
#define FIRE_MODE_TORPEDO 3

//AI behaviour

#define AI_AGGRESSIVE 1
#define AI_PASSIVE 2
#define AI_RETALIATE 3
#define AI_GUARD 4

#define isovermap(A) (istype(A, /obj/structure/overmap))

GLOBAL_LIST_INIT(overmap_objects, list())
GLOBAL_LIST_INIT(overmap_impact_sounds, list('sephora/sound/effects/ship/freespace2/impacts/boom_1.wav','sephora/sound/effects/ship/freespace2/impacts/boom_2.wav','sephora/sound/effects/ship/freespace2/impacts/boom_3.wav','sephora/sound/effects/ship/freespace2/impacts/boom_4.wav','sephora/sound/effects/ship/freespace2/impacts/m_hit.wav','sephora/sound/effects/ship/freespace2/impacts/subhit.wav','sephora/sound/effects/ship/freespace2/impacts/subhit2.wav','sephora/sound/effects/ship/damage/consolehit.ogg','sephora/sound/effects/ship/damage/consolehit2.ogg','sephora/sound/effects/ship/damage/consolehit3.ogg','sephora/sound/effects/ship/damage/consolehit4.ogg','sephora/sound/effects/ship/damage/shiphit.ogg','sephora/sound/effects/ship/damage/shiphit2.ogg','sephora/sound/effects/ship/damage/shiphit3.ogg','sephora/sound/effects/ship/damage/shiphit4.ogg','sephora/sound/effects/ship/damage/torpedo_hit.ogg','sephora/sound/effects/ship/damage/explosionfar_2.ogg','sephora/sound/effects/ship/damage/explosionfar_3.ogg','sephora/sound/effects/ship/damage/explosionfar_4.ogg','sephora/sound/effects/ship/damage/explosionfar_5.ogg','sephora/sound/effects/ship/damage/explosionfar_6.ogg'))