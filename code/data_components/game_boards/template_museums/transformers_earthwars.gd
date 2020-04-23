# objects are assumed to be 1x1 squares or 1/9th of a tile space
# objects lists of 2 itesms: model name and hp of object
# future work may include other sizes

#helper strings for the arrays
var char_path="theme_museum/Transformers_EarthWars/"
var outside_object_path=""
var hp=1000

var inside_objects=gen_inside_obj()
var outside_objects=inside_objects

func gen_inside_obj():
	var tmp=[]
	tmp.append([char_path+"Lugnut/Lugnut_1_Alt_x0",hp])
	tmp.append([char_path+"Lugnut/Lugnut_0_Body_x0",hp])
	tmp.append([char_path+"Vortex/Vortex_1_Vehicle_x0",hp])
	tmp.append([char_path+"Vortex/Vortex_1_Body_x0",hp])
	tmp.append([char_path+"Ratchet/Ratchet_1_Vehicle_x0",hp])
	tmp.append([char_path+"Ratchet/Ratchet_1_Body_x0",hp])
	tmp.append([char_path+"Goldfire/Goldfire_0_Body_x0",hp])
	tmp.append([char_path+"Goldfire/Goldfire_0_Alt_x0",hp])
	tmp.append([char_path+"RustDust/RustDust_1_Body_X0",hp])
	tmp.append([char_path+"RustDust/RustDust_1_vehicle_x0",hp])
	tmp.append([char_path+"Dinobot/Dinobot_0_Alt_x0",hp])
	tmp.append([char_path+"Dinobot/Dinobot_0_Body_x0",hp])
	tmp.append([char_path+"Skrapnel/Skrapnel_1_Body_x0",hp])
	tmp.append([char_path+"Skrapnel/Skrapnel_1_Vehicle_x0",hp])
	tmp.append([char_path+"AirRaid/Airraid_1_Vehicle_x0",hp])
	tmp.append([char_path+"AirRaid/Airraid_1_Body_x0",hp])
	tmp.append([char_path+"Mixmaster/Mixmaster_1_Vehicle_x0",hp])
	tmp.append([char_path+"Mixmaster/Mixmaster_1_Body_x0",hp])
	tmp.append([char_path+"Pipes/Pipes_1_Vehicle_x0",hp])
	tmp.append([char_path+"Pipes/Pipes_1_Body_x0",hp])
	tmp.append([char_path+"Slipstream/Slipstream_1_Vehicle_x0",hp])
	tmp.append([char_path+"Slipstream/Slipstream_1_Body_x0",hp])
	tmp.append([char_path+"RodimusUnicornus/rodimus_unicronus_0_body_x0",hp])
	tmp.append([char_path+"RodimusUnicornus/rodimus_unicronus_0_vehicle_x0",hp])
	tmp.append([char_path+"Sunstreaker/Sunstreaker_1_Body_x0",hp])
	tmp.append([char_path+"Sunstreaker/Sunstreaker_weapon_x0",hp])
	tmp.append([char_path+"Sunstreaker/Sunstreaker_1_Alt_x0",hp])
	tmp.append([char_path+"Jetfire/Jetfire_1_Body_x0",hp])
	tmp.append([char_path+"Jetfire/Jetfire_1_Vehicle_x0",hp])
	tmp.append([char_path+"Blot/Blot_0_Alt_x0",hp])
	tmp.append([char_path+"Blot/Blot_0_Body_x0",hp])
	tmp.append([char_path+"DeadEnd/DeadEnd_1_Vehicle_x0",hp])
	tmp.append([char_path+"DeadEnd/DeadEnd_1_Body_x0",hp])
	tmp.append([char_path+"Reflector/Reflectorb_Body_x0",hp])
	tmp.append([char_path+"Reflector/Reflectora_Body_x0",hp])
	tmp.append([char_path+"Abominus/Abominus",hp])
	tmp.append([char_path+"Abominus/Abominus2",hp])
	tmp.append([char_path+"Mirage/Mirage_Body_x0",hp])
	tmp.append([char_path+"Mirage/Mirage_1_Alt_x0",hp])
	tmp.append([char_path+"Sandstorm/Sandstorm_0_Body_x0",hp])
	tmp.append([char_path+"Sandstorm/Sandstorm_0_Alt2_x0",hp])
	tmp.append([char_path+"Sandstorm/Sandstorm_0_Alt1_x0",hp])
	tmp.append([char_path+"IronHide/Ironhide_1_Vehicle_x0",hp])
	tmp.append([char_path+"IronHide/Ironhide_1_Body_x0",hp])
	tmp.append([char_path+"Kup/kup_1_vehicle_x0",hp])
	tmp.append([char_path+"Kup/Kup_0_Body_x0",hp])
	tmp.append([char_path+"Offroad/offroad_1_vehicle_x0",hp])
	tmp.append([char_path+"Offroad/offroad_1_Body_x0",hp])
	tmp.append([char_path+"Motormaster/Motormaster_1_Vehicle_x0",hp])
	tmp.append([char_path+"Motormaster/Motormaster_0_Body_x0",hp])
	tmp.append([char_path+"CobraCommander/cobracommander",hp])
	tmp.append([char_path+"CobraCommander/cobracommander_gun",hp])
	tmp.append([char_path+"Optimus/Optimus_1_Body_x0",hp])
	tmp.append([char_path+"Optimus/Optimus_1_Vehicle_x0",hp])
	tmp.append([char_path+"Dragstrip/Dragstrip_1_Alt_x0",hp])
	tmp.append([char_path+"Dragstrip/Dragstrip_Body_x0",hp])
	tmp.append([char_path+"Laserbeak/Laserbeak_1_Body_x0",hp])
	tmp.append([char_path+"Slash/Slash_0_Body_x0",hp])
	tmp.append([char_path+"Slash/Slash_1_Alt_x0",hp])
	tmp.append([char_path+"Dinobot2/Dinobot2_0_Body_x0",hp])
	tmp.append([char_path+"Dinobot2/Dinobot2_0_Alt_x0",hp])
	tmp.append([char_path+"HeadStrong/HeadStrong_1_Body_x1",hp])
	tmp.append([char_path+"HeadStrong/HeadStrong_1_Body_x0",hp])
	tmp.append([char_path+"Hotspot/Hotspot_0_Body_x0",hp])
	tmp.append([char_path+"Hotspot/Hotspot_1_Vehicle_x0",hp])
	tmp.append([char_path+"Sinnertwin/Sinnertwin_0_Alt_x0",hp])
	tmp.append([char_path+"Sinnertwin/Sinnertwin_0_Body_x0",hp])
	tmp.append([char_path+"Razorclaw/Razorclaw_1_Body_x0",hp])
	tmp.append([char_path+"Razorclaw/Razorclaw_1_Alt_x0",hp])
	tmp.append([char_path+"Waspinator/Waspinator_0_Alt_x0",hp])
	tmp.append([char_path+"Waspinator/Waspinator_0_Body_x0",hp])
	tmp.append([char_path+"Bludgeon/Bludgeon_1_Body_x0",hp])
	tmp.append([char_path+"Bludgeon/Bludgeon_1_Alt_x0",hp])
	tmp.append([char_path+"Strafe/Strafe_1_Body_x0",hp])
	tmp.append([char_path+"Strafe/Strafe_1_Alt_x0",hp])
	tmp.append([char_path+"SkyBurst/Skyburst_1_Vehicle_x0",hp])
	tmp.append([char_path+"SkyBurst/Skyburst_1_Body_x0",hp])
	tmp.append([char_path+"Buzzsaw/Buzzsaw_1_Body_x0",hp])
	tmp.append([char_path+"NemesisPrime/NemesisPrime_1_Body_x0",hp])
	tmp.append([char_path+"NemesisPrime/NemesisPrime_1_Vehicle_x0",hp])
	tmp.append([char_path+"Grimlock/Grimlock_1_Vehicle_x0",hp])
	tmp.append([char_path+"Grimlock/Grimlock_1_Body_x0",hp])
	tmp.append([char_path+"Straxus/Straxus_0_Vehicle_x0",hp])
	tmp.append([char_path+"Straxus/Straxus_0_Body_x0",hp])
	tmp.append([char_path+"Ramhorn/Ramhorn_1_Body_x0",hp])
	tmp.append([char_path+"Arcee/Arcee_1_Body_x0",hp])
	tmp.append([char_path+"Arcee/Arcee_1_Vehicle_x0",hp])
	tmp.append([char_path+"Blaster/Blaster",hp])
	tmp.append([char_path+"Scourge/scourge_1_Vehicle_x0",hp])
	tmp.append([char_path+"Scourge/scourge_1_Body_x0",hp])
	tmp.append([char_path+"Galvatron/Galvatron_1_Alt_x0",hp])
	tmp.append([char_path+"Galvatron/Galvatron_1_Body_x0",hp])
	tmp.append([char_path+"Thundercracker/Thundecracker_1_Vehicle_x0",hp])
	tmp.append([char_path+"Thundercracker/Thundercracker_1_Body_x0",hp])
	tmp.append([char_path+"Smokescreen/Smokescreen_1_Body_x0",hp])
	tmp.append([char_path+"Smokescreen/Smokescreen_1_Vehicle_x0",hp])
	tmp.append([char_path+"BlastOff/BlastOff_1_Body_x0",hp])
	tmp.append([char_path+"BlastOff/BlastOff_1_Vehicle_x0",hp])
	tmp.append([char_path+"Slug/Slug_1_Body_x0",hp])
	tmp.append([char_path+"Slug/Slug_1_Alt_x0",hp])
	tmp.append([char_path+"Hound/Hound_1_Body_x0",hp])
	tmp.append([char_path+"Hound/Hound_1_Vehicle_x0",hp])
	tmp.append([char_path+"Rook/Rook_0_Alt_x0",hp])
	tmp.append([char_path+"Rook/Rook_0_Body_x0",hp])
	tmp.append([char_path+"Starsaber/Starsaber_0_Body_x0",hp])
	tmp.append([char_path+"Starsaber/Starsaber_0_Vehicle_x0",hp])
	tmp.append([char_path+"BoneCrusher/Bonecrusher_1_Body_x0",hp])
	tmp.append([char_path+"BoneCrusher/Bonecrusher_1_vehicle_x0",hp])
	tmp.append([char_path+"Prowl/Prowl_1_Body_x0",hp])
	tmp.append([char_path+"Prowl/Prowl_1_Vehicle_x0",hp])
	tmp.append([char_path+"BrakeNeck/brakeneck_1_Vehicle_x0",hp])
	tmp.append([char_path+"BrakeNeck/BrakeNeck_1_Body_x0",hp])
	tmp.append([char_path+"Bombshell/Bombshell_0_Body_x0",hp])
	tmp.append([char_path+"Bombshell/Bombshell_1_Vehicle_x0",hp])
	tmp.append([char_path+"Tracks/Tracks_0_Body_x0",hp])
	tmp.append([char_path+"Tracks/Tracks_1_Vehicle_x0",hp])
	tmp.append([char_path+"MegatronArmada/Megatron_1_Body_x0",hp])
	tmp.append([char_path+"MegatronArmada/Megatron_1_Vehicle_x0",hp])
	tmp.append([char_path+"SkywarpNightraven/Skywarp_Nightraven_0_Alt_x0",hp])
	tmp.append([char_path+"SkywarpNightraven/Skywarp_Nightraven_0_Body_x0",hp])
	tmp.append([char_path+"Springer/Springer_0_Alt2_x0",hp])
	tmp.append([char_path+"Springer/Springer_0_Body_x0",hp])
	tmp.append([char_path+"Springer/Springer_0_Alt1_x0",hp])
	tmp.append([char_path+"Jumpstream/jumpstream_1_Vehicle_x0",hp])
	tmp.append([char_path+"Jumpstream/Jumpstream_1_Body_x0",hp])
	tmp.append([char_path+"Eject/Eject_1_Body_x0",hp])
	tmp.append([char_path+"SnakeEyes/SnakeEyes_0_Body_x0",hp])
	tmp.append([char_path+"Onslaught/Onslaught_1_Vehicle_x0",hp])
	tmp.append([char_path+"Onslaught/Onslaught_1_Body_x0",hp])
	tmp.append([char_path+"Octopunch/Octopunch_0_Body_x0",hp])
	tmp.append([char_path+"Octopunch/Octopunch_vehicle_x0",hp])
	tmp.append([char_path+"Jazz/Jazz_1_Vehicle_x0",hp])
	tmp.append([char_path+"Jazz/Jazz_1_Body_x0",hp])
	tmp.append([char_path+"Blitzwing/Blitzwing_0_Body_x0",hp])
	tmp.append([char_path+"Blitzwing/Blitzwing_0_Tank_Vehicle_x0",hp])
	tmp.append([char_path+"Blitzwing/Blitzwing_0_Jet_Vehicle_x0",hp])
	tmp.append([char_path+"Sideswipe/Sideswipe_1_Body_x0",hp])
	tmp.append([char_path+"Sideswipe/Sideswipe_1_Alt_x0",hp])
	tmp.append([char_path+"Mindwipe/Mindwipe_0_Body_x0",hp])
	tmp.append([char_path+"Mindwipe/Mindwipe_1_Alt_x0",hp])
	tmp.append([char_path+"Hook/Hook_1_Body_x0",hp])
	tmp.append([char_path+"Hook/Hook_1_Vehicle_x0",hp])
	tmp.append([char_path+"Skywarp/Skywarp_1_Vehicle_x0",hp])
	tmp.append([char_path+"Skywarp/Skywarp_1_Body_x0",hp])
	tmp.append([char_path+"Snarl/Snarl_0_Body_x0",hp])
	tmp.append([char_path+"Snarl/Snarl_1_Alt_x0",hp])
	tmp.append([char_path+"Silverbolt/Silverbolt_1_Vehicle_x0",hp])
	tmp.append([char_path+"Silverbolt/Silverbolt_1_Body_x0",hp])
	tmp.append([char_path+"Drift/Drift_1_Vehicle_x0",hp])
	tmp.append([char_path+"Drift/Drift_0_Body_x0",hp])
	tmp.append([char_path+"SentiusMagnus/SentiusMagnus_0_Alt_x0",hp])
	tmp.append([char_path+"SentiusMagnus/SentiusMagnus_0_Body_x0",hp])
	tmp.append([char_path+"Scrapper/scrapper_1_Body_x0",hp])
	tmp.append([char_path+"Scrapper/Scrapper_1_Vehicle_x0",hp])
	tmp.append([char_path+"Cliffjumper/Cliffjumper_1_Vehicle_x0",hp])
	tmp.append([char_path+"Cliffjumper/Cliffjumper_1_Body_x0",hp])
	tmp.append([char_path+"SentiusMalus/sentiusmalus_0_Body_x0",hp])
	tmp.append([char_path+"SentiusMalus/sentiusmalus_0_Alt_x0",hp])
	tmp.append([char_path+"StormShadow/StormShadow",hp])
	tmp.append([char_path+"Rumble/Rumble",hp])
	tmp.append([char_path+"Brawl/Brawl_0_Body_x0",hp])
	tmp.append([char_path+"Brawl/Brawl_0_Vehicle_x0",hp])
	tmp.append([char_path+"Lockdown/Lockdown_0_Body_x0",hp])
	tmp.append([char_path+"Defensor/Defensor_Combiner_Body_x0",hp])
	tmp.append([char_path+"Barricade/Barricade_1_Alt_x0",hp])
	tmp.append([char_path+"Barricade/Barricade_1_Body_x0",hp])
	tmp.append([char_path+"MegatronTrex/Megatron_T_Rex_1_Body_x0",hp])
	tmp.append([char_path+"MegatronTrex/Megatron_T_Rex_0_Alt_x0",hp])
	tmp.append([char_path+"Starscream/Starscream_1_Body_x0",hp])
	tmp.append([char_path+"Starscream/Starscream_1_Vehicle_x0",hp])
	tmp.append([char_path+"Dustup/Dustup_1_Vehicle_x0",hp])
	tmp.append([char_path+"Dustup/Dustup_1_Body_x0",hp])
	tmp.append([char_path+"Scarlett/Scarlett_0_Body_x0",hp])
	tmp.append([char_path+"AlphaBravo/AlphaBavo_1_Body",hp])
	tmp.append([char_path+"AlphaBravo/AlphaBavo_1_Vehicle_x0",hp])
	tmp.append([char_path+"BumbleBee/Bumblebee_1_Body_x0",hp])
	tmp.append([char_path+"BumbleBee/BumbleBee",hp])
	tmp.append([char_path+"BumbleBee/BumbleBee_1_Vehicle_x0",hp])
	tmp.append([char_path+"Skydive/Skydive_1_Alt_x0",hp])
	tmp.append([char_path+"Skydive/Skydive_1_Body_x0",hp])
	tmp.append([char_path+"Scavenger/Scavenger_1_Vehicle_x0",hp])
	tmp.append([char_path+"Scavenger/Scavenger_1_Body_x0",hp])
	tmp.append([char_path+"Wheeljack/Wheeljack_1_Body_x0",hp])
	tmp.append([char_path+"Wheeljack/Wheeljack_1_Vehicle_x0",hp])
	tmp.append([char_path+"OptimusPrimal/OptimusPrimal_1_Body_x0",hp])
	tmp.append([char_path+"OptimusPrimal/OptimusPrimal_1_Alt_x0",hp])
	tmp.append([char_path+"Soundwave/Soundwave_1_Body_x0",hp])
	tmp.append([char_path+"Rippersnapper/Rippersnapper_0_Alt_x0",hp])
	tmp.append([char_path+"Rippersnapper/Rippersnapper_0_Body_x0",hp])
	tmp.append([char_path+"Inferno/Infernor_1_Vehicle_x0",hp])
	tmp.append([char_path+"Inferno/Inferno_0_Body_x0",hp])
	tmp.append([char_path+"Swindle/Swindle_1_Body_x0",hp])
	tmp.append([char_path+"Swindle/Swindle_1_Vehicle_x0",hp])
	tmp.append([char_path+"Viper/Viper_1_Body_x0",hp])
	tmp.append([char_path+"Viper/Viper_1_Vehicle_x0",hp])
	tmp.append([char_path+"LaserOptimusPrime/LaserOptimusPrime_0_Body_x0",hp])
	tmp.append([char_path+"LaserOptimusPrime/LaserOptimusPrime_1_Alt_x0",hp])
	tmp.append([char_path+"Warpath/Warpath_0_Alt_x0",hp])
	tmp.append([char_path+"Warpath/Warpath_0_Body_x0",hp])
	tmp.append([char_path+"SeaSpray/SeaSpray_Body_x0",hp])
	tmp.append([char_path+"SeaSpray/SeaSpray_1_vehicle_x0",hp])
	tmp.append([char_path+"Cheetor/Cheetor_0_Body_x0",hp])
	tmp.append([char_path+"Cheetor/Cheetor_0_Alt_x0",hp])
	tmp.append([char_path+"Sharkticon/Sharkticon_0_Alt_x0",hp])
	tmp.append([char_path+"Sharkticon/Sharkticon_0_Body_x0",hp])
	tmp.append([char_path+"Rhinox/Rhinox_0_Body_x0",hp])
	tmp.append([char_path+"Rhinox/Rhinox_0_Alt_x0",hp])
	tmp.append([char_path+"Tarantulas/Tarantulas_0_Body_x0",hp])
	tmp.append([char_path+"Tarantulas/Tarantulas_0_Alt_x0",hp])
	tmp.append([char_path+"Ultramagnus/Ultramagnus_1_Body_x0",hp])
	tmp.append([char_path+"Ultramagnus/Ultramagnus_1_Alt_x0",hp])
	tmp.append([char_path+"Rewind/Rewind_1_Body_x0",hp])
	tmp.append([char_path+"Skullsmasher/Skullsmasher_1_Alt_x0",hp])
	tmp.append([char_path+"Skullsmasher/Skullsmasher_0_Body_x0",hp])
	tmp.append([char_path+"SkyLynx/Skylynx_0_Body_x0",hp])
	tmp.append([char_path+"SkyLynx/Skylynx_0_Body_x1",hp])
	tmp.append([char_path+"Rodimus/Rodimus_0_Body_x0",hp])
	tmp.append([char_path+"Rodimus/Rodimus_0_Vehicle_x0",hp])
	tmp.append([char_path+"Astrotrain/Astrotrain_0_Body_x0",hp])
	tmp.append([char_path+"Astrotrain/Astrotrain_Jet_0_Vehicle_x0",hp])
	tmp.append([char_path+"Astrotrain/Astrotrain_Train_0_Vehicle_x0",hp])
	tmp.append([char_path+"Octone/Octone_0_Alt2_x0",hp])
	tmp.append([char_path+"Octone/Octone_0_Body_x0",hp])
	tmp.append([char_path+"Octone/Octone_0_Alt1_x0",hp])
	tmp.append([char_path+"Megatron/Megatron_1_Body_x0",hp])
	tmp.append([char_path+"Megatron/Megatron_1_Vehicle_x0",hp])
	tmp.append([char_path+"Blackarachnia/Blackarachnia_0_Body_x0",hp])
	tmp.append([char_path+"Blackarachnia/Blackarachnia_0_Alt_x0",hp])
	tmp.append([char_path+"WindBlade/WindBlade_1_Body_x0",hp])
	tmp.append([char_path+"WindBlade/WindBlade_1_Vehicle_x0",hp])
	tmp.append([char_path+"Rampage/Rampage_1_Body_x0",hp])
	tmp.append([char_path+"Rampage/Rampage_1_vehicle_x0",hp])
	tmp.append([char_path+"Duke/Duke_Body_x0",hp])
	tmp.append([char_path+"Blades/Blades_0_Body_x0",hp])
	tmp.append([char_path+"PyraMagna/PyraMagna_1_Body_x0",hp])
	tmp.append([char_path+"PyraMagna/PyraMagna_1_Vehicle_x0",hp])
	tmp.append([char_path+"Divebomb/Divebomb_1_Alt_x0",hp])
	tmp.append([char_path+"Divebomb/Divebomb_1_Body_x0",hp])
	tmp.append([char_path+"CybStarscream/CybStarscream_0_Alt_x0",hp])
	tmp.append([char_path+"CybStarscream/CybStarscream_0_Body_x0",hp])
	tmp.append([char_path+"Cosmos/cosmos_0_Alt_x0",hp])
	tmp.append([char_path+"Cosmos/Cosmos_0_Body_x0",hp])
	tmp.append([char_path+"FirstAid/FirstAid_1_Vehicle_x0",hp])
	tmp.append([char_path+"FirstAid/FirstAid_1_Body_x0",hp])
	tmp.append([char_path+"Tantrum/Tantrum_1_Body_X0",hp])
	tmp.append([char_path+"Tantrum/Tantrum_1_Vehicle_x0",hp])
	tmp.append([char_path+"Baroness/Baroness_0_Body_x0",hp])
	tmp.append([char_path+"SoundwaveHisstank/Soundwave_hisstank_0_Body_x0",hp])
	tmp.append([char_path+"SoundwaveHisstank/Soundwave_hisstank_0_Alt_x0",hp])
	tmp.append([char_path+"Firefly/Firefly_Vehicle_x0",hp])
	tmp.append([char_path+"Firefly/Firefly_1_Body_x0",hp])
	tmp.append([char_path+"Tigerhawk/Tigerhawk_0_Alt_x0",hp])
	tmp.append([char_path+"Tigerhawk/Tigerhawk_0_Body_x0",hp])
	tmp.append([char_path+"Powerglide/Powerglide_1_Body_x0",hp])
	tmp.append([char_path+"Powerglide/Powerglide_1_Vehicle_x0",hp])
	tmp.append([char_path+"Streetwise/Streetwise_0_Body_x0",hp])
	tmp.append([char_path+"Streetwise/Streetwise_0_Alt_x0",hp])
	tmp.append([char_path+"StormClash/StormClash_1_Body_x0",hp])
	tmp.append([char_path+"StormClash/StormClash_1_Vechile_x0",hp])
	tmp.append([char_path+"Ramjet/Ramjet_0_Vehicle_x0",hp])
	tmp.append([char_path+"Ramjet/Ramjet_0_Body_x0",hp])
	tmp.append([char_path+"Huffer/Huffer_1_Vehicle_x0",hp])
	tmp.append([char_path+"Huffer/Huffer_1_Body_x0",hp])
	tmp.append([char_path+"RodimusPrime/RodimusPrime_0_Body_x0",hp])
	tmp.append([char_path+"RodimusPrime/RodimusPrime_1_Vehicle_x0",hp])
	tmp.append([char_path+"Kickback/Kickback_1_Vehicle_x0",hp])
	tmp.append([char_path+"Kickback/Kickback_1_Body_x0",hp])
	tmp.append([char_path+"LongHaul/LongHaul_1_Body_x0",hp])
	tmp.append([char_path+"LongHaul/LongHaul_1_Vehicle_x0",hp])
	tmp.append([char_path+"Breakdown/Breakdown_1_Body_x0",hp])
	tmp.append([char_path+"Breakdown/Breakdown_weapon_x0",hp])
	tmp.append([char_path+"Breakdown/Breakdown_1_Vehicle_x0",hp])
	tmp.append([char_path+"Shockwave/Shockwave_1_Body_x0",hp])
	tmp.append([char_path+"Cyclonus/Cyclonus_1_Vehicle_x0",hp])
	tmp.append([char_path+"Cyclonus/Cyclonus_0_Body_x0",hp])
	tmp.append([char_path+"JetfireSkystriker/Jetfire_Skystriker_0_Body_x0",hp])
	tmp.append([char_path+"JetfireSkystriker/Jetfire_Skystriker_0_Alt_x0",hp])
	tmp.append([char_path+"HunGurrr/HunGurrr_1_Body_x0",hp])
	tmp.append([char_path+"HunGurrr/HunGurrr_0_Alt_x0",hp])
	tmp.append([char_path+"Perceptor/Perceptor_0_Body_x0",hp])
	tmp.append([char_path+"Perceptor/Perceptor_0_Vehicle_x0",hp])
	tmp.append([char_path+"Slog/Slog_1_Body_x0",hp])
	tmp.append([char_path+"Slog/Slog_0_Alt_x0",hp])
	tmp.append([char_path+"HoundVamp/Hound_Vamp_0_Alt_x0",hp])
	tmp.append([char_path+"HoundVamp/Hound_Vamp_0_Body_x0",hp])
	tmp.append([char_path+"Cutthroat/Cutthroat_0_Body_x0",hp])
	tmp.append([char_path+"Cutthroat/Cutthroat_0_Alt_x0",hp])
	tmp.append([char_path+"Nightbird/Nightbird_0_Body_x0",hp])
	tmp.append([char_path+"Nightbird/Nightbird_1_Vehicle_x0",hp])
	tmp.append([char_path+"Impactor/Impactor_0_Alt_x0",hp])
	tmp.append([char_path+"Impactor/Impactor_0_Body_x0",hp])
	tmp.append([char_path+"Elita1/Elita1_0_Body_x0",hp])
	tmp.append([char_path+"Elita1/Elita1_1_Alt_x0",hp])
	tmp.append([char_path+"Cybertronjetfire/Jetfire_0_Body_x0",hp])
	tmp.append([char_path+"Cybertronjetfire/Jetfire_0_Alt_x0",hp])
	return tmp


# saturation is the number of objects to place in a single tile, 1,2, or 3
var saturation=3
# level object count is the number of rows and columns that will have objects 
# on them - 1 to 60, should be based on object count, and how many repeats 
# there should be.
var level_object_count=30