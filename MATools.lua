script_name("MATools")
script_author("deffix | Denis_Mansory")
script_properties("work-in-pause")
script_description("For MordorRP Admins'")
require("lib.sampfuncs")
require("lib.moonloader")

local var_0_0 = require("moonloader").download_status
local var_0_1 = require("mimgui")
local var_0_2 = require("ffi")
local var_0_3 = require("inicfg")
local var_0_4 = require("dkjson")
local var_0_5 = require("memory")
local var_0_6 = require("matrix3x3")
local var_0_7 = require("vector3d")
local var_0_8 = require("fAwesome6")
local var_0_9 = require("lib.samp.events")
local var_0_10 = require("lib.windows.message")
local var_0_11 = require("vkeys")
local var_0_12 = require("effil")
local var_0_13 = require("encoding")

var_0_13.default = "CP1251"

local var_0_14 = var_0_13.UTF8
local var_0_15 = var_0_1.new
local var_0_16 = "{FF66FF}[MATools]: {FFFFFF}"
local var_0_17 = "..//MATools//MATools.ini"
local var_0_18 = var_0_3.load(var_0_3.load({
	settings = {
		off_mat_notes = true,
		wallhack_skelet = true,
		fisheye = false,
		playerchecker = false,
		infopanel_answers_day = false,
		playerchecker_exit_uved = true,
		driveoffengine = false,
		monitoring_timestamp = true,
		playerchecker_vhod_uved = true,
		help_spec = true,
		far_chat_timestamp = true,
		check_myadmstats = true,
		autoopenrep = false,
		fast_fire = false,
		monitoring = false,
		clickwarp = false,
		off_mat_adminchecker = true,
		offforms = false,
		accent = false,
		autocheckrep = true,
		far_chat_fontsize = 15,
		reportplusplus = true,
		custom_report_window = true,
		what_accent = "",
		off_mat_cheats = true,
		obj_wh_all = true,
		infopanel_showdate = true,
		gm_wheel = false,
		fast_exit = false,
		custom_color_ans_chat_admins = false,
		antistan = false,
		collision = false,
		far_chat = false,
		custom_color_answerrep_chat = false,
		collision_players = false,
		btns_spec = true,
		tank_mode = false,
		nosurf = false,
		custom_color_answerask_chat = false,
		strob_speed = 111,
		collision_objects = false,
		autoacceptform = false,
		invis = false,
		open_mat_bind = true,
		wait_offline = 100,
		nitro = false,
		obj_wh_conditions = false,
		custom_color_a_chat = false,
		speedhack = false,
		infopanel = false,
		obj_wh_all_ignore = false,
		infopanel_showtime_info = true,
		infopanel_showtime = true,
		obj_wh_radius = false,
		fast_run = false,
		auto_start_wallhack = false,
		password = "",
		off_mat_traisers = true,
		adminchecker = false,
		infopanel_showtime_seconds = true,
		custom_color_hc_chat = false,
		skip_tp = true,
		fontsize_checker_players = 15,
		mega_jump = false,
		wallhack_line = true,
		obj_wh_line = false,
		off_mat_far_chat = true,
		custom_spec = true,
		off_mat_playerchecker = true,
		fontsize_checker_admins = 15,
		pincode = "",
		collision_vehs = false,
		custom_color_ans_chat = false,
		infopanel_dateformat_x = false,
		gm_ped = false,
		infopanel_kvadrat = false,
		infopanel_online_session = true,
		driveunderwater = false,
		wallhack = false,
		obj_wh = false,
		infopanel_online_day = true,
		autolovlya = false,
		monitoring_lines = 20,
		flycar = false,
		gm_car = false,
		infopanel_afk_session = true,
		infopanel_obvodka = true,
		infopanel_answers_session = true,
		strobes = false,
		infopanel_showweekday = true,
		radius_obj_wh = 100,
		obj_wh_conditions_show_name = true,
		airbrake = false,
		off_mat_forms = true,
		infinity_ammo = false,
		infopanel_zone = false,
		infopanel_direction = false,
		traisers = false,
		far_chat_lines = 10,
		off_mat_monitoring = true,
		airbrake_clear = false,
		alogin = "",
		infopanel_active_reps = true,
		autologin = false,
		autoopenar = true,
		monitoring_fontsize = 15,
		custom_color_ans_chat_helpers = false,
		infopanel_dateformat_daymounth = true,
		infopanel_afk_day = true,
		anti_eject = false,
		nospread = false,
		wallhack_kvadrat = true,
		nobike = false,
		off_mat_infpanel = true,
		info_rep = true,
		only_b = false
	},
	binds = {
		open_mat = encodeJson({
			VK_CONTROL,
			VK_M
		}),
		bind_off_mat = encodeJson({
			VK_CONTROL,
			VK_P
		}),
		bind_ar = encodeJson({
			VK_Q
		}),
		bind_startstop_autolovlya = encodeJson({
			VK_CONTROL,
			VK_J
		}),
		bind_acceptform = encodeJson({
			VK_O
		}),
		bind_rejectform = encodeJson({
			VK_P
		}),
		bind_againform = encodeJson({
			VK_CONTROL,
			VK_O
		}),
		bind_airbrake = encodeJson({}),
		bind_wallhack = encodeJson({
			VK_L
		}),
		bind_obj_wh = encodeJson({
			VK_K
		}),
		bind_invis = encodeJson({
			VK_I
		}),
		bind_strobes = encodeJson({
			VK_B
		}),
		bind_collision = encodeJson({
			VK_CONTROL,
			VK_C
		}),
		bind_fast_exit = encodeJson({
			VK_X
		}),
		bind_nitro = encodeJson({
			VK_CONTROL,
			VK_L
		})
	},
	posXY = {
		spechelp_y = 800,
		adminchecker_x = 150,
		specinfo_y = 800,
		far_chat_x = 700,
		autolovlya_y = 400,
		playerchecker_x = 110,
		specinfo_x = 700,
		autolovlya_x = 120,
		specbtns_y = 550,
		infopanel_x = 500,
		forms_x = 500,
		monitoring_x = 500,
		adminchecker_y = 200,
		specbtns_x = 500,
		playerchecker_y = 400,
		monitoring_y = 500,
		infopanel_y = 500,
		spechelp_x = 700,
		far_chat_y = 555,
		forms_y = 750
	},
	color_editor = {
		clr_monitoring_join = 4294902015,
		clr_monitoring_quit0 = 4294902015,
		clr_monitoring = 4294967280,
		clr_far_chat = 4294967280,
		wh_skelet_color = 4294901760,
		alvl2 = 4294963200,
		clr_infopanel = 4294901760,
		clr_monitoring_quit1 = 4294967295,
		wh_line_color = 4294901760,
		ans_chat_color_admins = 4294901760,
		clr_admins_online = 4294967280,
		obj_wh_line_color = 4294901760,
		clr_players_online = 4294967280,
		obj_wh_text_color = 4294967295,
		alvl3 = 4294967040,
		alvl1 = 4294901760,
		alvl4 = 4293918720,
		answerask_chat_color = 4294901760,
		alvl5 = 4278190080,
		a_chat_color = 4294901760,
		alvlyt = 4294901760,
		clr_monitoring_quit2 = 4278190335,
		clr_afk = 4294963200,
		ans_chat_color_helpers = 4294901760,
		clr_spec = 4294963200,
		hc_chat_color = 4294901760,
		answerrep_chat_color = 4294901760,
		wh_kvadrat_color = 4294901760
	},
	online_info = {
		day_online = 0,
		day_afk = 0,
		answers_day = 0,
		today = os.date("%a")
	},
	cheats = {
		fisheye = 105,
		fast_fire = 1,
		x_jump = 1,
		speedhack_speed = 3,
		fast_run = 1,
		z_jump = 1,
		airbrake_speed = 1.5
	},
	forms = {
		forms_warn = 2,
		forms_areanimate = 2,
		forms_soffban = 2,
		forms_spawn = 2,
		forms_unfreeze = 2,
		forms_unmute = 2,
		forms_unban = 2,
		forms_auninvite = 2,
		forms_offprison = 2,
		forms_alldelv = 2,
		forms_freeze = 2,
		forms_jail = 2,
		forms_unjail = 2,
		forms_unbgun = 2,
		forms_offunmute = 2,
		forms_unwarn = 2,
		forms_ban = 2,
		forms_mute = 2,
		forms_tempskin = 2,
		forms_msg = 2,
		forms_givecupon = 2,
		forms_offwarn = 2,
		forms_vcmute = 2,
		forms_offjail = 2,
		forms_offban = 2,
		forms_pveh = 2,
		forms_offunjail = 2,
		forms_kick = 2,
		forms_offunwarn = 2,
		forms_offmute = 2,
		forms_sethp = 2,
		forms_offunprison = 2,
		forms_hc = 2,
		forms_prison = 2,
		forms_bgun = 2,
		forms_vcunmute = 2,
		forms_slap = 2,
		forms_unprison = 2,
		forms_fuelvehs = 2
	},
	my_bullets = {
		transition = 0.2,
		timer = 3,
		draw = true,
		col_vec4_unknown = 4278190080,
		col_vec4_dynam = 4293918720,
		degree_polygon = 15,
		draw_polygon = true,
		col_vec4_ped = 4294963200,
		col_vec4_stats = 4294901760,
		circle_radius = 4,
		step_alpha = 0.01,
		col_vec4_car = 4294967040,
		thickness = 1.4
	},
	other_bullets = {
		transition = 0.2,
		timer = 3,
		draw = true,
		col_vec4_unknown = 4278190080,
		col_vec4_dynam = 4293918720,
		degree_polygon = 15,
		draw_polygon = true,
		col_vec4_ped = 4294963200,
		col_vec4_stats = 4294901760,
		circle_radius = 4,
		step_alpha = 0.01,
		col_vec4_car = 4294967040,
		thickness = 1.4
	},
	rep_btns = {
		btn_1 = var_0_14("Уважаемый игрок, начинаю работать по Вашей жалобе."),
		btn_2 = var_0_14("Уважаемый игрок, сейчас попробую Вам помочь."),
		btn_3 = var_0_14("Уважаемый игрок, сейчас попробую Вам помочь."),
		btn_4 = var_0_14("Уважаемый игрок, оформите жалобу на форуме(( /mordor -> Форум ))")
	},
	active_binders = {},
	active_objects = {},
	ignore_objects = {}
}, var_0_17))

var_0_3.save(var_0_18, var_0_17)

local var_0_19 = {
	v = decodeJson("[]")
}
local var_0_20 = {
	v = decodeJson("[]")
}
local var_0_21 = {
	bind_off_mat = {
		v = decodeJson(var_0_18.binds.bind_off_mat)
	},
	bind_wallhack = {
		v = decodeJson(var_0_18.binds.bind_wallhack)
	},
	bind_obj_wh = {
		v = decodeJson(var_0_18.binds.bind_obj_wh)
	},
	bind_airbrake = {
		v = decodeJson(var_0_18.binds.bind_airbrake)
	},
	bind_invis = {
		v = decodeJson(var_0_18.binds.bind_invis)
	},
	bind_collision = {
		v = decodeJson(var_0_18.binds.bind_collision)
	},
	bind_fast_exit = {
		v = decodeJson(var_0_18.binds.bind_fast_exit)
	},
	bind_nitro = {
		v = decodeJson(var_0_18.binds.bind_nitro)
	},
	bind_strobes = {
		v = decodeJson(var_0_18.binds.bind_strobes)
	},
	bind_acceptform = {
		v = decodeJson(var_0_18.binds.bind_acceptform)
	},
	bind_rejectform = {
		v = decodeJson(var_0_18.binds.bind_rejectform)
	},
	bind_againform = {
		v = decodeJson(var_0_18.binds.bind_againform)
	},
	open_mat = {
		v = decodeJson(var_0_18.binds.open_mat)
	},
	bind_ar = {
		v = decodeJson(var_0_18.binds.bind_ar)
	},
	bind_startstop_autolovlya = {
		v = decodeJson(var_0_18.binds.bind_startstop_autolovlya)
	}
}
local var_0_22 = {
	[577] = "AT-400",
	[15640] = "Toyota Supra A80",
	[581] = "BF-400",
	[15623] = "Lamborgini Urus",
	[3144] = "Mercedes-Benz SLR McLaren",
	[15618] = "Nissan Skyline X R34",
	[589] = "Club",
	[15614] = "Toyota Mark II",
	[593] = "Dodo",
	[1206] = "Ferrari F430",
	[597] = "PoliceCar SF",
	[15610] = "Неизвестно",
	[15605] = "Ford Mustang 1969",
	[15608] = "Mercedes Benz W140",
	[605] = "SadlerShit",
	[5101] = "Bugatti Divo",
	[609] = "Boxville",
	[15638] = "Mazda RX8",
	[462] = "Faggio",
	[554] = "Yosemite",
	[456] = "Yankee",
	[572] = "Mower",
	[458] = "Solair",
	[571] = "Kart",
	[452] = "Speeder",
	[15612] = "Chevrolet Corvette ZR1",
	[454] = "Tropic",
	[448] = "Pizzaboy",
	[15603] = "Police Car Sheriff",
	[555] = "Windsor",
	[450] = "Trailer",
	[575] = "Broadway",
	[573] = "Dune",
	[15636] = "Honda S2000",
	[567] = "Savanna",
	[563] = "Raindance",
	[561] = "Stratum",
	[559] = "Jester",
	[557] = "Monster",
	[553] = "Nevada",
	[551] = "Merit",
	[569] = "FreightFlat",
	[15667] = "Mitsubishi Lancer ES",
	[585] = "Emperor",
	[15601] = "BMW M1",
	[15615] = "Mercedes Benz G500",
	[455] = "Flatbed",
	[601] = "S.W.A.T Tank",
	[15620] = "Bentley Continental GT",
	[556] = "Monster",
	[540] = "Vincent",
	[463] = "Freeway",
	[460] = "Skimmer",
	[461] = "PCJ-600",
	[466] = "Glendale",
	[467] = "Oceanic",
	[464] = "RCBaron",
	[465] = "RCRaider",
	[15665] = "Toyota Camry 30",
	[471] = "Quad",
	[468] = "Sanchez",
	[469] = "Sparrow",
	[474] = "Hermes",
	[475] = "Sabre",
	[472] = "Coastguard",
	[15632] = "Jeep Willys MB",
	[473] = "Dinghy",
	[568] = "Bandito",
	[478] = "Walton",
	[564] = "RCTiger",
	[479] = "Regina",
	[560] = "Sultan",
	[476] = "Rustler",
	[1205] = "Dodge Viper",
	[15639] = "Mazda RX7",
	[552] = "Utility",
	[565] = "Flash",
	[548] = "Cargobob",
	[15642] = "Yamaha R6 2017",
	[544] = "Firetruck",
	[15646] = "STRETCH",
	[15630] = "Mercedes Benz 300 SL",
	[15652] = "Skoda Octavia A7",
	[536] = "Blade",
	[15664] = "BMW M3 GTR",
	[532] = "Combine",
	[470] = "Patriot",
	[528] = "FBITruck",
	[549] = "Tampa",
	[524] = "CementTruck",
	[15661] = "Magnum Opus",
	[520] = "hydra",
	[15669] = "Party Bus 1",
	[516] = "Nebula",
	[512] = "Cropduster",
	[15692] = "Pagani Zonda",
	[15674] = "Lamborghini Veneno",
	[15628] = "Bentley Turbo R",
	[15676] = "Lamborghini Chiron",
	[15678] = "Porsche 911 Carrera",
	[15682] = "BMW M4 G82",
	[15683] = "Porsche Carrera GT",
	[15684] = "Lamborghini Centenario",
	[15687] = "BMW E34",
	[15671] = "Toyota Camry 3.5",
	[15659] = "Chevrolet Impala",
	[15690] = "LaFerrari",
	[15626] = "Toyota Crown XI S170",
	[15657] = "Ecto 1",
	[15688] = "Ford Raptor",
	[576] = "Tornado",
	[15624] = "Pontiac GTO",
	[580] = "Stafford",
	[584] = "Trailer",
	[3140] = "Mercedes-Maybach Vision 6",
	[588] = "Hotdog",
	[592] = "Andromada",
	[596] = "PoliceCar LS",
	[600] = "Picador",
	[604] = "GlendaleShit",
	[15686] = "Rolls-Royce Cullinan",
	[608] = "Stairs",
	[15622] = "Lincoln Town Car II",
	[15653] = "BMW M4",
	[445] = "Admiral",
	[447] = "Seasparrow",
	[441] = "RCBandit",
	[443] = "Packer",
	[437] = "Coach",
	[439] = "Stallion",
	[15651] = "Mercedes Benz Maybach S650",
	[433] = "Barracks",
	[435] = "Trailer",
	[429] = "Banshee",
	[431] = "Bus",
	[425] = "Hunter",
	[427] = "Enforcer",
	[421] = "Washington",
	[423] = "Whoopee",
	[15649] = "Nissan 300ZX",
	[417] = "Leviathan",
	[419] = "Esperanto",
	[411] = "Infernus",
	[15680] = "Audi R8",
	[409] = "Stretch",
	[15616] = "Chevrolet Corvette C8",
	[415] = "Cheetah",
	[413] = "Pony",
	[403] = "Linerunner",
	[401] = "Bravura",
	[15647] = "BANANA",
	[407] = "Firetruck",
	[405] = "Sentinel",
	[547] = "Primo",
	[543] = "Sadler",
	[539] = "Vortex",
	[535] = "Slamvan",
	[531] = "Tractor",
	[527] = "Cadrona",
	[15645] = "Mercedes Benz CLS 63 AMG",
	[523] = "HPV1000",
	[519] = "Shamal",
	[515] = "Roadtrain",
	[511] = "Beagle",
	[509] = "Bike",
	[507] = "Elegant",
	[505] = "Rancher",
	[503] = "HotringRacerB",
	[501] = "RCGoblin",
	[499] = "Benson",
	[497] = "PoliceMaverick",
	[495] = "Sandking",
	[493] = "Jetmax",
	[491] = "Virgo",
	[489] = "Rancher",
	[487] = "Maverick",
	[15641] = "Toyota Supra A90",
	[485] = "Baggage",
	[483] = "Camper",
	[481] = "BMX",
	[477] = "ZR-350",
	[579] = "Huntley",
	[15672] = "Mitsubishi Lancer Evo X",
	[583] = "Tug",
	[15606] = "Ford Shelby GT500",
	[587] = "Euros",
	[591] = "Trailer",
	[595] = "Launch",
	[599] = "PoliceRanger",
	[603] = "Phoenix",
	[607] = "Luggage B",
	[611] = "UtilityTrailer",
	[15670] = "Party Bus 2",
	[457] = "Caddy",
	[15604] = "DeLorean",
	[459] = "Berkley's RC Van",
	[453] = "Reefer",
	[15637] = "Nissan GTR 35",
	[449] = "Tram",
	[451] = "Turismo",
	[15668] = "Фургон Coca-Cola",
	[15602] = "Dodge Challenger",
	[15635] = "Mercedes Benz GT 63S",
	[15666] = "Toyota Land Cruiser",
	[15600] = "Mitsubishi Starion",
	[15633] = "Ford Explorer 5",
	[574] = "Sweeper",
	[570] = "StreakCarriage",
	[566] = "Tahoma",
	[562] = "Elegy",
	[558] = "Uranus",
	[15631] = "Nissan 350Z",
	[1699] = "Ford GT",
	[550] = "Sunrise",
	[546] = "Intruder",
	[542] = "Clover",
	[538] = "Streak",
	[534] = "Remington",
	[530] = "Forklift",
	[15693] = "Buzzard",
	[526] = "Fortune",
	[15629] = "Morgan Aero 7",
	[522] = "NRG-500",
	[518] = "Buccaneer",
	[514] = "Tanker",
	[15660] = "Ferrari Enzo",
	[15691] = "BMW M5 F90",
	[15627] = "Aston Martin DB4GT",
	[15658] = "Metal Grinder",
	[15689] = "Lamborghini Huracan",
	[15625] = "Ford RS200",
	[578] = "DFT-30",
	[15656] = "The Mystery Machine",
	[582] = "NewsVan",
	[586] = "Wayfarer",
	[590] = "FreightBox",
	[594] = "RCCam",
	[598] = "PoliceCar LV",
	[602] = "Alpha",
	[606] = "Luggage A",
	[610] = "Tiller",
	[15654] = "Audi 80",
	[15685] = "Dodge Charger SRT",
	[15621] = "Cadillac Eldorado",
	[444] = "Monster",
	[446] = "Squalo",
	[440] = "Rumpo",
	[442] = "Romero",
	[436] = "Previon",
	[1326] = "Ferrari FXX K",
	[438] = "Cabbie",
	[15619] = "OldsMob Cruiser 89",
	[432] = "Rhino",
	[434] = "Hotknife",
	[428] = "Securicar",
	[430] = "Predator",
	[424] = "BFInjection",
	[426] = "Premier",
	[420] = "Taxi",
	[15681] = "Mercedes Benz G6x6",
	[422] = "Bobcat",
	[15617] = "BMW E38 750I",
	[416] = "Ambulance",
	[418] = "Moonbeam",
	[410] = "Manana",
	[408] = "Trashmaster",
	[15648] = "Bentley Continental GTC",
	[414] = "Mule",
	[412] = "Voodoo",
	[402] = "Buffalo",
	[400] = "Landstalker",
	[15679] = "Koenigsegg Agera",
	[406] = "Dumper",
	[15613] = "Lampadati Magnus",
	[404] = "Perrenial",
	[545] = "Hustler",
	[541] = "Bullet",
	[537] = "Freight",
	[533] = "Feltzer",
	[529] = "Willard",
	[525] = "TowTruck",
	[15677] = "Lamborghini Veyron",
	[521] = "FCR-900",
	[15611] = "Chevrolet Caprice",
	[517] = "Majestic",
	[513] = "Stunt",
	[510] = "MountainBike",
	[508] = "Journey",
	[506] = "SuperGT",
	[504] = "BloodringBanger",
	[502] = "HotringRacerA",
	[500] = "Mesa",
	[15675] = "BMW X6",
	[498] = "Boxvillde",
	[496] = "BlistaCompact",
	[494] = "Hotring",
	[492] = "Greenwood",
	[490] = "FBIRancher",
	[488] = "NewsChopper",
	[486] = "Dozer",
	[484] = "Marquis",
	[15673] = "Сосновый Вор",
	[482] = "Burrito",
	[15607] = "Jeep Wrangler",
	[480] = "Comet"
}
local var_0_23 = {
	[0] = "Fist",
	"Brass Knuckles",
	"Golf Club",
	"Nightstick",
	"Knife",
	"Baseball Bat",
	"Shovel",
	"Pool Cue",
	"Katana",
	"Chainsaw",
	"Purple Dildo",
	"Dildo",
	"Vibrator",
	"Silver Vibrator",
	"Flowers",
	"Cane",
	"Grenade",
	"Tear Gas",
	"Molotov Cocktail",
	nil,
	nil,
	nil,
	"9mm",
	"Silenced 9mm",
	"Desert Eagle",
	"Shotgun",
	"Sawnoff Shotgun",
	"Combat Shotgun",
	"Micro SMG/Uzi",
	"MP5",
	"AK-47",
	"M4",
	"Tec-9",
	"Country Rifle",
	"Sniper Rifle",
	"RPG",
	"HS Rocket",
	"Flamethrower",
	"Minigun",
	"Satchel Charge",
	"Detonator",
	"Spraycan",
	"Fire Extinguisher",
	"Camera",
	"Night Vis Goggles",
	"Thermal Goggles",
	"Parachute"
}
local var_0_24 = {
	{
		name = "esc",
		file = getWorkingDirectory() .. "\\MATools\\esc.png"
	},
	{
		name = "lisa",
		file = getWorkingDirectory() .. "\\MATools\\lisa.png"
	},
	{
		name = "gus",
		file = getWorkingDirectory() .. "\\MATools\\gus.png"
	},
	{
		name = "ghetto",
		file = getWorkingDirectory() .. "\\MATools\\ghetto.png"
	},
	{
		name = "mute",
		file = getWorkingDirectory() .. "\\MATools\\mute.png"
	},
	{
		name = "warn",
		file = getWorkingDirectory() .. "\\MATools\\warn.png"
	},
	{
		name = "ban",
		file = getWorkingDirectory() .. "\\MATools\\ban.png"
	},
	{
		name = "prison",
		file = getWorkingDirectory() .. "\\MATools\\prison.png"
	},
	{
		name = "kick",
		file = getWorkingDirectory() .. "\\MATools\\kick.png"
	}
}
local var_0_25 = {}
local var_0_26 = {
	off_mat = var_0_15.bool(false),
	checkbox_off_mat_cheats = var_0_15.bool(var_0_18.settings.off_mat_cheats),
	checkbox_off_mat_playerchecker = var_0_15.bool(var_0_18.settings.off_mat_playerchecker),
	checkbox_off_mat_adminchecker = var_0_15.bool(var_0_18.settings.off_mat_adminchecker),
	checkbox_off_mat_infpanel = var_0_15.bool(var_0_18.settings.off_mat_infpanel),
	checkbox_off_mat_monitoring = var_0_15.bool(var_0_18.settings.off_mat_monitoring),
	checkbox_off_mat_far_chat = var_0_15.bool(var_0_18.settings.off_mat_far_chat),
	checkbox_off_mat_traisers = var_0_15.bool(var_0_18.settings.off_mat_traisers),
	checkbox_off_mat_forms = var_0_15.bool(var_0_18.settings.off_mat_forms),
	checkbox_off_mat_notes = var_0_15.bool(var_0_18.settings.off_mat_notes),
	checkbox_autologin = var_0_15.bool(var_0_18.settings.autologin),
	checkbox_autolovlya = var_0_15.bool(var_0_18.settings.autolovlya),
	checkbox_reportplusplus = var_0_15.bool(var_0_18.settings.reportplusplus),
	checkbox_only_b = var_0_15.bool(var_0_18.settings.only_b),
	checkbox_accent = var_0_15.bool(var_0_18.settings.accent),
	checkbox_check_myadmstats = var_0_15.bool(var_0_18.settings.check_myadmstats),
	checkbox_autoopenar = var_0_15.bool(var_0_18.settings.autoopenar),
	checkbox_autoopenrep = var_0_15.bool(var_0_18.settings.autoopenrep),
	checkbox_autocheckrep = var_0_15.bool(var_0_18.settings.autocheckrep),
	checkbox_custom_report_window = var_0_15.bool(var_0_18.settings.custom_report_window),
	checkbox_open_mat_bind = var_0_15.bool(var_0_18.settings.open_mat_bind),
	checkbox_autoacceptform = var_0_15.bool(var_0_18.settings.autoacceptform),
	checkbox_offforms = var_0_15.bool(var_0_18.settings.offforms),
	checkbox_custom_spec = var_0_15.bool(var_0_18.settings.custom_spec),
	checkbox_help_spec = var_0_15.bool(var_0_18.settings.help_spec),
	checkbox_btns_spec = var_0_15.bool(var_0_18.settings.btns_spec),
	checkbox_info_rep = var_0_15.bool(var_0_18.settings.info_rep),
	checkbox_custom_color_a_chat = var_0_15.bool(var_0_18.settings.custom_color_a_chat),
	checkbox_custom_color_hc_chat = var_0_15.bool(var_0_18.settings.custom_color_hc_chat),
	checkbox_custom_color_ans_chat = var_0_15.bool(var_0_18.settings.custom_color_ans_chat),
	checkbox_custom_color_ans_chat_helpers = var_0_15.bool(var_0_18.settings.custom_color_ans_chat_helpers),
	checkbox_custom_color_ans_chat_admins = var_0_15.bool(var_0_18.settings.custom_color_ans_chat_admins),
	checkbox_custom_color_answerask_chat = var_0_15.bool(var_0_18.settings.custom_color_answerask_chat),
	checkbox_custom_color_answerrep_chat = var_0_15.bool(var_0_18.settings.custom_color_answerrep_chat),
	checkbox_infopanel_showtime_info = var_0_15.bool(var_0_18.settings.infopanel_showtime_info),
	checkbox_infopanel_showtime = var_0_15.bool(var_0_18.settings.infopanel_showtime),
	checkbox_infopanel_showtime_seconds = var_0_15.bool(var_0_18.settings.infopanel_showtime_seconds),
	checkbox_infopanel_showdate = var_0_15.bool(var_0_18.settings.infopanel_showdate),
	checkbox_infopanel_dateformat_daymounth = var_0_15.bool(var_0_18.settings.infopanel_dateformat_daymounth),
	checkbox_infopanel_dateformat_x = var_0_15.bool(var_0_18.settings.infopanel_dateformat_x),
	checkbox_infopanel_showweekday = var_0_15.bool(var_0_18.settings.infopanel_showweekday),
	checkbox_active_reps = var_0_15.bool(var_0_18.settings.infopanel_active_reps),
	checkbox_infopanel_online_session = var_0_15.bool(var_0_18.settings.infopanel_online_session),
	checkbox_infopanel_online_day = var_0_15.bool(var_0_18.settings.infopanel_online_day),
	checkbox_infopanel_afk_session = var_0_15.bool(var_0_18.settings.infopanel_afk_session),
	checkbox_infopanel_afk_day = var_0_15.bool(var_0_18.settings.infopanel_afk_day),
	checkbox_infopanel_obvodka = var_0_15.bool(var_0_18.settings.infopanel_obvodka),
	checkbox_infopanel_answers_session = var_0_15.bool(var_0_18.settings.infopanel_answers_session),
	checkbox_infopanel_answers_day = var_0_15.bool(var_0_18.settings.infopanel_answers_day),
	checkbox_infopanel_kvadrat = var_0_15.bool(var_0_18.settings.infopanel_kvadrat),
	checkbox_infopanel_zone = var_0_15.bool(var_0_18.settings.infopanel_zone),
	checkbox_infopanel_direction = var_0_15.bool(var_0_18.settings.infopanel_direction),
	checkbox_adminchecker = var_0_15.bool(var_0_18.settings.adminchecker),
	checkbox_playerchecker = var_0_15.bool(var_0_18.settings.playerchecker),
	checkbox_playerchecker_vhod_uved = var_0_15.bool(var_0_18.settings.playerchecker_vhod_uved),
	checkbox_playerchecker_exit_uved = var_0_15.bool(var_0_18.settings.playerchecker_exit_uved),
	checkbox_skip_tp = var_0_15.bool(var_0_18.settings.skip_tp),
	checkbox_strobes = var_0_15.bool(var_0_18.settings.strobes),
	checkbox_fisheye = var_0_15.bool(var_0_18.settings.fisheye),
	checkbox_airbrake = var_0_15.bool(var_0_18.settings.airbrake),
	checkbox_airbrake_clear = var_0_15.bool(var_0_18.settings.airbrake_clear),
	checkbox_clickwarp = var_0_15.bool(var_0_18.settings.clickwarp),
	checkbox_speedhack = var_0_15.bool(var_0_18.settings.speedhack),
	checkbox_auto_start_wallhack = var_0_15.bool(var_0_18.settings.auto_start_wallhack),
	checkbox_wallhack = var_0_15.bool(var_0_18.settings.wallhack),
	checkbox_obj_wh = var_0_15.bool(var_0_18.settings.obj_wh),
	checkbox_obj_wh_all = var_0_15.bool(var_0_18.settings.obj_wh_all),
	checkbox_obj_wh_all_ignore = var_0_15.bool(var_0_18.settings.obj_wh_all_ignore),
	checkbox_obj_wh_radius = var_0_15.bool(var_0_18.settings.obj_wh_radius),
	checkbox_obj_wh_conditions = var_0_15.bool(var_0_18.settings.obj_wh_conditions),
	checkbox_obj_wh_conditions_show_name = var_0_15.bool(var_0_18.settings.obj_wh_conditions_show_name),
	checkbox_obj_wh_line = var_0_15.bool(var_0_18.settings.obj_wh_line),
	checkbox_invis = var_0_15.bool(var_0_18.settings.invis),
	checkbox_antistan = var_0_15.bool(var_0_18.settings.antistan),
	checkbox_wallhack_kvadrat = var_0_15.bool(var_0_18.settings.wallhack_kvadrat),
	checkbox_wallhack_line = var_0_15.bool(var_0_18.settings.wallhack_line),
	checkbox_wallhack_skelet = var_0_15.bool(var_0_18.settings.wallhack_skelet),
	checkbox_infinity_ammo = var_0_15.bool(var_0_18.settings.infinity_ammo),
	checkbox_nospread = var_0_15.bool(var_0_18.settings.nospread),
	checkbox_gm_ped = var_0_15.bool(var_0_18.settings.gm_ped),
	checkbox_collision = var_0_15.bool(var_0_18.settings.collision),
	checkbox_collision_players = var_0_15.bool(var_0_18.settings.collision_players),
	checkbox_collision_vehs = var_0_15.bool(var_0_18.settings.collision_vehs),
	checkbox_collision_objects = var_0_15.bool(var_0_18.settings.collision_objects),
	checkbox_gm_car = var_0_15.bool(var_0_18.settings.gm_car),
	checkbox_gm_wheel = var_0_15.bool(var_0_18.settings.gm_wheel),
	checkbox_tank_mode = var_0_15.bool(var_0_18.settings.tank_mode),
	checkbox_flycar = var_0_15.bool(var_0_18.settings.flycar),
	checkbox_nosurf = var_0_15.bool(var_0_18.settings.nosurf),
	checkbox_nobike = var_0_15.bool(var_0_18.settings.nobike),
	checkbox_driveunderwater = var_0_15.bool(var_0_18.settings.driveunderwater),
	checkbox_driveoffengine = var_0_15.bool(var_0_18.settings.driveoffengine),
	checkbox_anti_eject = var_0_15.bool(var_0_18.settings.anti_eject),
	checkbox_fast_exit = var_0_15.bool(var_0_18.settings.fast_exit),
	checkbox_nitro = var_0_15.bool(var_0_18.settings.nitro),
	checkbox_fast_run = var_0_15.bool(var_0_18.settings.fast_run),
	checkbox_fast_fire = var_0_15.bool(var_0_18.settings.fast_fire),
	checkbox_mega_jump = var_0_15.bool(var_0_18.settings.mega_jump),
	checkbox_traisers = var_0_15.bool(var_0_18.settings.traisers),
	checkbox_far_chat = var_0_15.bool(var_0_18.settings.far_chat),
	checkbox_far_chat_timestamp = var_0_15.bool(var_0_18.settings.far_chat_timestamp),
	checkbox_monitoring = var_0_15.bool(var_0_18.settings.monitoring),
	checkbox_monitoring_timestamp = var_0_15.bool(var_0_18.settings.monitoring_timestamp)
}
local var_0_27 = {
	fontsize_checker_admins = var_0_15.int(var_0_18.settings.fontsize_checker_admins),
	fontsize_checker_players = var_0_15.int(var_0_18.settings.fontsize_checker_players),
	fisheye_vision = var_0_15.float(var_0_18.cheats.fisheye),
	speed_fastrun = var_0_15.float(var_0_18.cheats.fast_run),
	speed_fastfire = var_0_15.float(var_0_18.cheats.fast_fire),
	speedhack_speed = var_0_15.float(var_0_18.cheats.speedhack_speed),
	jump_x = var_0_15.float(var_0_18.cheats.x_jump),
	jump_z = var_0_15.float(var_0_18.cheats.z_jump),
	strob_speed = var_0_15.int(var_0_18.settings.strob_speed),
	wait_offline = var_0_15.int(var_0_18.settings.wait_offline),
	radius_obj_wh = var_0_15.int(var_0_18.settings.radius_obj_wh),
	far_chat_lines = var_0_15.int(var_0_18.settings.far_chat_lines),
	far_chat_fontsize = var_0_15.int(var_0_18.settings.far_chat_fontsize),
	monitoring_lines = var_0_15.int(var_0_18.settings.monitoring_lines),
	monitoring_fontsize = var_0_15.int(var_0_18.settings.monitoring_fontsize)
}
local var_0_28 = {
	move_forms = false,
	move_adminchecker = false,
	move_autolovlya = false,
	move_monitoring = false,
	move_spec_help = false,
	move_btns_spec = false,
	move_infopanel = false,
	move_far_chat = false,
	move_specinfo = false,
	move_playerchecker = false
}
local var_0_29 = {
	flycar_active = false,
	active_airbrake = false,
	wh = false,
	active_invis = false,
	obj_wh = false,
	collision_active = false,
	enableStrobes = false,
	fisheye_locked = false,
	active_clickwarp = false,
	flycar_speed = 0,
	fc = {}
}
local var_0_30 = {
	input_password = var_0_15.char[256](var_0_14(var_0_18.settings.password)),
	input_pincode = var_0_15.char[256](var_0_14(var_0_18.settings.pincode)),
	input_alogin = var_0_15.char[256](var_0_14(var_0_18.settings.alogin)),
	input_accent = var_0_15.char[128](var_0_14(var_0_18.settings.what_accent)),
	input_offline = var_0_15.char[65536](),
	search_id_gun = var_0_15.char[256](),
	search_id_car = var_0_15.char[256](),
	add_object_wh_model = var_0_15.char[256](),
	add_object_wh_name = var_0_15.char[256](),
	add_ignore_object_wh_model = var_0_15.char[256](),
	add_ignore_object_wh_name = var_0_15.char[256]()
}
local var_0_31 = {
	nameClearListPlayerChecker = var_0_14("Очистить список"),
	offlinePunishClear = var_0_14("Очистить"),
	WhObjectsList = var_0_14("Очистить список"),
	WhObjects_ignoreList = var_0_14("Очистить список")
}
local var_0_32 = {
	bad_password = false,
	bad_alogin = false
}
local var_0_33 = {
	showPincode = false,
	showAlogin = false,
	showPassword = false,
	state_passpin = "passwd"
}
local var_0_34 = {
	far_chat_messages = {},
	monitoring_log = {}
}
local var_0_35 = var_0_15.char[512]()
local var_0_36 = {
	Text = "",
	AuthorId = -1,
	AuthorNick = "",
	go_open_rep = false,
	SuspectId = -1,
	go_error = true,
	errors = 0,
	clear_rep = false,
	last_report_count = 0,
	SuspectNick = "",
	start_time = os.time()
}
local var_0_37 = {
	spec_nick = "",
	last_spec_id = "",
	spec_id = "",
	cursor = true,
	specWinState = var_0_15.bool(false)
}
local var_0_38 = {
	lastForma = 0,
	lastSpec = 0
}
local var_0_39 = false
local var_0_40 = {
	joystick = {
		timer = -1,
		old = {
			x = 0,
			y = 0
		},
		new = {
			x = 0,
			y = 0
		}
	}
}
local var_0_41 = {
	onfoot = {},
	vehicle = {}
}
local var_0_42 = {
	ghettoSelected = -1,
	ghetto_coords = {
		inInt = 0,
		z = "",
		x = "",
		y = ""
	}
}
local var_0_43 = {
	ghettoWinState = var_0_15.bool(false),
	ghettoWinState2 = var_0_15.bool(false),
	ipWinState = var_0_15.bool(false)
}
local var_0_44 = {
	start_give = false,
	last_forma = "",
	errors = {
		"Игрок не найден",
		"Время от 5 до 180 минут",
		"Количество дней от 1 до 30",
		"Этот игрок уже находится в бане! Обратитесь к старшей администрации"
	},
	errors_list = {}
}
local var_0_45 = {
	mp_help_skip = 0,
	showError = false,
	kolvo_players = var_0_15.int(50),
	tp_int = var_0_15.int(5),
	type_tp = {
		var_0_14("Тихий телепорт (Mobile)"),
		var_0_14("Тихий телепорт (PC)"),
		var_0_14("Обычный телепорт (Mobile)"),
		var_0_14("Обычный телепорт (PC)"),
		var_0_14("Тихий телепорт (Общий)"),
		var_0_14("Обычный телепорт (Общий)")
	},
	radius_skin = var_0_15.int(15),
	type_skin = var_0_15.int(2),
	kolvo_gun = var_0_15.int(100),
	radius_gun = var_0_15.int(1),
	type_gun = var_0_15.int(24),
	kolvo_money = var_0_15.int(10000),
	radius_money = var_0_15.int(15),
	radius_players = var_0_15.int(10),
	radius_car = var_0_15.int(5),
	type_car = var_0_15.int(560),
	color1_car = var_0_15.int(1),
	color2_car = var_0_15.int(1),
	search_tp = var_0_15.char[256](),
	viewAddPoint = var_0_15.bool(false),
	custom_coords_tp = var_0_15.char[256](),
	mp_coord = {
		{
			coords = "0, 1462, 1953, 1987",
			name = "Локация от Корфуста 1"
		},
		{
			coords = "0, 1272, 1868, 1585",
			name = "Локация от Корфуста 2"
		}
	}
}
local var_0_46 = {
	["Interior: LS police HQ"] = "6, 246.783996, 63.900199, 1003.640625",
	["Los Santos: Colonel Fuhrberger's"] = "0, 2820.60961914063, -1182.16235351563, 25.232967376709",
	["Interior: Planning dept"] = "3, 384.808624, 173.804992, 1008.382812",
	["Los Santos: Alhambra Club"] = "0, 1828.20690917969, -1682.60571289063, 13.546875",
	["Interior: LV Warehouse 2"] = "0, 1059.180175, 2148.938720, 10.820312",
	["Interior: Liberty city outside"] = "1, -729.276000, 503.086944, 1371.971801",
	["Liberty City: Inside Marco's Bistro"] = "1, -781.811340332031, 489.323181152344, 1376.1953125",
	["Interior: Tiger skin brothel"] = "3, 964.106994, -53.205497, 1001.124572",
	["Las Venturas: Airport"] = "0, 1697.70825195313, 1436.81311035156, 10.7489976882935",
	["Interior: 8-Track"] = "7, -1398.065307, -217.028900, 1051.115844",
	["Bone County: The Big Ear"] = "0, -367.559143066406, 1581.53552246094, 76.1306381225586",
	["Interior: Suburban"] = "1, 203.777999, -48.492397, 1001.804687",
	["Interior: Zip"] = "18, 161.391006, -93.159156, 1001.804687",
	["Interior: Bank"] = "0, 2319.714843, -14.838361, 26.749565",
	["Los Santos: GTA III and GTA: Vice City logos"] = "0, 788.071899414063, -1035.47729492188, 24.6282062530518",
	["Interior: Tatoo parlour 3"] = "3, -204.439987, -43.652496, 1002.273437",
	["Los Santos: Cemetery"] = "0, 832.375915527344, -1101.96203613281, 24.296875",
	["Las Venturas: Caligula's Palace Casino"] = "0, 2179.212890625, 1676.203125, 11.046875",
	["Interior: LS gym"] = "5, 772.111999, -3.898649, 1000.728820",
	["Las Venturas: Lemmings Pedestrians"] = "0, 2014.46105957031, 2356.97924804688, 10.8203125",
	["Interior: 24/7 5"] = "4, -27.312299, -29.277599, 1003.557250",
	["Interior: Prolaps"] = "3, 207.054992, -138.804992, 1003.507812",
	["Interior: Denise room"] = "1, 244.411987, 305.032989, 999.148437",
	["Interior: Big spread ranch"] = "3, 1212.019897, -28.663099, 1000.953125",
	["Interior: Michelle room"] = "4, 302.180999, 300.722991, 999.148437",
	["San Fierro: Big Pointy Building"] = "0, -1754.5322265625, 885.199584960938, 295.875",
	["Interior: Colonel Furhberger's"] = "8, 2807.619873, -1171.899902, 1025.570312",
	["Interior: Ammunation 2"] = "4, 286.800994, -82.547599, 1001.515625",
	["Interior: Tatoo parlour 1"] = "16, -204.439987, -26.453998, 1002.273437",
	["Interior: Strip club private room"] = "2, 1204.809936, 13.897239, 1000.921875",
	["Interior: Ammunation range"] = "7, 298.507934, -141.647048, 1004.054748",
	["Interior: Pleasure domes"] = "3, -2640.762939, 1406.682006, 906.460937",
	["Interior: Fanny batters"] = "6, 761.412963, 1440.191650, 1102.703125",
	["Interior: Catigulas"] = "1, 2131.507812, 1600.818481, 1008.359375",
	["Interior: Sex shop"] = "3, -103.559165, -24.225606, 1000.718750",
	["Los Santos: Big Smoke's Crack Palace"] = "0, 2518.2197265625, -1272.61791992188, 34.8740921020508",
	["Interior: Millie's House"] = "6, 345.892669677734, 306.162902832031, 999.1484375",
	["San Fierro: Airport"] = "0, -1425.78784179688, -292.410827636719, 14.1484375",
	["Los Santos: Lemmings Pole"] = "0,  2392.33569335938, -1511.87316894531, 23.8348655700684",
	["Los Santos: Police Departament"] = "0, 1540.84509277344, -1675.45324707031, 13.5513896942139",
	["Los Santos: The Pig Pen Strip Club"] = "0, 2421.12280273438, -1228.55883789063, 24.8796482086182",
	["Interior: Kickstart"] = "14, -1465.268676, 1557.868286, 1052.531250",
	["Los Santos: Police brutality"] = "0, 1540.00646972656, -1627.77075195313, 13.3828125",
	["Interior: Woozies office"] = "1, -2159.122802, 641.517517, 1052.381713",
	["Dillimore: Max Pane - Bulletproof Glass"] = "0, 658.372924804688, -569.527587890625, 16.3359375",
	["Los Santos: Roboi's Food Mart"] = "0, 1350.62097167969, -1744.802734375, 13.3808469772339",
	["Los Santos: Jefferson Hotel"] = "0, 2221.89038085938, -1159.849609375, 25.7330799102783",
	["Interior: SF Bomb shop"] = "0, -1685.636474, 1035.476196, 45.210937",
	["Los Santos: Lowrider Competition"] = "0, 1816.08728027344, -1929.91040039063, 13.5433483123779",
	["Los Santos: Market Station"] = "0, 826.761840820313, -1358.68713378906, -0.5078125",
	["Los Santos: Ocean Docks"] = "0, 2184.40185546875, -2260.38232421875, 13.4100790023804",
	["Interior: 24/7 4"] = "16, -25.132598, -139.066986, 1003.546875",
	["Interior: SF Garage"] = "0, -1790.378295, 1436.949829, 7.187500",
	["Interior: Ammunation 1"] = "1, 286.148986, -40.644397, 1001.515625",
	["Los Santos: Jesus Saves"] = "0, 2719.21704101563, -2009.17846679688, 13.5546875",
	["San Fierro: Gaydar Station Club"] = "0, -2557.06982421875, 192.114242553711, 6.1554012298584",
	["Bone County: Lil' Probe Inn"] = "0, -84.36767578125, 1370.42724609375, 10.2734375",
	["Interior: Airport baggage reclaim"] = "14, -1861.936889, 54.908092, 1061.143554",
	["Los Santos: Verona Beach Gym"] = "0, 666.700561523438, -1880.67272949219, 5.46000003814697",
	["Los Santos: Vinewood Sign"] = "0, 1386.48901367188, -822.793640136719, 73.6923141479492",
	["The Sherman Dam: Generator Hall"] = "0, -593.485046386719, 2020.72277832031, 60.3828125",
	["Palomino Creek: Cementry"] = "0, 2240.06396484375, -61.6567649841309, 26.50661277771",
	["Montgomery: Inside Track Betting"] = "0, 1292.03247070313, 269.481689453125, 19.5546875",
	["Las Venturas: Welding & Weddings"] = "0, 2002.8212890625, 2288.66259765625, 10.8203125",
	["Interior: Jefferson motel"] = "15, 2215.454833, -1147.475585, 1025.796875",
	["Interior: Ammunation 3"] = "6, 296.919982, -108.071998, 1001.515625",
	["Interior: Place C"] = "3, 962.10498046875, -50.9754791259766, 1001.1171875",
	["Fern Ridge: Catalina's Ex-boyfriends"] = "0, 843.333190917969, -23.9582138061523, 62.7258110046387",
	["Interior: Didier sachs"] = "14, 204.332992, -166.694992, 1000.523437",
	["Angel Pine: Vice City Maps"] = "0, -2177.60961914063, -2437.34497070313, 30.625",
	["Interior: LV gym"] = "7, 773.579956, -77.096694, 1000.655029",
	["Flint County: Nazca Symbol"] = "0, -687.696716308594, -1017.00006103516, 73.6602172851563",
	["Interior: Off track betting shop"] = "3, 833.269775, 10.588416, 1004.179687",
	["Interior: Catigulas basement"] = "1, 2169.461181, 1618.798339, 999.976562",
	["Flint County: Suicidal Photographer"] = "0, -61.9707489013672, -1622.80908203125, 3.51299381256104",
	["Interior: Ryders house"] = "2, 2454.717041, -1700.871582, 1013.515197",
	["Interior: Cluckin bell"] = "9, 369.579528, -4.487294, 1001.858886",
	["Interior: Ammunation 5"] = "6, 316.524993, -167.706985, 999.593750",
	["Interior: Gant bridge diner"] = "5, 454.973937, -110.104995, 1000.077209",
	["Interior: Strip club"] = "2, 1204.809936, -11.586799, 1000.921875",
	["Interior: Place B"] = "3, 959.504577636719, -7.69411325454712, 1001.1484375",
	["Interior: Burger shot"] = "10, 375.962463, -65.816848, 1001.507812",
	["Interior: Tatoo parlour 2"] = "17, -204.439987, -8.469599, 1002.273437",
	["Las Venturas: Police Departament"] = "0, 2286.89965820313, 2424.51220703125, 10.8203125",
	["Los Santos: Big Smoke's Crack Palace (inside)"] = "2, 2580.02124023438, -1300.33801269531, 1060.9921875",
	["San Fierro: Hippy Statue"] = "0, -2496.01245117188, -16.239330291748, 25.765625",
	["San Fierro: Misty's Club"] = "0, -2246.36303710938, -88.0900344848633, 35.3203125",
	["Interior: FDC Janitors room"] = "10, 1889.953369, 1017.438293, 31.882812",
	["San Fierro: Otto's Autos"] = "0, -1639.01281738281, 1202.3388671875, 7.22374629974365",
	["Las Venturas: Minigun - 03"] = "0, 242.109191894531, 1859.30590820313, 14.0840120315552",
	["Chiliad Mountain: House on the slope"] = "0, -2799.70458984375, -1528.5595703125, 139.274612426758",
	["Chiliad Mountain: Top of Chiliad Mountain"] = "0, -2329.65673828125, -1624.35437011719, 483.707550048828",
	["Back o Beyond: Ghost Car"] = "0, -862.708190917969, -2280.87768554688, 26.2417907714844",
	["Interior: Dirt track"] = "4, -1444.645507, -664.526000, 1053.572998",
	["San Fierro: Actual Piece of Cable"] = "0, -2540.97973632813, 1228.51245117188, 37.421875",
	["Interior: Shamal"] = "1, 1.808619, 32.384357, 1199.593750",
	["Interior: Welcome pump"] = "1, 681.557861, -455.680053, -25.609874",
	["Palomino Creek: Triathalon"] = "0, 2139.28759765625, -65.8627624511719, 2.96075963973999",
	["Interior: Gang house"] = "5, 2350.339843, -1181.649902, 1027.976562",
	["Bone County: Astro Drive-In"] = "0, 148.567153930664, 1100.38610839844, 14.0299491882324",
	["Red County: North Rock"] = "0, 2570.11279296875, -644.1416015625, 136.548034667969",
	["Las Venturas: Caligula's Palace Casino basement"] = "0, 2170.4248046875, 1618.86999511719, 999.9765625",
	["Las Venturas: Casino Floor Casino"] = "0, 1658.6943359375, 2259.54443359375, 10.8203125",
	["Interior: Ammunation 4"] = "7, 314.820983, -141.431991, 999.601562",
	["Los Santos: Ghost Graffiti (20:00-6:00)"] = "0, 927.000305175781, -1058.16821289063, 24.7002906799316",
	["Interior: Secret valley diner"] = "6, 435.271331, -80.958938, 999.554687",
	["Las Venturas: Club"] = "0, 2507.13940429688, 1247.13256835938, 10.8203125",
	["Las Venturas: Nude Strippers Daily Strip Club"] = "0, 2543.13793945313, 1018.91442871094, 10.8125171661377",
	["Las Venturas: Minigun - 01"] = "0, 2678.95947265625, 835.770690917969, 21.7657508850098",
	["Las Venturas: Minigun - 02"] = "0, 2495.65014648438, 2398.44189453125, 4.2109375",
	["San Fierro: USS Numnutz"] = "0, -1878.22204589844, 1455.84631347656, 8.36595344543457",
	["Interior: Dillimore gas station"] = "0, 663.836242, -575.605407, 16.343263",
	["Interior: Crack den"] = "5, 318.564971, 1118.209960, 1083.882812",
	["Interior: Meat factory"] = "1, 963.418762, 2108.292480, 1011.030273",
	["Las Venturas: The Craw Bar"] = "0, 2441.26611328125, 2059.05712890625, 10.8203125",
	["Interior: Barber 1"] = "2, 411.625976, -21.433298, 1001.804687",
	["Las Venturas: The Four Dragons Casino"] = "0, 2035.13293457031, 1007.79144287109, 10.8203125",
	["Liberty City: Marco's Bistro"] = "1, -748.254211425781, 488.972473144531, 1371.58898925781",
	["Interior: Vice stadium"] = "1, -1401.829956, 107.051300, 1032.273437",
	["Interior: Blastin fools hallway"] = "3, 1038.531372, 0.111030, 1001.284484",
	["Interior: Bar"] = "11, 501.980987, -69.150199, 998.757812",
	["Bone County: Antena"] = "0, -225.078796386719, 1396.11413574219, 172.4140625",
	["Interior: Cj's house"] = "3, 2496.049804, -1695.238159, 1014.742187",
	["Interior: Andromada"] = "9, 315.745086, 984.969299, 1958.919067",
	["Bone County: Area 69 (inside)"] = "0, 268.621276855469, 1887.26489257813, -29.53125",
	["Interior: Well stacked pizza"] = "5, 373.825653, -117.270904, 1001.499511",
	["San Fierro: Michelle's Autorepair"] = "0, -1786.46594238281, 1197.98132324219, 25.1193962097168",
	["Interior: Unused safe house"] = "12, 2324.419921, -1145.568359, 1050.710083",
	["San Fierro: Hippy Shopper"] = "0, -2597.46752929688, 59.5114707946777, 4.3359375",
	["Los Santos: Inside Track Betting"] = "0, 1631.77648925781, -1167.0690979688, 24.078125",
	["Interior: Car school"] = "3, -2029.798339, -106.675910, 1035.171875",
	["Interior: Warehouse 1"] = "1, 1412.639892, -1.787510, 1000.924377",
	["Interior: 24/7 1"] = "17, -25.884498, -185.868988, 1003.546875",
	["San Fierro: Highest building of San Fierro"] = "0, -1791.02185058594, 567.774047851563, 332.801940917969",
	["Interior: Crack factory"] = "2, 2543.462646, -1308.379882, 1026.728393",
	["Palomino Creek: Empty Diner"] = "0, 2337.83618164063, 6.2173113822937, 26.484375",
	["Interior: Og Locs house"] = "3, 513.882507, -11.269994, 1001.565307",
	["Interior: Area 51"] = "0, 223.431976, 1872.400268, 13.734375",
	["Los Santos: Candy Suxx Billboard"] = "0, 419.148376464844, -1368.41320800781, 41.140625X",
	["Bone County: Cave"] = "0, -400.1201171875, 1233.3515625, 5.85399532318115",
	["Interior: Blueberry warehouse"] = "0, 76.632553, -301.156829, 1.578125",
	["Bone County: Regular Tom"] = "0, -318.049346923828, 1843.87377929688, 42.359375",
	["Interior: 24/7 2"] = "10, 6.091179, -29.271898, 1003.549438",
	["Los Santos: Grotti (Ferrari) Billboard"] = "0, 487.795166015625, -1326.62707519531, 28.0078125",
	["Interior: RC Battlefield"] = "10, -975.975708, 1060.983032, 1345.671875",
	["San Fierro: Cargo Ship"] = "0, -2474.16943359375, 1547.40283203125, 33.2273330688477",
	["Interior: SF gym"] = "6, 774.213989, -48.924297, 1000.585937",
	["Bone County: The Big Ear (top)"] = "0, -346.331298828125, 1626.33447265625, 136.319305419922",
	["Interior: Ammunation booths"] = "7, 302.292877, -143.139099, 1004.062500",
	["Interior: Madd Doggs mansion"] = "5, 1267.663208, -781.323242, 1091.906250",
	["Interior: 24/7 6"] = "6, -26.691598, -55.714897, 1003.546875",
	["Interior: Barber 3"] = "12, 412.021972, -52.649898, 1001.898437",
	["Interior: LS Garage"] = "0, 1643.839843, -1514.819580, 13.566620",
	["Los Santos: Observatory"] = "0, 1191.98645019531, -2036.88049316406, 69.0078125",
	["Bone County: The Big Spread Ranch Strip Club"] = "0, 693.90673828125, 1940.20239257813, 5.5390625",
	["Las Venturas: Wedding Chapel Open 7 Days"] = "0, 2476.23413085938, 920.440734863281, 10.8203125",
	["Verdant Meadows: Abandoned Airfield"] = "0, 404.54638671875, 2488.81689453125, 16.484375",
	["El Castillo del Diablo: Mass Grave"] = "0, -132.202545166016, 2249.17138671875, 32.933177947998",
	["Interior: Bloodbowl"] = "15, -1398.103515, 937.631164, 1036.479125",
	["Interior: Katie room"] = "2, 271.884979, 306.631988, 999.148437",
	["Fort Carson: Driveway Beagle"] = "0, -29.5530853271484, 1084.95336914063, 19.7455101013184",
	["Palomino Creek: Bank"] = "0, 2306.333984375, -15.3912973403931, 26.7495651245117",
	["San Fierro: War Memorial"] = "0, -2591.06958007813, -15.1639175415039, 4.328125",
	["The Sherman Dam: Sherman Dam Memorial"] = "0, -889.46484375, 1972.90734863281, 60.3285140991211",
	["Interior: LV police HQ"] = "3, 288.745971, 169.350997, 1007.171875",
	["Interior: Barber 2"] = "3, 418.652984, -82.639793, 1001.804687",
	["Interior: Barbara room"] = "5, 322.197998, 302.497985, 999.148437",
	["Las Payasadas: Largest Chicken"] = "0, -217.903747558594, 2662.41235351563, 62.6015625",
	["Las Barrancas: Largest Cow"] = "0, -857.239135742188, 1535.8515625, 28.1875",
	["Las Barrancas: Hopi Ruins"] = "0, -722.901062011719, 1522.61572265625, 39.5409965515137",
	["Tierra Robada: Aldea Malvada: the Lost Pueblo"] = "0, -1298.81420898438, 2505.07299804688, 86.9625854492188",
	["Interior: Lil probe inn toilet"] = "18, -221.059051, 1408.984008, 27.773437",
	["Tierra Robada: Phalic Rock"] = "0, -547.985473632813, 2478.28100585938, 66.7793350219727",
	["Interior: Rusty browns donuts"] = "17, 381.169189, -188.803024, 1000.632812",
	["Las Venturas: Wedding Chapel Open 24HR"] = "0, 2434.20092773438, 1293.18017578125, 10.8203125",
	["Los Santos: Didier Sachs Shop"] = "0, 450.887725830078, -1479.1318359375, 30.8057765960693",
	["Interior: 24/7 3"] = "18, -30.946699, -89.609596, 1003.546875",
	["Interior: Victim"] = "5, 226.293991, -7.431529, 1002.210937",
	["Los Santos: 8 Ball's Autos"] = "0, 1834.70385742188, -1856.40185546875, 13.3897476196289",
	["Interior: Planning Department"] = "3, 388.872009277344, 173.811111450195, 1008.3828125",
	["Interior: Barn"] = "3, 291.141082763672, 310.135040283203, 999.1484375",
	["Interior: Zeros RC shop"] = "6, -2240.468505, 137.060440, 1035.414062",
	["Interior: Airport ticket desk"] = "14, -1827.147338, 7.207417, 1061.143554",
	["Las Venturas: VRock Hotel"] = "0, 2628.52221679688, 2321.35693359375, 10.671875",
	["Interior: SF police HQ"] = "10, 246.375991, 109.245994, 1003.218750",
	["Interior: LV Warehouse 1"] = "0, 1059.895996, 2081.685791, 10.820312",
	["Interior: Binco"] = "15, 207.737991, -109.019996, 1005.132812",
	["Interior: Millie room"] = "6, 346.870025, 309.259033, 999.155700",
	["Interior: Cafe"] = "5, 450.560333251953, -107.105247497559, 1000.88635253906",
	["Interior: Place A"] = "3, 1041.75390625, 10.1560220718384, 1001.28448486328",
	["San Fierro: Bridge Facts"] = "0, -2556.43603515625, 1224.98254394531, 42.1484375",
	["Los Santos: Triathalon"] = "0, 181.06819152832, -1866.71862792969, 3.04375839233398",
	["Interior: LS Atruim"] = "18, 1710.433715, -1669.379272, 20.225049",
	["Blueberry: Locals Only Shop"] = "0, 276.548187255859, -157.536209106445, 1.5704517364502",
	["Los Santos: Atrium"] = "0, 1722.0576171875, -1605.82824707031, 13.546875",
	["Los Santos: Cathay Theater"] = "0, 1022.50787353516, -1133.8857421875, 23.828125",
	["Los Santos: CJ's home"] = "0, 2495.32275390625, -1685.42651367188, 13.5127220153809",
	["Interior: Jays diner"] = "4, 457.304748, -88.428497, 999.554687",
	["Interior: Budget inn motel room"] = "12, 444.646911, 508.239044, 1001.419494",
	["Interior: Unnamed brothel"] = "3, 942.171997, -16.542755, 1000.929687",
	["Interior: Warehouse 2"] = "18, 1302.519897, -1.787510, 1001.028259",
	["Interior: Club"] = "17, 493.390991, -22.722799, 1000.679687",
	["San Fierro: No Easter Eggs Up Here"] = "0, -2677.59228515625, 1594.87243652344, 217.273895263672",
	["El Castillo del Diablo: Snake Ferm"] = "0, -36.4142532348633, 2336.65209960938, 24.1347389221191",
	["Interior: B Dups crack pad"] = "2, 1523.509887, -47.821197, 1002.130981",
	["Los Santos: Vice City Hidden Package"] = "0, 2354.03198242188, -1467.3642578125, 31.9559421539307",
	["Los Santos: Airport"] = "0, 1682.73156738281, -2264.05786132813, 13.5079345703125",
	["Las Venturas: Sex shop"] = "0, 2096.162109375, 2077.07177734375, 10.8203125",
	["Interior: World of coq"] = "1, 452.489990, -18.179698, 1001.132812",
	["Blueberry: Liquor Store"] = "0, 254.497406005859, -66.0255889892578, 1.578125",
	["Bone County: Los Brujas"] = "0, -373.940795898438, 2196.25903320313, 42.0821113586426",
	["Interior: Sherman dam"] = "17, -959.564392, 1848.576782, 9.000000",
	["Palomino Creek: Glowing headstones"] = "0, 2240.09130859375, -70.5344467163086, 26.5068187713623",
	["Montgomery: Biowaste Well"] = "0, 1277.96606445313, 292.559906005859, 19.5546875",
	["Los Santos: Stadium"] = "0, 2684.78198242188, -1689.56359863281, 9.43039894104004",
	["Interior: Helena room"] = "3, 291.282989, 310.031982, 999.148437",
	["Los Santos: Tiki Theater"] = "0, 2348.78637695313, -1463.54272460938, 24",
	["Interior: Liberty city inside"] = "1, -794.806396, 497.738037, 1376.195312",
	["Dillimore: Police Departament"] = "0, 635.456298828125, -571.612915039063, 16.3359375",
	["Los Santos: Highest building of Los Santos"] = "0, 1531.17175292969, -1357.61804199219, 329.453460693359",
	["Las Venturas: Girls XXX Strip Club"] = "0, 2506.6494140625, 2129.15478515625, 10.8203125",
	["Palomino Creek: Rusty Wheelchair"] = "0, 2123.24487304688, -90.2263793945313, 2.16398048400879",
	["San Fierro: Zero's RC Shop"] = "0, -2245.77856445313, 128.705490112305, 35.3203125",
	["Interior: Sweets garage"] = "0, 2522.000000, -1673.383911, 14.866223",
	["Interior: Lil probe inn"] = "18, -227.027999, 1401.229980, 27.765625",
	["Interior: B Dups house"] = "3, 1527.229980, -11.574499, 1002.097106",
	["Interior: Sweets house"] = "1, 2527.654052, -1679.388305, 1015.498596",
	["San Fierro: Wang Cars"] = "0, -1990.1318359375, 288.736297607422, 34.149341583252",
	["Los Santos: Ten Green Bottles"] = "0, 2304.39965820313, -1651.30908203125, 14.5202884674072",
	["San Fierro: Zombotech Corporation"] = "0, -1921.11633300781, 721.838928222656, 45.4453125"
}
local var_0_47 = var_0_15.bool(var_0_18.settings.infopanel)
local var_0_48 = {
	session_duration = 0,
	afk_duration = 0,
	session_duration_NextDay = 0,
	answers_session = 0,
	answers_session_NextDay = 0,
	gotoNextDay = false,
	afk_duration_NextDay = 0
}
local var_0_49 = {
	id = 0,
	lastIP = "",
	lastIP_isp = "",
	distance = 0,
	nick = "",
	regIP_country = "",
	lastIP_country = "",
	regIP_isp = "",
	lastIP_city = "",
	regIP_city = "",
	regIP = ""
}
local var_0_50 = {
	autolovlyago = false,
	autolovlya_time = 0,
	autolovlyaWinState = var_0_15.bool(false)
}
local var_0_51 = false
local var_0_52 = ""
local var_0_53 = {
	{
		x = -1,
		y = 1
	},
	{
		x = 1,
		y = -1
	},
	{
		x = 1,
		y = 1
	},
	{
		x = -1,
		y = -1
	}
}
local var_0_54 = {
	showErrorWhObjects = false,
	showErrorPlayerChecker = false,
	showErrorWhObjects_ignore = false
}
local var_0_55 = var_0_15.char[256]()
local var_0_56 = {}
local var_0_57 = {
	code = var_0_1.ImVec4(1, 1, 1, 1),
	reload = var_0_1.ImVec4(1, 1, 1, 1),
	check_update = var_0_1.ImVec4(1, 1, 1, 1),
	unload = var_0_1.ImVec4(1, 1, 1, 1)
}
local var_0_58 = {
	tmp_clr_infopanel = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_infopanel),
	tmp_clr_far_chat = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_far_chat),
	tmp_clr_monitoring = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_monitoring),
	tmp_clr_monitoring_join = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_monitoring_join),
	tmp_clr_monitoring_quit0 = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_monitoring_quit0),
	tmp_clr_monitoring_quit1 = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_monitoring_quit1),
	tmp_clr_monitoring_quit2 = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_monitoring_quit2),
	tmp_clr_admins_online = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_admins_online),
	tmp_clr_players_online = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_players_online),
	tmp_alvl1 = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.alvl1),
	tmp_alvl2 = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.alvl2),
	tmp_alvl3 = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.alvl3),
	tmp_alvl4 = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.alvl4),
	tmp_alvl5 = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.alvl5),
	tmp_alvlyt = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.alvlyt),
	tmp_afk = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_afk),
	tmp_spec = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.clr_spec),
	tmp_wh_kvadrat_color = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.wh_kvadrat_color),
	tmp_wh_line_color = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.wh_line_color),
	tmp_wh_skelet_color = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.wh_skelet_color),
	tmp_obj_wh_line_color = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.obj_wh_line_color),
	tmp_obj_wh_text_color = var_0_1.ColorConvertU32ToFloat4(var_0_18.color_editor.obj_wh_text_color),
	tmp_my_bullets_col_vec4_stats = var_0_1.ColorConvertU32ToFloat4(var_0_18.my_bullets.col_vec4_stats),
	tmp_my_bullets_col_vec4_ped = var_0_1.ColorConvertU32ToFloat4(var_0_18.my_bullets.col_vec4_ped),
	tmp_my_bullets_col_vec4_car = var_0_1.ColorConvertU32ToFloat4(var_0_18.my_bullets.col_vec4_car),
	tmp_my_bullets_col_vec4_dynam = var_0_1.ColorConvertU32ToFloat4(var_0_18.my_bullets.col_vec4_dynam),
	tmp_my_bullets_col_vec4_unknown = var_0_1.ColorConvertU32ToFloat4(var_0_18.my_bullets.col_vec4_unknown),
	tmp_other_bullets_col_vec4_stats = var_0_1.ColorConvertU32ToFloat4(var_0_18.other_bullets.col_vec4_stats),
	tmp_other_bullets_col_vec4_ped = var_0_1.ColorConvertU32ToFloat4(var_0_18.other_bullets.col_vec4_ped),
	tmp_other_bullets_col_vec4_car = var_0_1.ColorConvertU32ToFloat4(var_0_18.other_bullets.col_vec4_car),
	tmp_other_bullets_col_vec4_dynam = var_0_1.ColorConvertU32ToFloat4(var_0_18.other_bullets.col_vec4_dynam),
	tmp_other_bullets_col_vec4_unknown = var_0_1.ColorConvertU32ToFloat4(var_0_18.other_bullets.col_vec4_unknown)
}
local var_0_59 = {
	clr_infopanel = var_0_15.float[4](var_0_58.tmp_clr_infopanel.x, var_0_58.tmp_clr_infopanel.y, var_0_58.tmp_clr_infopanel.z, var_0_58.tmp_clr_infopanel.w),
	clr_far_chat = var_0_15.float[4](var_0_58.tmp_clr_far_chat.x, var_0_58.tmp_clr_far_chat.y, var_0_58.tmp_clr_far_chat.z, var_0_58.tmp_clr_far_chat.w),
	clr_monitoring = var_0_15.float[4](var_0_58.tmp_clr_monitoring.x, var_0_58.tmp_clr_monitoring.y, var_0_58.tmp_clr_monitoring.z, var_0_58.tmp_clr_monitoring.w),
	clr_monitoring_join = var_0_15.float[4](var_0_58.tmp_clr_monitoring_join.x, var_0_58.tmp_clr_monitoring_join.y, var_0_58.tmp_clr_monitoring_join.z, var_0_58.tmp_clr_monitoring_join.w),
	clr_monitoring_quit0 = var_0_15.float[4](var_0_58.tmp_clr_monitoring_quit0.x, var_0_58.tmp_clr_monitoring_quit0.y, var_0_58.tmp_clr_monitoring_quit0.z, var_0_58.tmp_clr_monitoring_quit0.w),
	clr_monitoring_quit1 = var_0_15.float[4](var_0_58.tmp_clr_monitoring_quit1.x, var_0_58.tmp_clr_monitoring_quit1.y, var_0_58.tmp_clr_monitoring_quit1.z, var_0_58.tmp_clr_monitoring_quit1.w),
	clr_monitoring_quit2 = var_0_15.float[4](var_0_58.tmp_clr_monitoring_quit2.x, var_0_58.tmp_clr_monitoring_quit2.y, var_0_58.tmp_clr_monitoring_quit2.z, var_0_58.tmp_clr_monitoring_quit2.w),
	clr_admins_online = var_0_15.float[4](var_0_58.tmp_clr_admins_online.x, var_0_58.tmp_clr_admins_online.y, var_0_58.tmp_clr_admins_online.z, var_0_58.tmp_clr_admins_online.w),
	clr_players_online = var_0_15.float[4](var_0_58.tmp_clr_players_online.x, var_0_58.tmp_clr_players_online.y, var_0_58.tmp_clr_players_online.z, var_0_58.tmp_clr_players_online.w),
	clr_alvl1 = var_0_15.float[4](var_0_58.tmp_alvl1.x, var_0_58.tmp_alvl1.y, var_0_58.tmp_alvl1.z, var_0_58.tmp_alvl1.w),
	clr_alvl2 = var_0_15.float[4](var_0_58.tmp_alvl2.x, var_0_58.tmp_alvl2.y, var_0_58.tmp_alvl2.z, var_0_58.tmp_alvl2.w),
	clr_alvl3 = var_0_15.float[4](var_0_58.tmp_alvl3.x, var_0_58.tmp_alvl3.y, var_0_58.tmp_alvl3.z, var_0_58.tmp_alvl3.w),
	clr_alvl4 = var_0_15.float[4](var_0_58.tmp_alvl4.x, var_0_58.tmp_alvl4.y, var_0_58.tmp_alvl4.z, var_0_58.tmp_alvl4.w),
	clr_alvl5 = var_0_15.float[4](var_0_58.tmp_alvl5.x, var_0_58.tmp_alvl5.y, var_0_58.tmp_alvl5.z, var_0_58.tmp_alvl5.w),
	clr_alvlyt = var_0_15.float[4](var_0_58.tmp_alvlyt.x, var_0_58.tmp_alvlyt.y, var_0_58.tmp_alvlyt.z, var_0_58.tmp_alvlyt.w),
	afk_clr = var_0_15.float[4](var_0_58.tmp_afk.x, var_0_58.tmp_afk.y, var_0_58.tmp_afk.z, var_0_58.tmp_afk.w),
	spec_clr = var_0_15.float[4](var_0_58.tmp_spec.x, var_0_58.tmp_spec.y, var_0_58.tmp_spec.z, var_0_58.tmp_spec.w),
	wh_kvadrat_color = var_0_15.float[4](var_0_58.tmp_wh_kvadrat_color.x, var_0_58.tmp_wh_kvadrat_color.y, var_0_58.tmp_wh_kvadrat_color.z, var_0_58.tmp_wh_kvadrat_color.w),
	wh_line_color = var_0_15.float[4](var_0_58.tmp_wh_line_color.x, var_0_58.tmp_wh_line_color.y, var_0_58.tmp_wh_line_color.z, var_0_58.tmp_wh_line_color.w),
	obj_wh_line_color = var_0_15.float[4](var_0_58.tmp_obj_wh_line_color.x, var_0_58.tmp_obj_wh_line_color.y, var_0_58.tmp_obj_wh_line_color.z, var_0_58.tmp_obj_wh_line_color.w),
	obj_wh_text_color = var_0_15.float[4](var_0_58.tmp_obj_wh_text_color.x, var_0_58.tmp_obj_wh_text_color.y, var_0_58.tmp_obj_wh_text_color.z, var_0_58.tmp_obj_wh_text_color.w),
	wh_skelet_color = var_0_15.float[4](var_0_58.tmp_wh_skelet_color.x, var_0_58.tmp_wh_skelet_color.y, var_0_58.tmp_wh_skelet_color.z, var_0_58.tmp_wh_skelet_color.w)
}
local var_0_60 = {
	{
		transition = 0,
		clock = 0,
		alpha = 0,
		degree_polygon = 0,
		circle_radius = 0,
		draw_polygon = false,
		timer = 0,
		step_alpha = 1,
		thickness = 0,
		col4 = {
			[0] = 0,
			0,
			0,
			0
		},
		origin = {
			z = 0,
			x = 0,
			y = 0
		},
		target = {
			z = 0,
			x = 0,
			y = 0
		}
	}
}
local var_0_61 = {
	my_bullets = {
		draw = var_0_15.bool(var_0_18.my_bullets.draw),
		draw_polygon = var_0_15.bool(var_0_18.my_bullets.draw_polygon),
		thickness = var_0_15.float(var_0_18.my_bullets.thickness),
		timer = var_0_15.float(var_0_18.my_bullets.timer),
		step_alpha = var_0_15.float(var_0_18.my_bullets.step_alpha),
		circle_radius = var_0_15.float(var_0_18.my_bullets.circle_radius),
		degree_polygon = var_0_15.int(var_0_18.my_bullets.degree_polygon),
		transition = var_0_15.float(var_0_18.my_bullets.transition),
		col_vec4 = {
			stats = var_0_15.float[4](var_0_58.tmp_my_bullets_col_vec4_stats.x, var_0_58.tmp_my_bullets_col_vec4_stats.y, var_0_58.tmp_my_bullets_col_vec4_stats.z, var_0_58.tmp_my_bullets_col_vec4_stats.w),
			ped = var_0_15.float[4](var_0_58.tmp_my_bullets_col_vec4_ped.x, var_0_58.tmp_my_bullets_col_vec4_ped.y, var_0_58.tmp_my_bullets_col_vec4_ped.z, var_0_58.tmp_my_bullets_col_vec4_ped.w),
			car = var_0_15.float[4](var_0_58.tmp_my_bullets_col_vec4_car.x, var_0_58.tmp_my_bullets_col_vec4_car.y, var_0_58.tmp_my_bullets_col_vec4_car.z, var_0_58.tmp_my_bullets_col_vec4_car.w),
			dynam = var_0_15.float[4](var_0_58.tmp_my_bullets_col_vec4_dynam.x, var_0_58.tmp_my_bullets_col_vec4_dynam.y, var_0_58.tmp_my_bullets_col_vec4_dynam.z, var_0_58.tmp_my_bullets_col_vec4_dynam.w),
			unknown = var_0_15.float[4](var_0_58.tmp_my_bullets_col_vec4_unknown.x, var_0_58.tmp_my_bullets_col_vec4_unknown.y, var_0_58.tmp_my_bullets_col_vec4_unknown.z, var_0_58.tmp_my_bullets_col_vec4_unknown.w)
		}
	},
	other_bullets = {
		draw = var_0_15.bool(var_0_18.other_bullets.draw),
		draw_polygon = var_0_15.bool(var_0_18.other_bullets.draw_polygon),
		thickness = var_0_15.float(var_0_18.other_bullets.thickness),
		timer = var_0_15.float(var_0_18.other_bullets.timer),
		step_alpha = var_0_15.float(var_0_18.other_bullets.step_alpha),
		circle_radius = var_0_15.float(var_0_18.other_bullets.circle_radius),
		degree_polygon = var_0_15.int(var_0_18.other_bullets.degree_polygon),
		transition = var_0_15.float(var_0_18.other_bullets.transition),
		col_vec4 = {
			stats = var_0_15.float[4](var_0_58.tmp_other_bullets_col_vec4_stats.x, var_0_58.tmp_other_bullets_col_vec4_stats.y, var_0_58.tmp_other_bullets_col_vec4_stats.z, var_0_58.tmp_other_bullets_col_vec4_stats.w),
			ped = var_0_15.float[4](var_0_58.tmp_other_bullets_col_vec4_ped.x, var_0_58.tmp_other_bullets_col_vec4_ped.y, var_0_58.tmp_other_bullets_col_vec4_ped.z, var_0_58.tmp_other_bullets_col_vec4_ped.w),
			car = var_0_15.float[4](var_0_58.tmp_other_bullets_col_vec4_car.x, var_0_58.tmp_other_bullets_col_vec4_car.y, var_0_58.tmp_other_bullets_col_vec4_car.z, var_0_58.tmp_other_bullets_col_vec4_car.w),
			dynam = var_0_15.float[4](var_0_58.tmp_other_bullets_col_vec4_dynam.x, var_0_58.tmp_other_bullets_col_vec4_dynam.y, var_0_58.tmp_other_bullets_col_vec4_dynam.z, var_0_58.tmp_other_bullets_col_vec4_dynam.w),
			unknown = var_0_15.float[4](var_0_58.tmp_other_bullets_col_vec4_unknown.x, var_0_58.tmp_other_bullets_col_vec4_unknown.y, var_0_58.tmp_other_bullets_col_vec4_unknown.z, var_0_58.tmp_other_bullets_col_vec4_unknown.w)
		}
	}
}
local var_0_62 = {
	workers_check = false,
	workers = {}
}
local var_0_63 = {
	var_0_14("/mat - открыть меню MATools."),
	var_0_14("/update_mat - обновить тулс до актуальной версии(если доступно обновление)."),
	var_0_14("/check_update_mat - проверить наличие обновлений MATools."),
	var_0_14("/slap [ID] [Кол-во раз(необязательно)] - подкинуть игроков несколько раз(если\nввели второй аргумент, в ином случае подкинет 1 раз)."),
	var_0_14("/pveh [ID] [ID car] [Color1] [Color2] [Кол-во раз(необязательно)] - создать\nнесколько авто(аналогично /slap)"),
	var_0_14("/tempskin [skin id] [ID] [ID](неограниченное кол-во людей) - выдать скин с\nвведённым id сразу нескольким людям."),
	var_0_14("/spawn, /az, /gethere, /freeze [ID] [ID](неограниченное кол-во людей) - также\nможно вписывать нескоклько id."),
	var_0_14("/unfreeze, /rem, /frem, /flip [ID] [ID](неограниченное кол-во людей) - также\nможно вписывать нескоклько id."),
	var_0_14("/mh - открыть список id и названий машин и оружий."),
	var_0_14("/vskin [skin id] - установить себе визуальный скин."),
	var_0_14("/off_mat - быстро отключить выбранный функционал тулса."),
	var_0_14("/drivers - выведет в чат всех водителей транспорта в зоне стрима."),
	var_0_14("/tpveh d - телепортировать ближайшую машину с водителем, которая \nнаходится в поле зрения."),
	var_0_14("/road - телепортироваться на ближайшую дорогу."),
	var_0_14("/ghetto - открыть редактор гетто-зон."),
	var_0_14("/ghetto_zone [zone id] - телепортировать на гетто-зону с введённым айди."),
	var_0_14("/txt_lines [file name] - отправить в чат сампа каждую строчку из .txt файла\n(Файл обязательно должен быть в папке MATools).")
}
local var_0_64 = {
	form_cmds = {
		"alldelv",
		"fuelvehs",
		"vcmute",
		"vcunmute",
		"mute",
		"unmute",
		"offmute",
		"offunmute",
		"warn",
		"unwarn",
		"offwarn",
		"offunwarn",
		"bgun",
		"unbgun",
		"ban",
		"unban",
		"offban",
		"prison",
		"jail",
		"unprison",
		"unjail",
		"offprison",
		"offjail",
		"offunprison",
		"offunjail",
		"kick",
		"msg",
		"slap",
		"freeze",
		"unfreeze",
		"pveh",
		"sethp",
		"givecupon",
		"areanimate",
		"tempskin",
		"auninvite",
		"hc",
		"spawn",
		"soffban"
	},
	again_cmds = {
		"spawn",
		"az",
		"gethere",
		"freeze",
		"unfreeze",
		"rem",
		"frem",
		"flip"
	}
}
local var_0_65 = {}
local var_0_66 = {
	active_forma = false,
	done_forma = "",
	forma_text = "",
	last_forma = "",
	formStartTime = os.time()
}
local var_0_67 = false
local var_0_68 = false
local var_0_69 = var_0_2.cast("int (__thiscall*)(void*, float*, int, bool)", 6177408)
local var_0_70 = {
	sampLoaded = false
}
local var_0_71 = false
local var_0_72 = "Удалить"
local var_0_73 = false
local var_0_74 = {
	all_anims = {
		"abseil",
		"arrestgun",
		"atm",
		"bike_elbowl",
		"bike_elbowr",
		"bike_fallr",
		"bike_fall_off",
		"bike_pickupl",
		"bike_pickupr",
		"bike_pullupl",
		"bike_pullupr",
		"bomber",
		"car_alignhi_lhs",
		"car_alignhi_rhs",
		"car_align_lhs",
		"car_align_rhs",
		"car_closedoorl_lhs",
		"car_closedoorl_rhs",
		"car_closedoor_lhs",
		"car_closedoor_rhs",
		"car_close_lhs",
		"car_close_rhs",
		"car_crawloutrhs",
		"car_dead_lhs",
		"car_dead_rhs",
		"car_doorlocked_lhs",
		"car_doorlocked_rhs",
		"car_fallout_lhs",
		"car_fallout_rhs",
		"car_getinl_lhs",
		"car_getinl_rhs",
		"car_getin_lhs",
		"car_getin_rhs",
		"car_getoutl_lhs",
		"car_getoutl_rhs",
		"car_getout_lhs",
		"car_getout_rhs",
		"car_hookertalk",
		"car_jackedlhs",
		"car_jackedrhs",
		"car_jumpin_lhs",
		"car_lb",
		"car_lb_pro",
		"car_lb_weak",
		"car_ljackedlhs",
		"car_ljackedrhs",
		"car_lshuffle_rhs",
		"car_lsit",
		"car_open_lhs",
		"car_open_rhs",
		"car_pulloutl_lhs",
		"car_pulloutl_rhs",
		"car_pullout_lhs",
		"car_pullout_rhs",
		"car_qjacked",
		"car_rolldoor",
		"car_rolldoorlo",
		"car_rollout_lhs",
		"car_rollout_rhs",
		"car_shuffle_rhs",
		"car_sit",
		"car_sitp",
		"car_sitplo",
		"car_sit_pro",
		"car_sit_weak",
		"car_tune_radio",
		"climb_idle",
		"climb_jump",
		"climb_jump2fall",
		"climb_jump_b",
		"climb_pull",
		"climb_stand",
		"climb_stand_finish",
		"cower",
		"crouch_roll_l",
		"crouch_roll_r",
		"dam_arml_frmbk",
		"dam_arml_frmft",
		"dam_arml_frmlt",
		"dam_armr_frmbk",
		"dam_armr_frmft",
		"dam_armr_frmrt",
		"dam_legl_frmbk",
		"dam_legl_frmft",
		"dam_legl_frmlt",
		"dam_legr_frmbk",
		"dam_legr_frmft",
		"dam_legr_frmrt",
		"dam_stomach_frmbk",
		"dam_stomach_frmft",
		"dam_stomach_frmlt",
		"dam_stomach_frmrt",
		"door_lhinge_o",
		"door_rhinge_o",
		"drivebyl_l",
		"drivebyl_r",
		"driveby_l",
		"driveby_r",
		"drive_boat",
		"drive_boat_back",
		"drive_boat_l",
		"drive_boat_r",
		"drive_l",
		"drive_lo_l",
		"drive_lo_r",
		"drive_l_pro",
		"drive_l_pro_slow",
		"drive_l_slow",
		"drive_l_weak",
		"drive_l_weak_slow",
		"drive_r",
		"drive_r_pro",
		"drive_r_pro_slow",
		"drive_r_slow",
		"drive_r_weak",
		"drive_r_weak_slow",
		"drive_truck",
		"drive_truck_back",
		"drive_truck_l",
		"drive_truck_r",
		"drown",
		"duck_cower",
		"endchat_01",
		"endchat_02",
		"endchat_03",
		"ev_dive",
		"ev_step",
		"facanger",
		"facgum",
		"facsurp",
		"facsurpm",
		"factalk",
		"facurios",
		"fall_back",
		"fall_collapse",
		"fall_fall",
		"fall_front",
		"fall_glide",
		"fall_land",
		"fall_skydive",
		"fight2idle",
		"fighta_1",
		"fighta_2",
		"fighta_3",
		"fighta_block",
		"fighta_g",
		"fighta_m",
		"fightidle",
		"fightshb",
		"fightshf",
		"fightsh_bwd",
		"fightsh_fwd",
		"fightsh_left",
		"fightsh_right",
		"flee_lkaround_01",
		"floor_hit",
		"floor_hit_f",
		"fucku",
		"gang_gunstand",
		"gas_cwr",
		"getup",
		"getup_front",
		"gum_eat",
		"guncrouchbwd",
		"guncrouchfwd",
		"gunmove_bwd",
		"gunmove_fwd",
		"gunmove_l",
		"gunmove_r",
		"gun_2_idle",
		"gun_butt",
		"gun_butt_crouch",
		"gun_stand",
		"handscower",
		"handsup",
		"hita_1",
		"hita_2",
		"hita_3",
		"hit_back",
		"hit_behind",
		"hit_front",
		"hit_gun_butt",
		"hit_l",
		"hit_r",
		"hit_walk",
		"hit_wall",
		"idlestance_fat",
		"idlestance_old",
		"idle_armed",
		"idle_chat",
		"idle_csaw",
		"idle_gang1",
		"idle_hbhb",
		"idle_rocket",
		"idle_stance",
		"idle_taxi",
		"idle_tired",
		"jetpack_idle",
		"jog_femalea",
		"jog_malea",
		"jump_glide",
		"jump_land",
		"jump_launch",
		"jump_launch_r",
		"kart_drive",
		"kart_l",
		"kart_lb",
		"kart_r",
		"kd_left",
		"kd_right",
		"ko_shot_face",
		"ko_shot_front",
		"ko_shot_stom",
		"ko_skid_back",
		"ko_skid_front",
		"ko_spin_l",
		"ko_spin_r",
		"pass_smoke_in_car",
		"phone_in",
		"phone_out",
		"phone_talk",
		"player_sneak",
		"player_sneak_walkstart",
		"roadcross",
		"roadcross_female",
		"roadcross_gang",
		"roadcross_old",
		"run_1armed",
		"run_armed",
		"run_civi",
		"run_csaw",
		"run_fat",
		"run_fatold",
		"run_gang1",
		"run_left",
		"run_old",
		"run_player",
		"run_right",
		"run_rocket",
		"run_stop",
		"run_stopr",
		"run_wuzi",
		"seat_down",
		"seat_idle",
		"seat_up",
		"shot_leftp",
		"shot_partial",
		"shot_partial_b",
		"shot_rightp",
		"shove_partial",
		"smoke_in_car",
		"sprint_civi",
		"sprint_panic",
		"sprint_wuzi",
		"swat_run",
		"swim_tread",
		"tap_hand",
		"tap_handp",
		"turn_180",
		"turn_l",
		"turn_r",
		"walk_armed",
		"walk_civi",
		"walk_csaw",
		"walk_doorpartial",
		"walk_drunk",
		"walk_fat",
		"walk_fatold",
		"walk_gang1",
		"walk_gang2",
		"walk_old",
		"walk_player",
		"walk_rocket",
		"walk_shuffle",
		"walk_start",
		"walk_start_armed",
		"walk_start_csaw",
		"walk_start_rocket",
		"walk_wuzi",
		"weapon_crouch",
		"woman_idlestance",
		"woman_run",
		"woman_runbusy",
		"woman_runfatold",
		"woman_runpanic",
		"woman_runsexy",
		"woman_walkbusy",
		"woman_walkfatold",
		"woman_walknorm",
		"woman_walkold",
		"woman_walkpro",
		"woman_walksexy",
		"woman_walkshop",
		"xpressscratch"
	},
	guns_anims = {
		"PYTHON_CROUCHFIRE",
		"PYTHON_FIRE",
		"PYTHON_FIRE_POOR",
		"PYTHON_CROCUCHRELOAD",
		"RIFLE_CROUCHFIRE",
		"RIFLE_CROUCHLOAD",
		"RIFLE_FIRE",
		"RIFLE_FIRE_POOR",
		"RIFLE_LOAD",
		"SHOTGUN_CROUCHFIRE",
		"SHOTGUN_FIRE",
		"SHOTGUN_FIRE_POOR",
		"SILENCED_CROUCH_RELOAD",
		"SILENCED_CROUCH_FIRE",
		"SILENCED_FIRE",
		"SILENCED_RELOAD",
		"TEC_crouchfire",
		"TEC_crouchreload",
		"TEC_fire",
		"TEC_reload",
		"UZI_crouchfire",
		"UZI_crouchreload",
		"UZI_fire",
		"UZI_fire_poor",
		"UZI_reload",
		"idle_rocket",
		"Rocket_Fire",
		"run_rocket",
		"walk_rocket",
		"WALK_start_rocket",
		"WEAPON_sniper"
	}
}
local var_0_75 = {}
local var_0_76 = var_0_15.float[4](bit.rshift(bit.band(var_0_18.color_editor.a_chat_color, 16711680), 16) / 255, bit.rshift(bit.band(var_0_18.color_editor.a_chat_color, 65280), 8) / 255, bit.band(var_0_18.color_editor.a_chat_color, 255) / 255, bit.rshift(bit.band(var_0_18.color_editor.a_chat_color, 4278190080), 24) / 255)
local var_0_77 = var_0_15.float[4](bit.rshift(bit.band(var_0_18.color_editor.hc_chat_color, 16711680), 16) / 255, bit.rshift(bit.band(var_0_18.color_editor.hc_chat_color, 65280), 8) / 255, bit.band(var_0_18.color_editor.hc_chat_color, 255) / 255, bit.rshift(bit.band(var_0_18.color_editor.hc_chat_color, 4278190080), 24) / 255)
local var_0_78 = var_0_15.float[4](bit.rshift(bit.band(var_0_18.color_editor.ans_chat_color_helpers, 16711680), 16) / 255, bit.rshift(bit.band(var_0_18.color_editor.ans_chat_color_helpers, 65280), 8) / 255, bit.band(var_0_18.color_editor.ans_chat_color_helpers, 255) / 255, bit.rshift(bit.band(var_0_18.color_editor.ans_chat_color_helpers, 4278190080), 24) / 255)
local var_0_79 = var_0_15.float[4](bit.rshift(bit.band(var_0_18.color_editor.ans_chat_color_admins, 16711680), 16) / 255, bit.rshift(bit.band(var_0_18.color_editor.ans_chat_color_admins, 65280), 8) / 255, bit.band(var_0_18.color_editor.ans_chat_color_admins, 255) / 255, bit.rshift(bit.band(var_0_18.color_editor.ans_chat_color_admins, 4278190080), 24) / 255)
local var_0_80 = var_0_15.float[4](bit.rshift(bit.band(var_0_18.color_editor.answerask_chat_color, 16711680), 16) / 255, bit.rshift(bit.band(var_0_18.color_editor.answerask_chat_color, 65280), 8) / 255, bit.band(var_0_18.color_editor.answerask_chat_color, 255) / 255, bit.rshift(bit.band(var_0_18.color_editor.answerask_chat_color, 4278190080), 24) / 255)
local var_0_81 = var_0_15.float[4](bit.rshift(bit.band(var_0_18.color_editor.answerrep_chat_color, 16711680), 16) / 255, bit.rshift(bit.band(var_0_18.color_editor.answerrep_chat_color, 65280), 8) / 255, bit.band(var_0_18.color_editor.answerrep_chat_color, 255) / 255, bit.rshift(bit.band(var_0_18.color_editor.answerrep_chat_color, 4278190080), 24) / 255)
local var_0_82 = {
	deleteBtnName_RepButton = "Удалить кнопку",
	repButton_state = "Создание",
	showErrorrepButton = false,
	editRepBtns = 0,
	name_repButton = var_0_15.char[256](),
	content_repButton = var_0_15.char[2048](),
	do_repbtns = var_0_15.char[131072](),
	editRepButtonWinState = var_0_15.bool(false)
}
local var_0_83 = {
	settingswpos = var_0_1.Cond.FirstUseEver
}
local var_0_84 = -1
local var_0_85 = {
	binder_state = "Создание",
	showErrorBinder = false,
	showBinderTagsWinState = var_0_15.bool(false),
	deleteBinderWinState = var_0_15.bool(false),
	editBinderWinState = var_0_15.bool(false),
	activation_binder = var_0_15.char[256](),
	activation_text_binder = var_0_15.char[2048](),
	title_binder = var_0_15.char[256](),
	content_binder = var_0_15.char[131072]()
}
local var_0_86 = renderCreateFont("Tahoma", 9, FCR_BOLD + FCR_SHADOW)
local var_0_87 = false
local var_0_88 = 5.2
local var_0_89 = "https://raw.githubusercontent.com/deffix-def/MATools/main/update.ini"
local var_0_90 = getWorkingDirectory() .. "\\update.ini"
local var_0_91 = "https://github.com/deffix-def/MATools/raw/main/MATools.luac"
local var_0_92 = thisScript().path

function check_update()
	downloadUrlToFile(var_0_89, var_0_90, function(arg_2_0, arg_2_1)
		if arg_2_1 == var_0_0.STATUS_ENDDOWNLOADDATA then
			local var_2_0 = var_0_3.load(nil, var_0_90)

			if not var_2_0 then
				sampAddChatMessage(var_0_16 .. "Нет доступных обновлений!", -1)

				return
			end

			if var_2_0.info.vers > var_0_88 then
				sampAddChatMessage(var_0_16 .. "Доступна {32CD32}новая {FFFFFF}версия скрипта: {32CD32}v" .. tostring(var_2_0.info.vers) .. "{FFFFFF}. Введите /update_mat, чтобы обновить!", -1)
				sampRegisterChatCommand("update_mat", function()
					var_0_87 = true
				end)
			else
				sampAddChatMessage(var_0_16 .. "Нет доступных обновлений!", -1)
			end

			os.remove(var_0_90)
		end
	end)
end

function loadJsonFile(arg_4_0)
	local var_4_0, var_4_1 = io.open(arg_4_0, "r")

	if not var_4_0 then
		local var_4_2, var_4_3 = io.open(arg_4_0, "w")

		if not var_4_2 then
			sampAddChatMessage(var_0_16 .. "Ошибка создания файла: " .. var_4_3, -1)

			return {}
		end

		if arg_4_0 == getWorkingDirectory() .. "\\MATools\\repButtons.json" then
			local var_4_4 = {}

			table.insert(var_4_4, {
				deystv = "",
				name = var_0_14("Рп процесс"),
				content = var_0_14("<author_name>, администрация не вмешивается в ролевой процесс.")
			})
			table.insert(var_4_4, {
				deystv = "",
				name = var_0_14("Нет инфы"),
				content = var_0_14("<author_name>, к сожалению, мы не владеем данной информацией..")
			})
			table.insert(var_4_4, {
				deystv = "",
				name = var_0_14("Вопросы в /ask"),
				content = var_0_14("<author_name>, для вопросов существует /ask.")
			})
			table.insert(var_4_4, {
				deystv = "",
				name = var_0_14("Уточните"),
				content = var_0_14("<author_name>, уточните суть Вашей жалобы.")
			})

			local var_4_5 = var_0_4.encode(var_4_4)

			var_4_2:write(var_4_5)
			var_4_2:close()

			return var_4_4
		else
			var_4_2:write("{}")
			var_4_2:close()

			return {}
		end
	end

	local var_4_6 = var_4_0:read("*a")

	var_4_0:close()

	local var_4_7, var_4_8, var_4_9 = var_0_4.decode(var_4_6, 1, nil)

	if var_4_9 then
		sampAddChatMessage(var_0_16 .. "Ошибка сериализации: " .. var_4_9, -1)

		return {}
	end

	return var_4_7
end

local var_0_93 = getWorkingDirectory() .. "\\MATools\\repButtons.json"
local var_0_94 = getWorkingDirectory() .. "\\MATools\\binders.json"
local var_0_95 = getWorkingDirectory() .. "\\MATools\\specButtons.json"
local var_0_96 = getWorkingDirectory() .. "\\MATools\\checkerPlayers.json"
local var_0_97 = getWorkingDirectory() .. "\\MATools\\mpCoordsFile.json"
local var_0_98 = getWorkingDirectory() .. "\\MATools\\WHobjects.json"
local var_0_99 = getWorkingDirectory() .. "\\MATools\\WHobjects_ignore.json"
local var_0_100 = loadJsonFile(var_0_93)
local var_0_101 = loadJsonFile(var_0_95)
local var_0_102 = loadJsonFile(var_0_94)
local var_0_103 = loadJsonFile(var_0_96)
local var_0_104 = loadJsonFile(var_0_97)
local var_0_105 = loadJsonFile(var_0_98)
local var_0_106 = loadJsonFile(var_0_99)

function var_0_1.ToggleButton(arg_5_0, arg_5_1)
	local var_5_0 = false

	if LastActiveTime == nil then
		LastActiveTime = {}
	end

	if LastActive == nil then
		LastActive = {}
	end

	local function var_5_1(arg_6_0)
		return arg_6_0 < 0 and 0 or arg_6_0 > 1 and 1 or arg_6_0
	end

	local var_5_2 = var_0_1.GetCursorScreenPos()
	local var_5_3 = var_0_1.GetWindowDrawList()
	local var_5_4 = var_0_1.GetTextLineHeightWithSpacing()
	local var_5_5 = var_5_4 * 1.7
	local var_5_6 = var_5_4 * 0.5
	local var_5_7 = type == 2 and 0.1 or 0.15
	local var_5_8 = var_0_1.GetCursorPos()

	if var_0_1.InvisibleButton(arg_5_0, var_0_1.ImVec2(var_5_5, var_5_4)) then
		arg_5_1[0] = not arg_5_1[0]
		var_5_0 = true
		LastActiveTime[tostring(arg_5_0)] = os.clock()
		LastActive[tostring(arg_5_0)] = true
	end

	var_0_1.SetCursorPos(var_0_1.ImVec2(var_5_8.x + var_5_5 + 8, var_5_8.y + 2.5))
	var_0_1.Text(arg_5_0:gsub("##.+", ""))

	local var_5_9 = arg_5_1[0] and 1 or 0

	if LastActive[tostring(arg_5_0)] then
		local var_5_10 = os.clock() - LastActiveTime[tostring(arg_5_0)]

		if var_5_10 <= var_5_7 then
			local var_5_11 = var_5_1(var_5_10 / var_5_7)

			var_5_9 = arg_5_1[0] and var_5_11 or 1 - var_5_11
		else
			LastActive[tostring(arg_5_0)] = false
		end
	end

	local var_5_12 = arg_5_1[0] and var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_1.GetStyle().Colors[var_0_1.Col.ButtonActive])) or var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_1.GetStyle().Colors[var_0_1.Col.TextDisabled]))

	var_5_3:AddRectFilled(var_5_2, var_0_1.ImVec2(var_5_2.x + var_5_5, var_5_2.y + var_5_4), var_0_1.ColorConvertFloat4ToU32(var_0_1.GetStyle().Colors[var_0_1.Col.FrameBg]), 4)
	var_5_3:AddCircleFilled(var_0_1.ImVec2(var_5_2.x + var_5_6 + var_5_9 * (var_5_5 - var_5_6 * 2), var_5_2.y + var_5_6), var_5_6 - 1.6, var_5_12)

	return var_5_0
end

local var_0_107 = {
	text = " ",
	duration = 1,
	alpha = 0,
	state = "appearing"
}

local function var_0_108(arg_7_0, arg_7_1)
	table.insert(var_0_107, {
		alpha = 0,
		state = "appearing",
		text = arg_7_0,
		duration = arg_7_1
	})
end

local var_0_109 = var_0_1.OnFrame(function()
	return #var_0_107 > 0
end, function(arg_9_0)
	arg_9_0.HideCursor = true

	local var_9_0 = 0.1
	local var_9_1, var_9_2 = getScreenResolution()
	local var_9_3 = 0

	for iter_9_0, iter_9_1 in ipairs(var_0_107) do
		local var_9_4 = var_0_1.CalcTextSize(iter_9_1.text)

		if var_9_3 < var_9_4.x + 60 then
			var_9_3 = var_9_4.x + 60
		end
	end

	var_0_1.SetNextWindowPos(var_0_1.ImVec2(var_9_1 / 2.1 - var_9_3 / 2.5, var_9_2 / 1.13), var_0_1.Cond.FirstUseEver)
	var_0_1.Begin("##notfwindow", _, var_0_1.WindowFlags.AlwaysAutoResize + var_0_1.WindowFlags.NoTitleBar + var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoMove + var_0_1.WindowFlags.NoBackground)

	local var_9_5 = 0

	if #var_0_107 > 1 then
		var_9_5 = 60 * (#var_0_107 - 1) - 12
	else
		var_9_5 = -12
	end

	var_0_1.SetWindowPosVec2(var_0_1.ImVec2(var_9_1 / 2.1 - var_9_3 / 2.5, var_9_2 / 1.13 - var_9_5))

	for iter_9_2 = #var_0_107, 1, -1 do
		local var_9_6 = var_0_107[iter_9_2]

		if var_9_6.state == "appearing" then
			var_9_6.alpha = var_9_6.alpha + var_9_0

			if var_9_6.alpha >= 1 then
				var_9_6.alpha = 1
				var_9_6.state = "displaying"
				var_9_6.display_start = os.clock()
			end
		elseif var_9_6.state == "displaying" then
			if os.clock() - var_9_6.display_start >= var_9_6.duration / 1000 then
				var_9_6.state = "disappearing"
			end
		elseif var_9_6.state == "disappearing" then
			var_9_6.alpha = var_9_6.alpha - var_9_0

			if var_9_6.alpha <= 0 then
				table.remove(var_0_107, iter_9_2)
			end
		end

		var_0_1.PushStyleColor(var_0_1.Col.ChildBg, var_0_1.ImVec4(0.05, 0.05, 0.05, var_9_6.alpha))
		var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.ImVec4(1, 0.01, 0.01, var_9_6.alpha))
		var_0_1.PushStyleColor(var_0_1.Col.Separator, var_0_1.ImVec4(0.98, 0.01, 0.01, var_9_6.alpha))
		var_0_1.PushStyleColor(var_0_1.Col.Text, var_0_1.ImVec4(1, 1, 1, var_9_6.alpha))
		var_0_1.PushStyleVarFloat(var_0_1.StyleVar.ChildRounding, 5)
		var_0_1.BeginChild("notification:" .. iter_9_2, var_0_1.ImVec2(var_9_3 - 15, 55), true, var_0_1.WindowFlags.NoScrollbar + var_0_1.WindowFlags.NoScrollWithMouse)
		var_0_1.PushFont(var_0_75[15])
		var_0_1.SetCursorPosX((var_9_3 - 15 - var_0_1.CalcTextSize(var_0_14("MATools")).x) / 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 3)
		var_0_1.Text(var_0_14("MATools"))
		var_0_1.Separator()
		var_0_1.SetCursorPosX((var_9_3 - 15 - var_0_1.CalcTextSize(var_9_6.text).x) / 2)
		var_0_1.Text(var_9_6.text)
		var_0_1.PopFont()
		var_0_1.EndChild()
		var_0_1.PopStyleVar()
		var_0_1.PopStyleColor(4)
	end

	var_0_1.End()
end)

function var_0_1.Hint(arg_10_0, arg_10_1, arg_10_2)
	local var_10_0 = var_0_1.IsItemHovered()
	local var_10_1 = 0.22
	local var_10_2 = arg_10_2 or 0
	local var_10_3 = true

	if not allHints then
		allHints = {}
	end

	if not allHints[arg_10_0] then
		allHints[arg_10_0] = {
			timer = 0,
			status = false
		}
	end

	if var_10_0 then
		for iter_10_0, iter_10_1 in pairs(allHints) do
			if iter_10_0 ~= arg_10_0 and var_10_1 >= os.clock() - iter_10_1.timer then
				var_10_3 = false
			end
		end
	end

	if var_10_3 and allHints[arg_10_0].status ~= var_10_0 then
		allHints[arg_10_0].status = var_10_0
		allHints[arg_10_0].timer = os.clock() + var_10_2
	end

	var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.GetStyle().Colors[var_0_1.Col.Separator])
	var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))

	if var_10_3 then
		local var_10_4 = os.clock() - allHints[arg_10_0].timer

		if var_10_4 <= var_10_1 then
			local function var_10_5(arg_11_0)
				return arg_11_0 < 0 and 0 or arg_11_0 > 1 and 1 or arg_11_0
			end

			local var_10_6 = var_10_0 and var_10_5(var_10_4 / var_10_1) or var_10_5(1 - var_10_4 / var_10_1)

			var_0_1.PushStyleVarFloat(var_0_1.StyleVar.Alpha, var_10_6)

			local var_10_7 = var_0_1.GetMousePos()
			local var_10_8 = var_0_1.CalcTextSize(arg_10_1)
			local var_10_9 = var_0_1.ImVec2(var_10_7.x - var_10_8.x / 2, var_10_7.y - var_10_8.y - 20)

			var_0_1.SetNextWindowPos(var_10_9, var_0_1.Cond.Always)
			var_0_1.SetTooltip(arg_10_1)
			var_0_1.PopStyleVar()
		elseif var_10_0 then
			local var_10_10 = var_0_1.GetMousePos()
			local var_10_11 = var_0_1.CalcTextSize(arg_10_1)
			local var_10_12 = var_0_1.ImVec2(var_10_10.x - var_10_11.x / 2, var_10_10.y - var_10_11.y - 20)

			var_0_1.SetNextWindowPos(var_10_12, var_0_1.Cond.Always)
			var_0_1.SetTooltip(arg_10_1)
		end
	end

	var_0_1.PopStyleVar()
	var_0_1.PopStyleColor()
end

local var_0_110 = {
	Forms = {
		forms_msg = var_0_18.forms.forms_msg,
		forms_hc = var_0_18.forms.forms_hc,
		forms_slap = var_0_18.forms.forms_slap,
		forms_spawn = var_0_18.forms.forms_spawn,
		forms_freeze = var_0_18.forms.forms_freeze,
		forms_unfreeze = var_0_18.forms.forms_unfreeze,
		forms_pveh = var_0_18.forms.forms_pveh,
		forms_tempskin = var_0_18.forms.forms_tempskin,
		forms_sethp = var_0_18.forms.forms_sethp,
		forms_areanimate = var_0_18.forms.forms_areanimate,
		forms_kick = var_0_18.forms.forms_kick,
		forms_bgun = var_0_18.forms.forms_bgun,
		forms_unbgun = var_0_18.forms.forms_unbgun,
		forms_ban = var_0_18.forms.forms_ban,
		forms_unban = var_0_18.forms.forms_unban,
		forms_offban = var_0_18.forms.forms_offban,
		forms_mute = var_0_18.forms.forms_mute,
		forms_unmute = var_0_18.forms.forms_unmute,
		forms_offmute = var_0_18.forms.forms_offmute,
		forms_offunmute = var_0_18.forms.forms_offunmute,
		forms_warn = var_0_18.forms.forms_warn,
		forms_unwarn = var_0_18.forms.forms_unwarn,
		forms_offwarn = var_0_18.forms.forms_offwarn,
		forms_offunwarn = var_0_18.forms.forms_offunwarn,
		forms_prison = var_0_18.forms.forms_prison,
		forms_unprison = var_0_18.forms.forms_unprison,
		forms_offprison = var_0_18.forms.forms_offprison,
		forms_offunprison = var_0_18.forms.forms_offunprison,
		forms_givecupon = var_0_18.forms.forms_givecupon,
		forms_auninvite = var_0_18.forms.forms_auninvite,
		forms_vcmute = var_0_18.forms.forms_vcmute,
		forms_vcunmute = var_0_18.forms.forms_vcunmute,
		forms_alldelv = var_0_18.forms.forms_alldelv,
		forms_fuelvehs = var_0_18.forms.forms_fuelvehs,
		forms_jail = var_0_18.forms.forms_jail,
		forms_unjail = var_0_18.forms.forms_unjail,
		forms_offjail = var_0_18.forms.forms_offjail,
		forms_offunjail = var_0_18.forms.forms_offunjail,
		forms_soffban = var_0_18.forms.forms_soffban
	}
}
local var_0_111 = {
	Forms = {
		var_0_14("Отправлять"),
		var_0_14("Принимать "),
		var_0_14("Пропускать")
	}
}

local function var_0_112(arg_12_0, arg_12_1)
	local var_12_0 = var_0_111[arg_12_0][var_0_110[arg_12_0][arg_12_1]]

	if arg_12_0 == "Forms" then
		if var_12_0 == var_0_14("Отправлять") then
			var_0_18.forms[arg_12_1] = 1

			var_0_3.save(var_0_18, var_0_17)
		elseif var_12_0 == var_0_14("Принимать ") then
			var_0_18.forms[arg_12_1] = 2

			var_0_3.save(var_0_18, var_0_17)
		elseif var_12_0 == var_0_14("Пропускать") then
			var_0_18.forms[arg_12_1] = 3

			var_0_3.save(var_0_18, var_0_17)
		end
	end
end

function customArrowCombo(arg_13_0, arg_13_1, arg_13_2, arg_13_3)
	var_0_1.TextNew(arg_13_0)
	var_0_1.SameLine()

	local var_13_0 = var_0_1.GetWindowWidth()

	var_0_1.SetCursorPosX(var_13_0 - arg_13_2)
	var_0_1.PushFont(norm)
	var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0.06, 0.07, 0.08, 0))
	var_0_1.PushStyleColor(var_0_1.Col.ButtonActive, var_0_1.ImVec4(0.38, 0.54, 0.86, 1))
	var_0_1.PushStyleColor(var_0_1.Col.ButtonHovered, var_0_1.ImVec4(0.26, 0.27, 0.28, 1))

	if var_0_1.ArrowButton("##left_" .. arg_13_3, var_0_1.Dir.Left) then
		if var_0_110[arg_13_1][arg_13_3] == 1 then
			var_0_110[arg_13_1][arg_13_3] = 3
		else
			var_0_110[arg_13_1][arg_13_3] = math.max(1, var_0_110[arg_13_1][arg_13_3] - 1)
		end

		var_0_112(arg_13_1, arg_13_3)
	end

	var_0_1.SameLine()
	var_0_1.Text(var_0_111[arg_13_1][var_0_110[arg_13_1][arg_13_3]])
	var_0_1.SameLine()

	if var_0_1.ArrowButton("##right_" .. arg_13_3, var_0_1.Dir.Right) then
		if var_0_110[arg_13_1][arg_13_3] == 3 then
			var_0_110[arg_13_1][arg_13_3] = 1
		else
			var_0_110[arg_13_1][arg_13_3] = math.min(#var_0_111[arg_13_1], var_0_110[arg_13_1][arg_13_3] + 1)
		end

		var_0_112(arg_13_1, arg_13_3)
	end

	var_0_1.PopStyleColor(3)
	var_0_1.PopFont()
end

function var_0_1.CustomCheckbox(arg_14_0, arg_14_1, arg_14_2, arg_14_3, arg_14_4)
	local var_14_0 = var_0_1.GetCursorScreenPos()
	local var_14_1 = var_0_1.GetWindowDrawList()
	local var_14_2 = arg_14_0:gsub("##.+", "") or ""
	local var_14_3 = var_0_1.GetTextLineHeightWithSpacing() + 2
	local var_14_4 = arg_14_4 or 0.15

	arg_14_3 = arg_14_3 or false

	local var_14_5 = {
		{
			0.18536826495,
			0.42833250947
		},
		{
			0.44109925858,
			0.70010380622
		},
		{
			0.38825341901,
			0.70010380622
		},
		{
			0.81248970176,
			0.28238693976
		}
	}

	if UI_CUSTOM_CHECKBOX == nil then
		UI_CUSTOM_CHECKBOX = {}
	end

	if UI_CUSTOM_CHECKBOX[arg_14_0] == nil then
		UI_CUSTOM_CHECKBOX[arg_14_0] = {
			h_start = 0,
			hovered = false,
			lines = {
				{
					start = 0,
					anim = false,
					from = var_0_1.ImVec2(0, 0),
					to = var_0_1.ImVec2(var_14_3 * var_14_5[1][1], var_14_3 * var_14_5[1][2])
				},
				{
					start = 0,
					anim = false,
					from = var_0_1.ImVec2(0, 0),
					to = arg_14_1[0] and var_0_1.ImVec2(var_14_3 * var_14_5[2][1], var_14_3 * var_14_5[2][2]) or var_0_1.ImVec2(var_14_3 * var_14_5[1][1], var_14_3 * var_14_5[1][2])
				},
				{
					start = 0,
					anim = false,
					from = var_0_1.ImVec2(0, 0),
					to = var_0_1.ImVec2(var_14_3 * var_14_5[3][1], var_14_3 * var_14_5[3][2])
				},
				{
					start = 0,
					anim = false,
					from = var_0_1.ImVec2(0, 0),
					to = arg_14_1[0] and var_0_1.ImVec2(var_14_3 * var_14_5[4][1], var_14_3 * var_14_5[4][2]) or var_0_1.ImVec2(var_14_3 * var_14_5[3][1], var_14_3 * var_14_5[3][2])
				}
			}
		}
	end

	local var_14_6 = UI_CUSTOM_CHECKBOX[arg_14_0]

	var_0_1.BeginGroup()
	var_0_1.InvisibleButton(arg_14_0, var_0_1.ImVec2(var_14_3, var_14_3))
	var_0_1.SameLine()

	local var_14_7 = var_0_1.GetCursorPos()

	var_0_1.SetCursorPos(var_0_1.ImVec2(var_14_7.x, var_14_7.y + var_14_3 / 2 - var_0_1.CalcTextSize(var_14_2).y / 2))

	if not arg_14_2 then
		var_0_1.PushStyleColor(var_0_1.Col.Text, var_0_1.GetStyle().Colors[var_0_1.Col.TextDisabled])
	end

	var_0_1.Text(var_14_2)

	if not arg_14_2 then
		var_0_1.PopStyleColor()
	end

	var_0_1.EndGroup()

	local var_14_8 = var_0_1.IsItemClicked()

	if var_14_6.hovered ~= var_0_1.IsItemHovered() then
		var_14_6.hovered = var_0_1.IsItemHovered()

		local var_14_9 = os.clock() - var_14_6.h_start

		if var_14_9 <= var_14_4 and var_14_9 >= 0 then
			var_14_6.h_start = os.clock() - (var_14_4 - var_14_9)
		else
			var_14_6.h_start = os.clock()
		end
	end

	if var_14_8 then
		local var_14_10 = false

		for iter_14_0 = 1, 4 do
			if var_14_6.lines[iter_14_0].anim then
				var_14_10 = true
			end
		end

		if not var_14_10 then
			arg_14_1[0] = not arg_14_1[0]
			var_14_6.lines[1].from = var_0_1.ImVec2(var_14_3 * var_14_5[1][1], var_14_3 * var_14_5[1][2])
			var_14_6.lines[1].to = arg_14_1[0] and var_0_1.ImVec2(var_14_3 * var_14_5[1][1], var_14_3 * var_14_5[1][2]) or var_0_1.ImVec2(var_14_3 * var_14_5[2][1], var_14_3 * var_14_5[2][2])
			var_14_6.lines[1].start = arg_14_1[0] and 0 or os.clock()
			var_14_6.lines[2].from = arg_14_1[0] and var_0_1.ImVec2(var_14_3 * var_14_5[1][1], var_14_3 * var_14_5[1][2]) or var_0_1.ImVec2(var_14_3 * var_14_5[2][1], var_14_3 * var_14_5[2][2])
			var_14_6.lines[2].to = arg_14_1[0] and var_0_1.ImVec2(var_14_3 * var_14_5[2][1], var_14_3 * var_14_5[2][2]) or var_0_1.ImVec2(var_14_3 * var_14_5[2][1], var_14_3 * var_14_5[2][2])
			var_14_6.lines[2].start = arg_14_1[0] and os.clock() or 0
			var_14_6.lines[3].from = var_0_1.ImVec2(var_14_3 * var_14_5[3][1], var_14_3 * var_14_5[3][2])
			var_14_6.lines[3].to = arg_14_1[0] and var_0_1.ImVec2(var_14_3 * var_14_5[3][1], var_14_3 * var_14_5[3][2]) or var_0_1.ImVec2(var_14_3 * var_14_5[4][1], var_14_3 * var_14_5[4][2])
			var_14_6.lines[3].start = arg_14_1[0] and 0 or os.clock() + var_14_4
			var_14_6.lines[4].from = arg_14_1[0] and var_0_1.ImVec2(var_14_3 * var_14_5[3][1], var_14_3 * var_14_5[3][2]) or var_0_1.ImVec2(var_14_3 * var_14_5[4][1], var_14_3 * var_14_5[4][2])
			var_14_6.lines[4].to = var_0_1.ImVec2(var_14_3 * var_14_5[4][1], var_14_3 * var_14_5[4][2]) or var_0_1.ImVec2(var_14_3 * var_14_5[4][1], var_14_3 * var_14_5[4][2])
			var_14_6.lines[4].start = arg_14_1[0] and os.clock() + var_14_4 or 0
		end
	end

	local var_14_11 = {}

	for iter_14_1 = 1, 4 do
		var_14_11[iter_14_1], var_14_6.lines[iter_14_1].anim = bringVec2To(var_14_0 + var_14_6.lines[iter_14_1].from, var_14_0 + var_14_6.lines[iter_14_1].to, var_14_6.lines[iter_14_1].start, var_14_4)
	end

	local var_14_12 = var_0_1.GetStyle().Colors[var_0_1.Col.ButtonActive]
	local var_14_13 = var_0_1.GetStyle().Colors[var_0_1.Col.ButtonHovered]
	local var_14_14 = bringVec4To(var_14_6.hovered and var_0_1.ImVec4(var_14_13.x, var_14_13.y, var_14_13.z, 0) or var_0_1.ImVec4(var_14_13.x, var_14_13.y, var_14_13.z, 0.2), var_14_6.hovered and var_0_1.ImVec4(var_14_13.x, var_14_13.y, var_14_13.z, 0.2) or var_0_1.ImVec4(var_14_13.x, var_14_13.y, var_14_13.z, 0), var_14_6.h_start, var_14_4)

	var_14_1:AddRectFilled(var_14_0, var_0_1.ImVec2(var_14_0.x + var_14_3, var_14_0.y + var_14_3), var_0_1.GetColorU32Vec4(var_14_14), var_14_3 / 15, 15)
	var_14_1:AddRect(var_14_0, var_0_1.ImVec2(var_14_0.x + var_14_3, var_14_0.y + var_14_3), var_0_1.GetColorU32Vec4(var_14_12), var_14_3 / 15, 15, 1.5)

	if arg_14_3 then
		if arg_14_2 then
			var_14_1:AddLine(var_14_11[1], var_14_11[2], var_0_1.GetColorU32Vec4(var_14_12), var_14_3 / 10)
			var_14_1:AddLine(var_14_11[3], var_14_11[4], var_0_1.GetColorU32Vec4(var_14_12), var_14_3 / 10)
		end
	else
		var_14_1:AddLine(var_14_11[1], var_14_11[2], var_0_1.GetColorU32Vec4(var_14_12), var_14_3 / 10)
		var_14_1:AddLine(var_14_11[3], var_14_11[4], var_0_1.GetColorU32Vec4(var_14_12), var_14_3 / 10)
	end

	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 5)

	return var_14_8
end

local var_0_113 = {
	sel = var_0_15.int(1),
	list = {
		{
			icon = "house",
			name = var_0_14("Основное")
		},
		{
			icon = "user_secret",
			name = var_0_14("Админ ПО")
		},
		{
			icon = "bullhorn",
			name = var_0_14("Репорт")
		},
		{
			icon = "bolt",
			name = var_0_14("Оффлайн выдача")
		},
		{
			icon = "plane",
			name = var_0_14("Формы")
		},
		{
			icon = "users",
			name = var_0_14("Чекер")
		},
		{
			icon = "robot",
			name = var_0_14("Биндер")
		},
		{
			icon = "bell",
			name = var_0_14("Мероприятия")
		},
		{
			icon = "brush",
			name = var_0_14("Редактор цветов")
		},
		{
			icon = "chart_column",
			name = var_0_14("Инф. панель")
		},
		{
			icon = "note",
			name = var_0_14("Заметки")
		},
		{
			icon = "brush",
			name = var_0_14("Дизайн")
		},
		{
			icon = "info",
			name = var_0_14("О скрипте")
		}
	}
}

function var_0_1.CustomMenuItem(arg_15_0, arg_15_1, arg_15_2, arg_15_3)
	local function var_15_0(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
		local var_16_0 = os.clock() - arg_16_2

		if var_16_0 >= 0 and var_16_0 <= arg_16_3 then
			local var_16_1 = var_16_0 / (arg_16_3 / 100)

			return var_0_1.ImVec2(arg_16_0.x + var_16_1 * (arg_16_1.x - arg_16_0.x) / 100, arg_16_0.y + var_16_1 * (arg_16_1.y - arg_16_0.y) / 100), true
		end

		return arg_16_3 < var_16_0 and arg_16_1 or arg_16_0, false
	end

	local var_15_1 = var_0_1.GetWindowDrawList()
	local var_15_2 = var_0_1.GetCursorScreenPos()
	local var_15_3 = arg_15_2 or var_0_1.ImVec2(202, 30)
	local var_15_4 = arg_15_3 or 0.185
	local var_15_5 = arg_15_1.name .. "##" .. arg_15_0

	if UI_CUSTOM_MENU_ITEM == nil then
		UI_CUSTOM_MENU_ITEM = {}
	end

	if UI_CUSTOM_MENU_ITEM[var_15_5] == nil then
		UI_CUSTOM_MENU_ITEM[var_15_5] = {
			hovered = false,
			a_start = 0,
			h_start = 0,
			pos1 = var_0_113.sel[0] == arg_15_0 and var_0_1.ImVec2(var_15_2.x, var_15_2.y + var_15_3.y / 2) or var_0_1.ImVec2(var_15_2.x, var_15_2.y),
			pos2 = var_0_113.sel[0] == arg_15_0 and var_0_1.ImVec2(var_15_2.x + var_15_3.x, var_15_2.y + var_15_3.y / 2) or var_0_1.ImVec2(var_15_2.x + var_15_3.x, var_15_2.y + var_15_3.y),
			pos3 = var_0_1.ImVec2(var_15_2.x + var_15_3.x - 5, var_15_2.y + var_15_3.y / 2),
			pos4 = var_0_1.ImVec2(var_15_2.x + var_15_3.x - 1, var_15_2.y + var_15_3.y / 2),
			active = var_0_113.sel[0] == arg_15_0 and true or false
		}
	end

	local var_15_6 = UI_CUSTOM_MENU_ITEM[var_15_5]

	var_0_1.InvisibleButton(var_15_5, var_15_3)

	local var_15_7 = var_0_1.IsItemClicked()
	local var_15_8 = var_0_1.IsItemHovered()

	if var_15_8 ~= var_15_6.hovered and var_0_113.sel[0] ~= arg_15_0 then
		var_15_6.hovered = var_15_8

		local var_15_9 = os.clock() - var_15_6.h_start

		if var_15_9 <= var_15_4 and var_15_9 >= 0 then
			var_15_6.h_start = os.clock() - (var_15_4 - var_15_9)
		else
			var_15_6.h_start = os.clock()
		end
	end

	if var_15_7 and var_0_113.sel[0] ~= arg_15_0 then
		var_15_6.active = true
		var_0_113.sel[0] = arg_15_0

		local var_15_10 = os.clock() - var_15_6.a_start

		if var_15_10 <= var_15_4 and var_15_10 >= 0 then
			var_15_6.a_start = os.clock() - (var_15_4 - var_15_10)
		else
			var_15_6.a_start = os.clock()
		end
	elseif var_15_6.active and var_0_113.sel[0] ~= arg_15_0 then
		var_15_6.active = false

		local var_15_11 = os.clock() - var_15_6.a_start

		if var_15_11 <= var_15_4 and var_15_11 >= 0 then
			var_15_6.a_start = os.clock() - (var_15_4 - var_15_11)
		else
			var_15_6.a_start = os.clock()
		end

		if var_15_6.h_start == 0 then
			var_15_6.h_start = os.clock()
		end
	end

	var_15_6.pos1 = var_15_0((var_15_6.hovered or var_0_113.sel[0] == arg_15_0) and var_0_1.ImVec2(var_15_2.x + 10, var_15_2.y + var_15_3.y / 2) or var_0_1.ImVec2(var_15_2.x + 10, var_15_2.y), (var_15_6.hovered or var_0_113.sel[0] == arg_15_0) and var_0_1.ImVec2(var_15_2.x + 10, var_15_2.y) or var_0_1.ImVec2(var_15_2.x + 10, var_15_2.y + var_15_3.y / 2), var_15_6.h_start, var_15_4)
	var_15_6.pos2 = var_15_0((var_15_6.hovered or var_0_113.sel[0] == arg_15_0) and var_0_1.ImVec2(var_15_2.x + var_15_3.x + 10, var_15_2.y + var_15_3.y / 2) or var_0_1.ImVec2(var_15_2.x + var_15_3.x + 10, var_15_2.y + var_15_3.y), (var_15_6.hovered or var_0_113.sel[0] == arg_15_0) and var_0_1.ImVec2(var_15_2.x + var_15_3.x + 10, var_15_2.y + var_15_3.y) or var_0_1.ImVec2(var_15_2.x + var_15_3.x + 10, var_15_2.y + var_15_3.y / 2), var_15_6.h_start, var_15_4)
	var_15_6.pos3 = var_15_0(var_0_113.sel[0] == arg_15_0 and var_0_1.ImVec2(var_15_2.x + var_15_3.x + 10, var_15_2.y + var_15_3.y / 2 - 7) or var_0_1.ImVec2(var_15_2.x + var_15_3.x + 7.5, var_15_2.y + var_15_3.y / 4 - 7), var_0_113.sel[0] == arg_15_0 and var_0_1.ImVec2(var_15_2.x + var_15_3.x + 10, var_15_2.y + var_15_3.y / 4 - 7) or var_0_1.ImVec2(var_15_2.x + var_15_3.x + 7.5, var_15_2.y + var_15_3.y / 2 - 7), var_15_6.a_start, var_15_4)
	var_15_6.pos4 = var_15_0(var_0_113.sel[0] == arg_15_0 and var_0_1.ImVec2(var_15_2.x + var_15_3.x + 7.5, var_15_2.y + var_15_3.y / 2 + 7) or var_0_1.ImVec2(var_15_2.x + var_15_3.x + 10, var_15_2.y + var_15_3.y / 4 + var_15_3.y / 2 + 7), var_0_113.sel[0] == arg_15_0 and var_0_1.ImVec2(var_15_2.x + var_15_3.x + 7.5, var_15_2.y + var_15_3.y / 4 + var_15_3.y / 2 + 7) or var_0_1.ImVec2(var_15_2.x + var_15_3.x + 10, var_15_2.y + var_15_3.y / 2 + 7), var_15_6.a_start, var_15_4)

	local var_15_12 = (var_15_6.hovered or var_0_113.sel[0] == arg_15_0 or var_15_4 >= os.clock() - var_15_6.h_start) and var_0_1.GetStyle().Colors[var_0_1.Col.SeparatorActive] or var_0_1.ImVec4(0, 0, 0, 0)
	local var_15_13 = (var_0_113.sel[0] == arg_15_0 or var_15_4 >= os.clock() - var_15_6.a_start) and var_0_1.GetStyle().Colors[var_0_1.Col.Text] or var_0_1.ImVec4(0, 0, 0, 0)
	local var_15_14 = var_0_1.GetStyle().Colors[var_0_1.Col.Text]

	var_15_1:AddRectFilled(var_15_6.pos1, var_15_6.pos2, var_0_1.GetColorU32Vec4(var_15_12), 5, 15)
	var_15_1:AddRectFilled(var_15_6.pos3, var_15_6.pos4, var_0_1.GetColorU32Vec4(var_15_13), 5, 15)

	local var_15_15 = var_0_1.CalcTextSize(var_0_8(arg_15_1.icon))
	local var_15_16 = var_0_1.CalcTextSize(arg_15_1.name)

	var_15_1:AddText(var_0_1.ImVec2(var_15_2.x + 15, var_15_2.y + var_15_3.y / 2 - var_15_15.y / 2), var_0_1.GetColorU32Vec4(var_15_14), var_0_8(arg_15_1.icon))
	var_0_1.SameLine(45)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
	var_0_1.PushFont(var_0_75[20])
	var_0_1.Text(arg_15_1.name)
	var_0_1.PopFont()
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

	return var_15_7
end

local var_0_114 = {
	__index = function(arg_17_0, arg_17_1)
		if arg_17_1 == "switch" then
			return function()
				if arg_17_0.process and arg_17_0.process:status() ~= "dead" then
					return false
				end

				arg_17_0.timer = os.clock()
				arg_17_0.state = not arg_17_0.state
				arg_17_0.process = lua_thread.create(function()
					repeat
						wait(0)

						local var_19_0 = bringFloatTo(0, 1, arg_17_0.timer, arg_17_0.duration)

						arg_17_0.alpha = arg_17_0.state and var_19_0 or 1 - var_19_0
					until var_19_0 == 1
				end)

				return true
			end
		end

		if arg_17_1 == "alpha" then
			return arg_17_0.state and 1 or 0
		end
	end
}
local var_0_115 = {
	duration = 0.11,
	state = false
}

setmetatable(var_0_115, var_0_114)

local var_0_116 = {
	duration = 0.3,
	state = false
}

setmetatable(var_0_116, var_0_114)

local var_0_117 = {
	duration = 0.3,
	state = false
}

setmetatable(var_0_117, var_0_114)

local var_0_118 = {
	duration = 0.3,
	state = false
}

setmetatable(var_0_118, var_0_114)

tBlockKeys = {
	[var_0_11.VK_RETURN] = true,
	[var_0_11.VK_T] = true,
	[var_0_11.VK_F6] = true,
	[var_0_11.VK_F8] = true
}
tBlockChar = {
	[116] = true,
	[84] = true
}
tModKeys = {
	[var_0_11.VK_MENU] = true,
	[var_0_11.VK_CONTROL] = true
}
tBlockNextDown = {}
tHotKeyData = {
	tickState = false,
	save = {},
	lastTick = os.clock()
}
tKeys = {}

function var_0_1.HotKey(arg_20_0, arg_20_1, arg_20_2, arg_20_3)
	local var_20_0 = arg_20_3 or 90
	local var_20_1 = tostring(arg_20_0)
	local var_20_2 = arg_20_2 or {}
	local var_20_3 = arg_20_1 or {}
	local var_20_4 = false

	var_20_2.v = var_20_3.v

	local var_20_5 = table.concat(getKeysName(var_20_3.v), " + ")

	if #tHotKeyData.save > 0 and tostring(tHotKeyData.save[1]) == var_20_1 then
		var_20_3.v = tHotKeyData.save[2]
		var_20_5 = table.concat(getKeysName(var_20_3.v), " + ")
		tHotKeyData.save = {}
		var_20_4 = true
	elseif tHotKeyData.edit ~= nil and tostring(tHotKeyData.edit) == var_20_1 then
		if #tKeys == 0 then
			if os.clock() - tHotKeyData.lastTick > 0.5 then
				tHotKeyData.lastTick = os.clock()
				tHotKeyData.tickState = not tHotKeyData.tickState
			end

			var_20_5 = tHotKeyData.tickState and var_0_14("Нет") or " "
		else
			var_20_5 = table.concat(getKeysName(tKeys), " + ")
		end
	end

	var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.GetStyle().Colors[var_0_1.Col.Button])
	var_0_1.PushStyleColor(var_0_1.Col.ButtonHovered, var_0_1.GetStyle().Colors[var_0_1.Col.ButtonHovered])
	var_0_1.PushStyleColor(var_0_1.Col.ButtonActive, var_0_1.GetStyle().Colors[var_0_1.Col.ButtonActive])

	if var_0_1.Button((tostring(var_20_5):len() == 0 and var_0_14("Нет") or var_20_5) .. var_20_1, var_0_1.ImVec2(var_20_0, 20)) then
		tHotKeyData.edit = var_20_1
	end

	var_0_1.PopStyleColor(3)

	return var_20_4
end

function getCurrentEdit()
	return tHotKeyData.edit ~= nil
end

function isKeyModified(arg_22_0)
	if type(arg_22_0) ~= "number" then
		return false
	end

	return tModKeys[arg_22_0] or tBlockKeys[arg_22_0] or false
end

function reloadKeysList()
	local var_23_0 = {}

	for iter_23_0, iter_23_1 in pairs(tKeys) do
		var_23_0[#var_23_0 + 1] = iter_23_1
	end

	tKeys = var_23_0

	return true
end

function getKeyNumber(arg_24_0)
	for iter_24_0, iter_24_1 in ipairs(tKeys) do
		if iter_24_1 == arg_24_0 then
			return iter_24_0
		end
	end

	return -1
end

function getKeysName(arg_25_0)
	if type(arg_25_0) ~= "table" then
		return false
	else
		local var_25_0 = {}

		for iter_25_0, iter_25_1 in ipairs(arg_25_0) do
			var_25_0[iter_25_0] = var_0_11.id_to_name(iter_25_1)
		end

		return var_25_0
	end
end

function isKeysDown(arg_26_0)
	local var_26_0 = arg_26_0
	local var_26_1 = false
	local var_26_2 = 0
	local var_26_3 = #var_26_0 < 2 and tonumber(var_26_0[1]) or tonumber(var_26_0[#var_26_0])

	if #var_26_0 < 2 then
		if not isKeyDown(VK_RMENU) and not isKeyDown(VK_LMENU) and not isKeyDown(VK_LSHIFT) and not isKeyDown(VK_LCONTROL) and not isKeyDown(VK_RCONTROL) and wasKeyPressed(var_26_3) then
			var_26_1 = true
		end
	elseif isKeyDown(var_26_0[1]) and isKeyDown(var_26_0[2]) then
		if var_26_0[3] ~= nil then
			if isKeyDown(var_26_0[3]) then
				if var_26_0[4] ~= nil then
					if isKeyDown(var_26_0[4]) then
						if var_26_0[5] ~= nil then
							if isKeyDown(var_26_0[5]) and wasKeyPressed(var_26_3) then
								var_26_1 = true
							end
						elseif wasKeyPressed(var_26_3) then
							var_26_1 = true
						end
					end
				elseif wasKeyPressed(var_26_3) then
					var_26_1 = true
				end
			end
		elseif wasKeyPressed(var_26_3) then
			var_26_1 = true
		end
	end

	if nextLockKey == arg_26_0 then
		var_26_1 = false
		nextLockKey = ""
	end

	return var_26_1
end

function timeStringToSeconds(arg_27_0)
	local var_27_0, var_27_1, var_27_2 = arg_27_0:match("(%d+):(%d+):(%d+)")

	return var_27_0 * 3600 + var_27_1 * 60 + var_27_2
end

function secondsToTimeString(arg_28_0)
	local var_28_0 = math.floor(arg_28_0 / 3600)
	local var_28_1 = math.floor(arg_28_0 % 3600 / 60)
	local var_28_2 = arg_28_0 % 60

	return string.format("%02d:%02d:%02d", var_28_0, var_28_1, var_28_2)
end

function linebinder(arg_29_0)
	local var_29_0 = {}

	for iter_29_0 in string.gmatch(arg_29_0.content, "[^\n]+") do
		table.insert(var_29_0, var_0_14:decode(iter_29_0))
	end

	local function var_29_1()
		for iter_30_0, iter_30_1 in ipairs(var_29_0) do
			if string.match(iter_30_1, "^<wait:%d+>$") then
				local var_30_0 = tonumber(iter_30_1:match("<wait:(%d+)>"))

				wait(var_30_0)
			else
				if iter_30_1:match("<my_zone>") then
					iter_30_1 = iter_30_1:gsub("<my_zone>", my_zone())
				end

				if iter_30_1:match("<my_kvadrat>") then
					iter_30_1 = iter_30_1:gsub("<my_kvadrat>", my_kvadrat())
				end

				if iter_30_1:match("<my_direction>") then
					iter_30_1 = iter_30_1:gsub("<my_direction>", my_direction())
				end

				if iter_30_1:match("<my_id>") then
					iter_30_1 = iter_30_1:gsub("<my_id>", myId())
				end

				if iter_30_1:match("<author_id>") then
					iter_30_1 = iter_30_1:gsub("<author_id>", var_0_36.AuthorId)
				end

				if iter_30_1:match("<suspect_id>") then
					iter_30_1 = iter_30_1:gsub("<suspect_id>", var_0_36.SuspectId)
				end

				sampSendChat(iter_30_1)
			end
		end
	end

	lua_thread.create(var_29_1)
end

function getweaponname(arg_31_0)
	return var_0_23[arg_31_0]
end

function number_week()
	local var_32_0 = os.date("*t")
	local var_32_1 = os.time({
		month = 1,
		day = 1,
		year = var_32_0.year
	})
	local var_32_2 = (os.date("%w", var_32_1) - 1) % 7

	return math.ceil((var_32_0.yday + var_32_2) / 7)
end

function nowDate()
	local var_33_0 = os.date("*t")
	local var_33_1 = {
		"января",
		"февраля",
		"марта",
		"апреля",
		"мая",
		"июня",
		"июля",
		"августа",
		"сентября",
		"октября",
		"ноября",
		"декабря"
	}

	return var_33_0.day .. " " .. var_33_1[var_33_0.month]
end

function nowWeekday()
	return ({
		[0] = "Воскресенье",
		"Понедельник",
		"Вторник",
		"Среда",
		"Четверг",
		"Пятница",
		"Суббота"
	})[tonumber(os.date("%w"))]
end

function getCarFreeSeat(arg_35_0)
	if doesCharExist(getDriverOfCar(arg_35_0)) then
		local var_35_0 = getMaximumNumberOfPassengers(arg_35_0)

		for iter_35_0 = 0, var_35_0 do
			if isCarPassengerSeatFree(arg_35_0, iter_35_0) then
				return iter_35_0 + 1
			end
		end

		return nil
	else
		return 0
	end
end

function jumpIntoCar(arg_36_0)
	local var_36_0 = getCarFreeSeat(arg_36_0)

	if not var_36_0 then
		return false
	end

	if var_36_0 == 0 then
		warpCharIntoCar(playerPed, arg_36_0)
	else
		warpCharIntoCarAsPassenger(playerPed, arg_36_0, var_36_0 - 1)
	end

	restoreCameraJumpcut()

	return true
end

function getNearRoad(arg_37_0)
	local var_37_0 = {
		getCharCoordinates(PLAYER_PED)
	}
	local var_37_1 = {
		getClosestStraightRoad(var_37_0[1], var_37_0[2], var_37_0[3], 0, arg_37_0 or 600)
	}

	if var_37_1[1] ~= 0 and var_37_1[2] ~= 0 and var_37_1[3] ~= 0 then
		return true, var_37_1[1], var_37_1[2], var_37_1[3]
	end

	return false
end

function getPlayersInSphere(arg_38_0)
	local var_38_0 = {}
	local var_38_1, var_38_2, var_38_3 = getCharCoordinates(playerPed)

	for iter_38_0, iter_38_1 in ipairs(getAllChars()) do
		local var_38_4, var_38_5, var_38_6 = getCharCoordinates(iter_38_1)

		if getDistanceBetweenCoords3d(var_38_1, var_38_2, var_38_3, var_38_4, var_38_5, var_38_6) <= tonumber(arg_38_0) and iter_38_1 ~= 1 then
			local var_38_7, var_38_8 = sampGetPlayerIdByCharHandle(iter_38_1)

			if var_38_7 and not isCharDead(iter_38_1) and not sampIsPlayerNpc(var_38_8) then
				var_38_0[#var_38_0 + 1] = var_38_8
			end
		end
	end

	return var_38_0
end

function getNearCarId()
	local var_39_0 = 9999
	local var_39_1 = -1
	local var_39_2, var_39_3, var_39_4 = getCharCoordinates(PLAYER_PED)

	for iter_39_0, iter_39_1 in ipairs(getAllVehicles()) do
		local var_39_5, var_39_6 = sampGetVehicleIdByCarHandle(iter_39_1)

		if var_39_5 then
			local var_39_7, var_39_8, var_39_9 = getCarCoordinates(iter_39_1)
			local var_39_10 = math.sqrt((var_39_7 - var_39_2)^2 + (var_39_8 - var_39_3)^2 + (var_39_9 - var_39_4)^2)

			if var_39_10 < var_39_0 then
				var_39_0 = var_39_10
				var_39_1 = var_39_6
			end
		end
	end

	return var_39_1
end

function my_kvadrat()
	local var_40_0 = {
		"А",
		"Б",
		"В",
		"Г",
		"Д",
		"Ж",
		"З",
		"И",
		"К",
		"Л",
		"М",
		"Н",
		"О",
		"П",
		"Р",
		"С",
		"Т",
		"У",
		"Ф",
		"Х",
		"Ц",
		"Ч",
		"Ш",
		"Я"
	}
	local var_40_1, var_40_2, var_40_3 = getCharCoordinates(playerPed)
	local var_40_4 = math.ceil((var_40_1 + 3000) / 250)

	return var_40_0[math.ceil((var_40_2 * -1 + 3000) / 250)] .. "-" .. var_40_4
end

function my_zone()
	local var_41_0 = {
		{
			"Avispa Country Club",
			-2667.81,
			-302.135,
			-28.831,
			-2646.4,
			-262.32,
			71.169
		},
		{
			"Easter Bay Airport",
			-1315.42,
			-405.388,
			15.406,
			-1264.4,
			-209.543,
			25.406
		},
		{
			"Avispa Country Club",
			-2550.04,
			-355.493,
			0,
			-2470.04,
			-318.493,
			39.7
		},
		{
			"Easter Bay Airport",
			-1490.33,
			-209.543,
			15.406,
			-1264.4,
			-148.388,
			25.406
		},
		{
			"Garcia",
			-2395.14,
			-222.589,
			-5.3,
			-2354.09,
			-204.792,
			200
		},
		{
			"Shady Cabin",
			-1632.83,
			-2263.44,
			-3,
			-1601.33,
			-2231.79,
			200
		},
		{
			"East Los Santos",
			2381.68,
			-1494.03,
			-89.084,
			2421.03,
			-1454.35,
			110.916
		},
		{
			"LVA Freight Depot",
			1236.63,
			1163.41,
			-89.084,
			1277.05,
			1203.28,
			110.916
		},
		{
			"Blackfield Intersection",
			1277.05,
			1044.69,
			-89.084,
			1315.35,
			1087.63,
			110.916
		},
		{
			"Avispa Country Club",
			-2470.04,
			-355.493,
			0,
			-2270.04,
			-318.493,
			46.1
		},
		{
			"Temple",
			1252.33,
			-926.999,
			-89.084,
			1357,
			-910.17,
			110.916
		},
		{
			"Unity Station",
			1692.62,
			-1971.8,
			-20.492,
			1812.62,
			-1932.8,
			79.508
		},
		{
			"LVA Freight Depot",
			1315.35,
			1044.69,
			-89.084,
			1375.6,
			1087.63,
			110.916
		},
		{
			"Los Flores",
			2581.73,
			-1454.35,
			-89.084,
			2632.83,
			-1393.42,
			110.916
		},
		{
			"Starfish Casino",
			2437.39,
			1858.1,
			-39.084,
			2495.09,
			1970.85,
			60.916
		},
		{
			"Easter Bay Chemicals",
			-1132.82,
			-787.391,
			0,
			-956.476,
			-768.027,
			200
		},
		{
			"Downtown Los Santos",
			1370.85,
			-1170.87,
			-89.084,
			1463.9,
			-1130.85,
			110.916
		},
		{
			"Esplanade East",
			-1620.3,
			1176.52,
			-4.5,
			-1580.01,
			1274.26,
			200
		},
		{
			"Market Station",
			787.461,
			-1410.93,
			-34.126,
			866.009,
			-1310.21,
			65.874
		},
		{
			"Linden Station",
			2811.25,
			1229.59,
			-39.594,
			2861.25,
			1407.59,
			60.406
		},
		{
			"Montgomery Intersection",
			1582.44,
			347.457,
			0,
			1664.62,
			401.75,
			200
		},
		{
			"Frederick Bridge",
			2759.25,
			296.501,
			0,
			2774.25,
			594.757,
			200
		},
		{
			"Yellow Bell Station",
			1377.48,
			2600.43,
			-21.926,
			1492.45,
			2687.36,
			78.074
		},
		{
			"Downtown Los Santos",
			1507.51,
			-1385.21,
			110.916,
			1582.55,
			-1325.31,
			335.916
		},
		{
			"Jefferson",
			2185.33,
			-1210.74,
			-89.084,
			2281.45,
			-1154.59,
			110.916
		},
		{
			"Mulholland",
			1318.13,
			-910.17,
			-89.084,
			1357,
			-768.027,
			110.916
		},
		{
			"Avispa Country Club",
			-2361.51,
			-417.199,
			0,
			-2270.04,
			-355.493,
			200
		},
		{
			"Jefferson",
			1996.91,
			-1449.67,
			-89.084,
			2056.86,
			-1350.72,
			110.916
		},
		{
			"Julius Thruway West",
			1236.63,
			2142.86,
			-89.084,
			1297.47,
			2243.23,
			110.916
		},
		{
			"Jefferson",
			2124.66,
			-1494.03,
			-89.084,
			2266.21,
			-1449.67,
			110.916
		},
		{
			"Julius Thruway North",
			1848.4,
			2478.49,
			-89.084,
			1938.8,
			2553.49,
			110.916
		},
		{
			"Rodeo",
			422.68,
			-1570.2,
			-89.084,
			466.223,
			-1406.05,
			110.916
		},
		{
			"Cranberry Station",
			-2007.83,
			56.306,
			0,
			-1922,
			224.782,
			100
		},
		{
			"Downtown Los Santos",
			1391.05,
			-1026.33,
			-89.084,
			1463.9,
			-926.999,
			110.916
		},
		{
			"Redsands West",
			1704.59,
			2243.23,
			-89.084,
			1777.39,
			2342.83,
			110.916
		},
		{
			"Little Mexico",
			1758.9,
			-1722.26,
			-89.084,
			1812.62,
			-1577.59,
			110.916
		},
		{
			"Blackfield Intersection",
			1375.6,
			823.228,
			-89.084,
			1457.39,
			919.447,
			110.916
		},
		{
			"Los Santos International",
			1974.63,
			-2394.33,
			-39.084,
			2089,
			-2256.59,
			60.916
		},
		{
			"Beacon Hill",
			-399.633,
			-1075.52,
			-1.489,
			-319.033,
			-977.516,
			198.511
		},
		{
			"Rodeo",
			334.503,
			-1501.95,
			-89.084,
			422.68,
			-1406.05,
			110.916
		},
		{
			"Richman",
			225.165,
			-1369.62,
			-89.084,
			334.503,
			-1292.07,
			110.916
		},
		{
			"Downtown Los Santos",
			1724.76,
			-1250.9,
			-89.084,
			1812.62,
			-1150.87,
			110.916
		},
		{
			"The Strip",
			2027.4,
			1703.23,
			-89.084,
			2137.4,
			1783.23,
			110.916
		},
		{
			"Downtown Los Santos",
			1378.33,
			-1130.85,
			-89.084,
			1463.9,
			-1026.33,
			110.916
		},
		{
			"Blackfield Intersection",
			1197.39,
			1044.69,
			-89.084,
			1277.05,
			1163.39,
			110.916
		},
		{
			"Conference Center",
			1073.22,
			-1842.27,
			-89.084,
			1323.9,
			-1804.21,
			110.916
		},
		{
			"Montgomery",
			1451.4,
			347.457,
			-6.1,
			1582.44,
			420.802,
			200
		},
		{
			"Foster Valley",
			-2270.04,
			-430.276,
			-1.2,
			-2178.69,
			-324.114,
			200
		},
		{
			"Blackfield Chapel",
			1325.6,
			596.349,
			-89.084,
			1375.6,
			795.01,
			110.916
		},
		{
			"Los Santos International",
			2051.63,
			-2597.26,
			-39.084,
			2152.45,
			-2394.33,
			60.916
		},
		{
			"Mulholland",
			1096.47,
			-910.17,
			-89.084,
			1169.13,
			-768.027,
			110.916
		},
		{
			"Yellow Bell Gol Course",
			1457.46,
			2723.23,
			-89.084,
			1534.56,
			2863.23,
			110.916
		},
		{
			"The Strip",
			2027.4,
			1783.23,
			-89.084,
			2162.39,
			1863.23,
			110.916
		},
		{
			"Jefferson",
			2056.86,
			-1210.74,
			-89.084,
			2185.33,
			-1126.32,
			110.916
		},
		{
			"Mulholland",
			952.604,
			-937.184,
			-89.084,
			1096.47,
			-860.619,
			110.916
		},
		{
			"Aldea Malvada",
			-1372.14,
			2498.52,
			0,
			-1277.59,
			2615.35,
			200
		},
		{
			"Las Colinas",
			2126.86,
			-1126.32,
			-89.084,
			2185.33,
			-934.489,
			110.916
		},
		{
			"Las Colinas",
			1994.33,
			-1100.82,
			-89.084,
			2056.86,
			-920.815,
			110.916
		},
		{
			"Richman",
			647.557,
			-954.662,
			-89.084,
			768.694,
			-860.619,
			110.916
		},
		{
			"LVA Freight Depot",
			1277.05,
			1087.63,
			-89.084,
			1375.6,
			1203.28,
			110.916
		},
		{
			"Julius Thruway North",
			1377.39,
			2433.23,
			-89.084,
			1534.56,
			2507.23,
			110.916
		},
		{
			"Willowfield",
			2201.82,
			-2095,
			-89.084,
			2324,
			-1989.9,
			110.916
		},
		{
			"Julius Thruway North",
			1704.59,
			2342.83,
			-89.084,
			1848.4,
			2433.23,
			110.916
		},
		{
			"Temple",
			1252.33,
			-1130.85,
			-89.084,
			1378.33,
			-1026.33,
			110.916
		},
		{
			"Little Mexico",
			1701.9,
			-1842.27,
			-89.084,
			1812.62,
			-1722.26,
			110.916
		},
		{
			"Queens",
			-2411.22,
			373.539,
			0,
			-2253.54,
			458.411,
			200
		},
		{
			"Las Venturas Airport",
			1515.81,
			1586.4,
			-12.5,
			1729.95,
			1714.56,
			87.5
		},
		{
			"Richman",
			225.165,
			-1292.07,
			-89.084,
			466.223,
			-1235.07,
			110.916
		},
		{
			"Temple",
			1252.33,
			-1026.33,
			-89.084,
			1391.05,
			-926.999,
			110.916
		},
		{
			"East Los Santos",
			2266.26,
			-1494.03,
			-89.084,
			2381.68,
			-1372.04,
			110.916
		},
		{
			"Julius Thruway East",
			2623.18,
			943.235,
			-89.084,
			2749.9,
			1055.96,
			110.916
		},
		{
			"Willowfield",
			2541.7,
			-1941.4,
			-89.084,
			2703.58,
			-1852.87,
			110.916
		},
		{
			"Las Colinas",
			2056.86,
			-1126.32,
			-89.084,
			2126.86,
			-920.815,
			110.916
		},
		{
			"Julius Thruway East",
			2625.16,
			2202.76,
			-89.084,
			2685.16,
			2442.55,
			110.916
		},
		{
			"Rodeo",
			225.165,
			-1501.95,
			-89.084,
			334.503,
			-1369.62,
			110.916
		},
		{
			"Las Brujas",
			-365.167,
			2123.01,
			-3,
			-208.57,
			2217.68,
			200
		},
		{
			"Julius Thruway East",
			2536.43,
			2442.55,
			-89.084,
			2685.16,
			2542.55,
			110.916
		},
		{
			"Rodeo",
			334.503,
			-1406.05,
			-89.084,
			466.223,
			-1292.07,
			110.916
		},
		{
			"Vinewood",
			647.557,
			-1227.28,
			-89.084,
			787.461,
			-1118.28,
			110.916
		},
		{
			"Rodeo",
			422.68,
			-1684.65,
			-89.084,
			558.099,
			-1570.2,
			110.916
		},
		{
			"Julius Thruway North",
			2498.21,
			2542.55,
			-89.084,
			2685.16,
			2626.55,
			110.916
		},
		{
			"Downtown Los Santos",
			1724.76,
			-1430.87,
			-89.084,
			1812.62,
			-1250.9,
			110.916
		},
		{
			"Rodeo",
			225.165,
			-1684.65,
			-89.084,
			312.803,
			-1501.95,
			110.916
		},
		{
			"Jefferson",
			2056.86,
			-1449.67,
			-89.084,
			2266.21,
			-1372.04,
			110.916
		},
		{
			"Hampton Barns",
			603.035,
			264.312,
			0,
			761.994,
			366.572,
			200
		},
		{
			"Temple",
			1096.47,
			-1130.84,
			-89.084,
			1252.33,
			-1026.33,
			110.916
		},
		{
			"Kincaid Bridge",
			-1087.93,
			855.37,
			-89.084,
			-961.95,
			986.281,
			110.916
		},
		{
			"Verona Beach",
			1046.15,
			-1722.26,
			-89.084,
			1161.52,
			-1577.59,
			110.916
		},
		{
			"Commerce",
			1323.9,
			-1722.26,
			-89.084,
			1440.9,
			-1577.59,
			110.916
		},
		{
			"Mulholland",
			1357,
			-926.999,
			-89.084,
			1463.9,
			-768.027,
			110.916
		},
		{
			"Rodeo",
			466.223,
			-1570.2,
			-89.084,
			558.099,
			-1385.07,
			110.916
		},
		{
			"Mulholland",
			911.802,
			-860.619,
			-89.084,
			1096.47,
			-768.027,
			110.916
		},
		{
			"Mulholland",
			768.694,
			-954.662,
			-89.084,
			952.604,
			-860.619,
			110.916
		},
		{
			"Julius Thruway South",
			2377.39,
			788.894,
			-89.084,
			2537.39,
			897.901,
			110.916
		},
		{
			"Idlewood",
			1812.62,
			-1852.87,
			-89.084,
			1971.66,
			-1742.31,
			110.916
		},
		{
			"Ocean Docks",
			2089,
			-2394.33,
			-89.084,
			2201.82,
			-2235.84,
			110.916
		},
		{
			"Commerce",
			1370.85,
			-1577.59,
			-89.084,
			1463.9,
			-1384.95,
			110.916
		},
		{
			"Julius Thruway North",
			2121.4,
			2508.23,
			-89.084,
			2237.4,
			2663.17,
			110.916
		},
		{
			"Temple",
			1096.47,
			-1026.33,
			-89.084,
			1252.33,
			-910.17,
			110.916
		},
		{
			"Glen Park",
			1812.62,
			-1449.67,
			-89.084,
			1996.91,
			-1350.72,
			110.916
		},
		{
			"Easter Bay Airport",
			-1242.98,
			-50.096,
			0,
			-1213.91,
			578.396,
			200
		},
		{
			"Martin Bridge",
			-222.179,
			293.324,
			0,
			-122.126,
			476.465,
			200
		},
		{
			"The Strip",
			2106.7,
			1863.23,
			-89.084,
			2162.39,
			2202.76,
			110.916
		},
		{
			"Willowfield",
			2541.7,
			-2059.23,
			-89.084,
			2703.58,
			-1941.4,
			110.916
		},
		{
			"Marina",
			807.922,
			-1577.59,
			-89.084,
			926.922,
			-1416.25,
			110.916
		},
		{
			"Las Venturas Airport",
			1457.37,
			1143.21,
			-89.084,
			1777.4,
			1203.28,
			110.916
		},
		{
			"Idlewood",
			1812.62,
			-1742.31,
			-89.084,
			1951.66,
			-1602.31,
			110.916
		},
		{
			"Esplanade East",
			-1580.01,
			1025.98,
			-6.1,
			-1499.89,
			1274.26,
			200
		},
		{
			"Downtown Los Santos",
			1370.85,
			-1384.95,
			-89.084,
			1463.9,
			-1170.87,
			110.916
		},
		{
			"The Mako Span",
			1664.62,
			401.75,
			0,
			1785.14,
			567.203,
			200
		},
		{
			"Rodeo",
			312.803,
			-1684.65,
			-89.084,
			422.68,
			-1501.95,
			110.916
		},
		{
			"Pershing Square",
			1440.9,
			-1722.26,
			-89.084,
			1583.5,
			-1577.59,
			110.916
		},
		{
			"Mulholland",
			687.802,
			-860.619,
			-89.084,
			911.802,
			-768.027,
			110.916
		},
		{
			"Gant Bridge",
			-2741.07,
			1490.47,
			-6.1,
			-2616.4,
			1659.68,
			200
		},
		{
			"Las Colinas",
			2185.33,
			-1154.59,
			-89.084,
			2281.45,
			-934.489,
			110.916
		},
		{
			"Mulholland",
			1169.13,
			-910.17,
			-89.084,
			1318.13,
			-768.027,
			110.916
		},
		{
			"Julius Thruway North",
			1938.8,
			2508.23,
			-89.084,
			2121.4,
			2624.23,
			110.916
		},
		{
			"Commerce",
			1667.96,
			-1577.59,
			-89.084,
			1812.62,
			-1430.87,
			110.916
		},
		{
			"Rodeo",
			72.648,
			-1544.17,
			-89.084,
			225.165,
			-1404.97,
			110.916
		},
		{
			"Roca Escalante",
			2536.43,
			2202.76,
			-89.084,
			2625.16,
			2442.55,
			110.916
		},
		{
			"Rodeo",
			72.648,
			-1684.65,
			-89.084,
			225.165,
			-1544.17,
			110.916
		},
		{
			"Market",
			952.663,
			-1310.21,
			-89.084,
			1072.66,
			-1130.85,
			110.916
		},
		{
			"Las Colinas",
			2632.74,
			-1135.04,
			-89.084,
			2747.74,
			-945.035,
			110.916
		},
		{
			"Mulholland",
			861.085,
			-674.885,
			-89.084,
			1156.55,
			-600.896,
			110.916
		},
		{
			"King's",
			-2253.54,
			373.539,
			-9.1,
			-1993.28,
			458.411,
			200
		},
		{
			"Redsands East",
			1848.4,
			2342.83,
			-89.084,
			2011.94,
			2478.49,
			110.916
		},
		{
			"Downtown",
			-1580.01,
			744.267,
			-6.1,
			-1499.89,
			1025.98,
			200
		},
		{
			"Conference Center",
			1046.15,
			-1804.21,
			-89.084,
			1323.9,
			-1722.26,
			110.916
		},
		{
			"Richman",
			647.557,
			-1118.28,
			-89.084,
			787.461,
			-954.662,
			110.916
		},
		{
			"Ocean Flats",
			-2994.49,
			277.411,
			-9.1,
			-2867.85,
			458.411,
			200
		},
		{
			"Greenglass College",
			964.391,
			930.89,
			-89.084,
			1166.53,
			1044.69,
			110.916
		},
		{
			"Glen Park",
			1812.62,
			-1100.82,
			-89.084,
			1994.33,
			-973.38,
			110.916
		},
		{
			"LVA Freight Depot",
			1375.6,
			919.447,
			-89.084,
			1457.37,
			1203.28,
			110.916
		},
		{
			"Regular Tom",
			-405.77,
			1712.86,
			-3,
			-276.719,
			1892.75,
			200
		},
		{
			"Verona Beach",
			1161.52,
			-1722.26,
			-89.084,
			1323.9,
			-1577.59,
			110.916
		},
		{
			"East Los Santos",
			2281.45,
			-1372.04,
			-89.084,
			2381.68,
			-1135.04,
			110.916
		},
		{
			"Caligula's Palace",
			2137.4,
			1703.23,
			-89.084,
			2437.39,
			1783.23,
			110.916
		},
		{
			"Idlewood",
			1951.66,
			-1742.31,
			-89.084,
			2124.66,
			-1602.31,
			110.916
		},
		{
			"Pilgrim",
			2624.4,
			1383.23,
			-89.084,
			2685.16,
			1783.23,
			110.916
		},
		{
			"Idlewood",
			2124.66,
			-1742.31,
			-89.084,
			2222.56,
			-1494.03,
			110.916
		},
		{
			"Queens",
			-2533.04,
			458.411,
			0,
			-2329.31,
			578.396,
			200
		},
		{
			"Downtown",
			-1871.72,
			1176.42,
			-4.5,
			-1620.3,
			1274.26,
			200
		},
		{
			"Commerce",
			1583.5,
			-1722.26,
			-89.084,
			1758.9,
			-1577.59,
			110.916
		},
		{
			"East Los Santos",
			2381.68,
			-1454.35,
			-89.084,
			2462.13,
			-1135.04,
			110.916
		},
		{
			"Marina",
			647.712,
			-1577.59,
			-89.084,
			807.922,
			-1416.25,
			110.916
		},
		{
			"Richman",
			72.648,
			-1404.97,
			-89.084,
			225.165,
			-1235.07,
			110.916
		},
		{
			"Vinewood",
			647.712,
			-1416.25,
			-89.084,
			787.461,
			-1227.28,
			110.916
		},
		{
			"East Los Santos",
			2222.56,
			-1628.53,
			-89.084,
			2421.03,
			-1494.03,
			110.916
		},
		{
			"Rodeo",
			558.099,
			-1684.65,
			-89.084,
			647.522,
			-1384.93,
			110.916
		},
		{
			"Easter Tunnel",
			-1709.71,
			-833.034,
			-1.5,
			-1446.01,
			-730.118,
			200
		},
		{
			"Rodeo",
			466.223,
			-1385.07,
			-89.084,
			647.522,
			-1235.07,
			110.916
		},
		{
			"Redsands East",
			1817.39,
			2202.76,
			-89.084,
			2011.94,
			2342.83,
			110.916
		},
		{
			"The Clown's Pocket",
			2162.39,
			1783.23,
			-89.084,
			2437.39,
			1883.23,
			110.916
		},
		{
			"Idlewood",
			1971.66,
			-1852.87,
			-89.084,
			2222.56,
			-1742.31,
			110.916
		},
		{
			"Montgomery Intersection",
			1546.65,
			208.164,
			0,
			1745.83,
			347.457,
			200
		},
		{
			"Willowfield",
			2089,
			-2235.84,
			-89.084,
			2201.82,
			-1989.9,
			110.916
		},
		{
			"Temple",
			952.663,
			-1130.84,
			-89.084,
			1096.47,
			-937.184,
			110.916
		},
		{
			"Prickle Pine",
			1848.4,
			2553.49,
			-89.084,
			1938.8,
			2863.23,
			110.916
		},
		{
			"Los Santos International",
			1400.97,
			-2669.26,
			-39.084,
			2189.82,
			-2597.26,
			60.916
		},
		{
			"Garver Bridge",
			-1213.91,
			950.022,
			-89.084,
			-1087.93,
			1178.93,
			110.916
		},
		{
			"Garver Bridge",
			-1339.89,
			828.129,
			-89.084,
			-1213.91,
			1057.04,
			110.916
		},
		{
			"Kincaid Bridge",
			-1339.89,
			599.218,
			-89.084,
			-1213.91,
			828.129,
			110.916
		},
		{
			"Kincaid Bridge",
			-1213.91,
			721.111,
			-89.084,
			-1087.93,
			950.022,
			110.916
		},
		{
			"Verona Beach",
			930.221,
			-2006.78,
			-89.084,
			1073.22,
			-1804.21,
			110.916
		},
		{
			"Verdant Bluffs",
			1073.22,
			-2006.78,
			-89.084,
			1249.62,
			-1842.27,
			110.916
		},
		{
			"Vinewood",
			787.461,
			-1130.84,
			-89.084,
			952.604,
			-954.662,
			110.916
		},
		{
			"Vinewood",
			787.461,
			-1310.21,
			-89.084,
			952.663,
			-1130.84,
			110.916
		},
		{
			"Commerce",
			1463.9,
			-1577.59,
			-89.084,
			1667.96,
			-1430.87,
			110.916
		},
		{
			"Market",
			787.461,
			-1416.25,
			-89.084,
			1072.66,
			-1310.21,
			110.916
		},
		{
			"Rockshore West",
			2377.39,
			596.349,
			-89.084,
			2537.39,
			788.894,
			110.916
		},
		{
			"Julius Thruway North",
			2237.4,
			2542.55,
			-89.084,
			2498.21,
			2663.17,
			110.916
		},
		{
			"East Beach",
			2632.83,
			-1668.13,
			-89.084,
			2747.74,
			-1393.42,
			110.916
		},
		{
			"Fallow Bridge",
			434.341,
			366.572,
			0,
			603.035,
			555.68,
			200
		},
		{
			"Willowfield",
			2089,
			-1989.9,
			-89.084,
			2324,
			-1852.87,
			110.916
		},
		{
			"Chinatown",
			-2274.17,
			578.396,
			-7.6,
			-2078.67,
			744.17,
			200
		},
		{
			"El Castillo del Diablo",
			-208.57,
			2337.18,
			0,
			8.43,
			2487.18,
			200
		},
		{
			"Ocean Docks",
			2324,
			-2145.1,
			-89.084,
			2703.58,
			-2059.23,
			110.916
		},
		{
			"Easter Bay Chemicals",
			-1132.82,
			-768.027,
			0,
			-956.476,
			-578.118,
			200
		},
		{
			"The Visage",
			1817.39,
			1703.23,
			-89.084,
			2027.4,
			1863.23,
			110.916
		},
		{
			"Ocean Flats",
			-2994.49,
			-430.276,
			-1.2,
			-2831.89,
			-222.589,
			200
		},
		{
			"Richman",
			321.356,
			-860.619,
			-89.084,
			687.802,
			-768.027,
			110.916
		},
		{
			"Green Palms",
			176.581,
			1305.45,
			-3,
			338.658,
			1520.72,
			200
		},
		{
			"Richman",
			321.356,
			-768.027,
			-89.084,
			700.794,
			-674.885,
			110.916
		},
		{
			"Starfish Casino",
			2162.39,
			1883.23,
			-89.084,
			2437.39,
			2012.18,
			110.916
		},
		{
			"East Beach",
			2747.74,
			-1668.13,
			-89.084,
			2959.35,
			-1498.62,
			110.916
		},
		{
			"Jefferson",
			2056.86,
			-1372.04,
			-89.084,
			2281.45,
			-1210.74,
			110.916
		},
		{
			"Downtown Los Santos",
			1463.9,
			-1290.87,
			-89.084,
			1724.76,
			-1150.87,
			110.916
		},
		{
			"Downtown Los Santos",
			1463.9,
			-1430.87,
			-89.084,
			1724.76,
			-1290.87,
			110.916
		},
		{
			"Garver Bridge",
			-1499.89,
			696.442,
			-179.615,
			-1339.89,
			925.353,
			20.385
		},
		{
			"Julius Thruway South",
			1457.39,
			823.228,
			-89.084,
			2377.39,
			863.229,
			110.916
		},
		{
			"East Los Santos",
			2421.03,
			-1628.53,
			-89.084,
			2632.83,
			-1454.35,
			110.916
		},
		{
			"Greenglass College",
			964.391,
			1044.69,
			-89.084,
			1197.39,
			1203.22,
			110.916
		},
		{
			"Las Colinas",
			2747.74,
			-1120.04,
			-89.084,
			2959.35,
			-945.035,
			110.916
		},
		{
			"Mulholland",
			737.573,
			-768.027,
			-89.084,
			1142.29,
			-674.885,
			110.916
		},
		{
			"Ocean Docks",
			2201.82,
			-2730.88,
			-89.084,
			2324,
			-2418.33,
			110.916
		},
		{
			"East Los Santos",
			2462.13,
			-1454.35,
			-89.084,
			2581.73,
			-1135.04,
			110.916
		},
		{
			"Ganton",
			2222.56,
			-1722.33,
			-89.084,
			2632.83,
			-1628.53,
			110.916
		},
		{
			"Avispa Country Club",
			-2831.89,
			-430.276,
			-6.1,
			-2646.4,
			-222.589,
			200
		},
		{
			"Willowfield",
			1970.62,
			-2179.25,
			-89.084,
			2089,
			-1852.87,
			110.916
		},
		{
			"Esplanade North",
			-1982.32,
			1274.26,
			-4.5,
			-1524.24,
			1358.9,
			200
		},
		{
			"The High Roller",
			1817.39,
			1283.23,
			-89.084,
			2027.39,
			1469.23,
			110.916
		},
		{
			"Ocean Docks",
			2201.82,
			-2418.33,
			-89.084,
			2324,
			-2095,
			110.916
		},
		{
			"Last Dime Motel",
			1823.08,
			596.349,
			-89.084,
			1997.22,
			823.228,
			110.916
		},
		{
			"Bayside Marina",
			-2353.17,
			2275.79,
			0,
			-2153.17,
			2475.79,
			200
		},
		{
			"King's",
			-2329.31,
			458.411,
			-7.6,
			-1993.28,
			578.396,
			200
		},
		{
			"El Corona",
			1692.62,
			-2179.25,
			-89.084,
			1812.62,
			-1842.27,
			110.916
		},
		{
			"Blackfield Chapel",
			1375.6,
			596.349,
			-89.084,
			1558.09,
			823.228,
			110.916
		},
		{
			"The Pink Swan",
			1817.39,
			1083.23,
			-89.084,
			2027.39,
			1283.23,
			110.916
		},
		{
			"Julius Thruway West",
			1197.39,
			1163.39,
			-89.084,
			1236.63,
			2243.23,
			110.916
		},
		{
			"Los Flores",
			2581.73,
			-1393.42,
			-89.084,
			2747.74,
			-1135.04,
			110.916
		},
		{
			"The Visage",
			1817.39,
			1863.23,
			-89.084,
			2106.7,
			2011.83,
			110.916
		},
		{
			"Prickle Pine",
			1938.8,
			2624.23,
			-89.084,
			2121.4,
			2861.55,
			110.916
		},
		{
			"Verona Beach",
			851.449,
			-1804.21,
			-89.084,
			1046.15,
			-1577.59,
			110.916
		},
		{
			"Robada Intersection",
			-1119.01,
			1178.93,
			-89.084,
			-862.025,
			1351.45,
			110.916
		},
		{
			"Linden Side",
			2749.9,
			943.235,
			-89.084,
			2923.39,
			1198.99,
			110.916
		},
		{
			"Ocean Docks",
			2703.58,
			-2302.33,
			-89.084,
			2959.35,
			-2126.9,
			110.916
		},
		{
			"Willowfield",
			2324,
			-2059.23,
			-89.084,
			2541.7,
			-1852.87,
			110.916
		},
		{
			"King's",
			-2411.22,
			265.243,
			-9.1,
			-1993.28,
			373.539,
			200
		},
		{
			"Commerce",
			1323.9,
			-1842.27,
			-89.084,
			1701.9,
			-1722.26,
			110.916
		},
		{
			"Mulholland",
			1269.13,
			-768.027,
			-89.084,
			1414.07,
			-452.425,
			110.916
		},
		{
			"Marina",
			647.712,
			-1804.21,
			-89.084,
			851.449,
			-1577.59,
			110.916
		},
		{
			"Battery Point",
			-2741.07,
			1268.41,
			-4.5,
			-2533.04,
			1490.47,
			200
		},
		{
			"The Four Dragons Casino",
			1817.39,
			863.232,
			-89.084,
			2027.39,
			1083.23,
			110.916
		},
		{
			"Blackfield",
			964.391,
			1203.22,
			-89.084,
			1197.39,
			1403.22,
			110.916
		},
		{
			"Julius Thruway North",
			1534.56,
			2433.23,
			-89.084,
			1848.4,
			2583.23,
			110.916
		},
		{
			"Yellow Bell Gol Course",
			1117.4,
			2723.23,
			-89.084,
			1457.46,
			2863.23,
			110.916
		},
		{
			"Idlewood",
			1812.62,
			-1602.31,
			-89.084,
			2124.66,
			-1449.67,
			110.916
		},
		{
			"Redsands West",
			1297.47,
			2142.86,
			-89.084,
			1777.39,
			2243.23,
			110.916
		},
		{
			"Doherty",
			-2270.04,
			-324.114,
			-1.2,
			-1794.92,
			-222.589,
			200
		},
		{
			"Hilltop Farm",
			967.383,
			-450.39,
			-3,
			1176.78,
			-217.9,
			200
		},
		{
			"Las Barrancas",
			-926.13,
			1398.73,
			-3,
			-719.234,
			1634.69,
			200
		},
		{
			"Pirates in Men's Pants",
			1817.39,
			1469.23,
			-89.084,
			2027.4,
			1703.23,
			110.916
		},
		{
			"City Hall",
			-2867.85,
			277.411,
			-9.1,
			-2593.44,
			458.411,
			200
		},
		{
			"Avispa Country Club",
			-2646.4,
			-355.493,
			0,
			-2270.04,
			-222.589,
			200
		},
		{
			"The Strip",
			2027.4,
			863.229,
			-89.084,
			2087.39,
			1703.23,
			110.916
		},
		{
			"Hashbury",
			-2593.44,
			-222.589,
			-1,
			-2411.22,
			54.722,
			200
		},
		{
			"Los Santos International",
			1852,
			-2394.33,
			-89.084,
			2089,
			-2179.25,
			110.916
		},
		{
			"Whitewood Estates",
			1098.31,
			1726.22,
			-89.084,
			1197.39,
			2243.23,
			110.916
		},
		{
			"Sherman Reservoir",
			-789.737,
			1659.68,
			-89.084,
			-599.505,
			1929.41,
			110.916
		},
		{
			"El Corona",
			1812.62,
			-2179.25,
			-89.084,
			1970.62,
			-1852.87,
			110.916
		},
		{
			"Downtown",
			-1700.01,
			744.267,
			-6.1,
			-1580.01,
			1176.52,
			200
		},
		{
			"Foster Valley",
			-2178.69,
			-1250.97,
			0,
			-1794.92,
			-1115.58,
			200
		},
		{
			"Las Payasadas",
			-354.332,
			2580.36,
			2,
			-133.625,
			2816.82,
			200
		},
		{
			"Valle Ocultado",
			-936.668,
			2611.44,
			2,
			-715.961,
			2847.9,
			200
		},
		{
			"Blackfield Intersection",
			1166.53,
			795.01,
			-89.084,
			1375.6,
			1044.69,
			110.916
		},
		{
			"Ganton",
			2222.56,
			-1852.87,
			-89.084,
			2632.83,
			-1722.33,
			110.916
		},
		{
			"Easter Bay Airport",
			-1213.91,
			-730.118,
			0,
			-1132.82,
			-50.096,
			200
		},
		{
			"Redsands East",
			1817.39,
			2011.83,
			-89.084,
			2106.7,
			2202.76,
			110.916
		},
		{
			"Esplanade East",
			-1499.89,
			578.396,
			-79.615,
			-1339.89,
			1274.26,
			20.385
		},
		{
			"Caligula's Palace",
			2087.39,
			1543.23,
			-89.084,
			2437.39,
			1703.23,
			110.916
		},
		{
			"Royal Casino",
			2087.39,
			1383.23,
			-89.084,
			2437.39,
			1543.23,
			110.916
		},
		{
			"Richman",
			72.648,
			-1235.07,
			-89.084,
			321.356,
			-1008.15,
			110.916
		},
		{
			"Starfish Casino",
			2437.39,
			1783.23,
			-89.084,
			2685.16,
			2012.18,
			110.916
		},
		{
			"Mulholland",
			1281.13,
			-452.425,
			-89.084,
			1641.13,
			-290.913,
			110.916
		},
		{
			"Downtown",
			-1982.32,
			744.17,
			-6.1,
			-1871.72,
			1274.26,
			200
		},
		{
			"Hankypanky Point",
			2576.92,
			62.158,
			0,
			2759.25,
			385.503,
			200
		},
		{
			"K.A.C.C. Military Fuels",
			2498.21,
			2626.55,
			-89.084,
			2749.9,
			2861.55,
			110.916
		},
		{
			"Harry Gold Parkway",
			1777.39,
			863.232,
			-89.084,
			1817.39,
			2342.83,
			110.916
		},
		{
			"Bayside Tunnel",
			-2290.19,
			2548.29,
			-89.084,
			-1950.19,
			2723.29,
			110.916
		},
		{
			"Ocean Docks",
			2324,
			-2302.33,
			-89.084,
			2703.58,
			-2145.1,
			110.916
		},
		{
			"Richman",
			321.356,
			-1044.07,
			-89.084,
			647.557,
			-860.619,
			110.916
		},
		{
			"Randolph Industrial Estate",
			1558.09,
			596.349,
			-89.084,
			1823.08,
			823.235,
			110.916
		},
		{
			"East Beach",
			2632.83,
			-1852.87,
			-89.084,
			2959.35,
			-1668.13,
			110.916
		},
		{
			"Flint Water",
			-314.426,
			-753.874,
			-89.084,
			-106.339,
			-463.073,
			110.916
		},
		{
			"Blueberry",
			19.607,
			-404.136,
			3.8,
			349.607,
			-220.137,
			200
		},
		{
			"Linden Station",
			2749.9,
			1198.99,
			-89.084,
			2923.39,
			1548.99,
			110.916
		},
		{
			"Glen Park",
			1812.62,
			-1350.72,
			-89.084,
			2056.86,
			-1100.82,
			110.916
		},
		{
			"Downtown",
			-1993.28,
			265.243,
			-9.1,
			-1794.92,
			578.396,
			200
		},
		{
			"Redsands West",
			1377.39,
			2243.23,
			-89.084,
			1704.59,
			2433.23,
			110.916
		},
		{
			"Richman",
			321.356,
			-1235.07,
			-89.084,
			647.522,
			-1044.07,
			110.916
		},
		{
			"Gant Bridge",
			-2741.45,
			1659.68,
			-6.1,
			-2616.4,
			2175.15,
			200
		},
		{
			"Lil' Probe Inn",
			-90.218,
			1286.85,
			-3,
			153.859,
			1554.12,
			200
		},
		{
			"Flint Intersection",
			-187.7,
			-1596.76,
			-89.084,
			17.063,
			-1276.6,
			110.916
		},
		{
			"Las Colinas",
			2281.45,
			-1135.04,
			-89.084,
			2632.74,
			-945.035,
			110.916
		},
		{
			"Sobell Rail Yards",
			2749.9,
			1548.99,
			-89.084,
			2923.39,
			1937.25,
			110.916
		},
		{
			"The Emerald Isle",
			2011.94,
			2202.76,
			-89.084,
			2237.4,
			2508.23,
			110.916
		},
		{
			"El Castillo del Diablo",
			-208.57,
			2123.01,
			-7.6,
			114.033,
			2337.18,
			200
		},
		{
			"Santa Flora",
			-2741.07,
			458.411,
			-7.6,
			-2533.04,
			793.411,
			200
		},
		{
			"Playa del Seville",
			2703.58,
			-2126.9,
			-89.084,
			2959.35,
			-1852.87,
			110.916
		},
		{
			"Market",
			926.922,
			-1577.59,
			-89.084,
			1370.85,
			-1416.25,
			110.916
		},
		{
			"Queens",
			-2593.44,
			54.722,
			0,
			-2411.22,
			458.411,
			200
		},
		{
			"Pilson Intersection",
			1098.39,
			2243.23,
			-89.084,
			1377.39,
			2507.23,
			110.916
		},
		{
			"Spinybed",
			2121.4,
			2663.17,
			-89.084,
			2498.21,
			2861.55,
			110.916
		},
		{
			"Pilgrim",
			2437.39,
			1383.23,
			-89.084,
			2624.4,
			1783.23,
			110.916
		},
		{
			"Blackfield",
			964.391,
			1403.22,
			-89.084,
			1197.39,
			1726.22,
			110.916
		},
		{
			"'The Big Ear'",
			-410.02,
			1403.34,
			-3,
			-137.969,
			1681.23,
			200
		},
		{
			"Dillimore",
			580.794,
			-674.885,
			-9.5,
			861.085,
			-404.79,
			200
		},
		{
			"El Quebrados",
			-1645.23,
			2498.52,
			0,
			-1372.14,
			2777.85,
			200
		},
		{
			"Esplanade North",
			-2533.04,
			1358.9,
			-4.5,
			-1996.66,
			1501.21,
			200
		},
		{
			"Easter Bay Airport",
			-1499.89,
			-50.096,
			-1,
			-1242.98,
			249.904,
			200
		},
		{
			"Fisher's Lagoon",
			1916.99,
			-233.323,
			-100,
			2131.72,
			13.8,
			200
		},
		{
			"Mulholland",
			1414.07,
			-768.027,
			-89.084,
			1667.61,
			-452.425,
			110.916
		},
		{
			"East Beach",
			2747.74,
			-1498.62,
			-89.084,
			2959.35,
			-1120.04,
			110.916
		},
		{
			"San Andreas Sound",
			2450.39,
			385.503,
			-100,
			2759.25,
			562.349,
			200
		},
		{
			"Shady Creeks",
			-2030.12,
			-2174.89,
			-6.1,
			-1820.64,
			-1771.66,
			200
		},
		{
			"Market",
			1072.66,
			-1416.25,
			-89.084,
			1370.85,
			-1130.85,
			110.916
		},
		{
			"Rockshore West",
			1997.22,
			596.349,
			-89.084,
			2377.39,
			823.228,
			110.916
		},
		{
			"Prickle Pine",
			1534.56,
			2583.23,
			-89.084,
			1848.4,
			2863.23,
			110.916
		},
		{
			"Easter Basin",
			-1794.92,
			-50.096,
			-1.04,
			-1499.89,
			249.904,
			200
		},
		{
			"Leafy Hollow",
			-1166.97,
			-1856.03,
			0,
			-815.624,
			-1602.07,
			200
		},
		{
			"LVA Freight Depot",
			1457.39,
			863.229,
			-89.084,
			1777.4,
			1143.21,
			110.916
		},
		{
			"Prickle Pine",
			1117.4,
			2507.23,
			-89.084,
			1534.56,
			2723.23,
			110.916
		},
		{
			"Blueberry",
			104.534,
			-220.137,
			2.3,
			349.607,
			152.236,
			200
		},
		{
			"El Castillo del Diablo",
			-464.515,
			2217.68,
			0,
			-208.57,
			2580.36,
			200
		},
		{
			"Downtown",
			-2078.67,
			578.396,
			-7.6,
			-1499.89,
			744.267,
			200
		},
		{
			"Rockshore East",
			2537.39,
			676.549,
			-89.084,
			2902.35,
			943.235,
			110.916
		},
		{
			"San Fierro Bay",
			-2616.4,
			1501.21,
			-3,
			-1996.66,
			1659.68,
			200
		},
		{
			"Paradiso",
			-2741.07,
			793.411,
			-6.1,
			-2533.04,
			1268.41,
			200
		},
		{
			"The Camel's Toe",
			2087.39,
			1203.23,
			-89.084,
			2640.4,
			1383.23,
			110.916
		},
		{
			"Old Venturas Strip",
			2162.39,
			2012.18,
			-89.084,
			2685.16,
			2202.76,
			110.916
		},
		{
			"Juniper Hill",
			-2533.04,
			578.396,
			-7.6,
			-2274.17,
			968.369,
			200
		},
		{
			"Juniper Hollow",
			-2533.04,
			968.369,
			-6.1,
			-2274.17,
			1358.9,
			200
		},
		{
			"Roca Escalante",
			2237.4,
			2202.76,
			-89.084,
			2536.43,
			2542.55,
			110.916
		},
		{
			"Julius Thruway East",
			2685.16,
			1055.96,
			-89.084,
			2749.9,
			2626.55,
			110.916
		},
		{
			"Verona Beach",
			647.712,
			-2173.29,
			-89.084,
			930.221,
			-1804.21,
			110.916
		},
		{
			"Foster Valley",
			-2178.69,
			-599.884,
			-1.2,
			-1794.92,
			-324.114,
			200
		},
		{
			"Arco del Oeste",
			-901.129,
			2221.86,
			0,
			-592.09,
			2571.97,
			200
		},
		{
			"Fallen Tree",
			-792.254,
			-698.555,
			-5.3,
			-452.404,
			-380.043,
			200
		},
		{
			"The Farm",
			-1209.67,
			-1317.1,
			114.981,
			-908.161,
			-787.391,
			251.981
		},
		{
			"The Sherman Dam",
			-968.772,
			1929.41,
			-3,
			-481.126,
			2155.26,
			200
		},
		{
			"Esplanade North",
			-1996.66,
			1358.9,
			-4.5,
			-1524.24,
			1592.51,
			200
		},
		{
			"Financial",
			-1871.72,
			744.17,
			-6.1,
			-1701.3,
			1176.42,
			300
		},
		{
			"Garcia",
			-2411.22,
			-222.589,
			-1.14,
			-2173.04,
			265.243,
			200
		},
		{
			"Montgomery",
			1119.51,
			119.526,
			-3,
			1451.4,
			493.323,
			200
		},
		{
			"Creek",
			2749.9,
			1937.25,
			-89.084,
			2921.62,
			2669.79,
			110.916
		},
		{
			"Los Santos International",
			1249.62,
			-2394.33,
			-89.084,
			1852,
			-2179.25,
			110.916
		},
		{
			"Santa Maria Beach",
			72.648,
			-2173.29,
			-89.084,
			342.648,
			-1684.65,
			110.916
		},
		{
			"Mulholland Intersection",
			1463.9,
			-1150.87,
			-89.084,
			1812.62,
			-768.027,
			110.916
		},
		{
			"Angel Pine",
			-2324.94,
			-2584.29,
			-6.1,
			-1964.22,
			-2212.11,
			200
		},
		{
			"Verdant Meadows",
			37.032,
			2337.18,
			-3,
			435.988,
			2677.9,
			200
		},
		{
			"Octane Springs",
			338.658,
			1228.51,
			0,
			664.308,
			1655.05,
			200
		},
		{
			"Come-A-Lot",
			2087.39,
			943.235,
			-89.084,
			2623.18,
			1203.23,
			110.916
		},
		{
			"Redsands West",
			1236.63,
			1883.11,
			-89.084,
			1777.39,
			2142.86,
			110.916
		},
		{
			"Santa Maria Beach",
			342.648,
			-2173.29,
			-89.084,
			647.712,
			-1684.65,
			110.916
		},
		{
			"Verdant Bluffs",
			1249.62,
			-2179.25,
			-89.084,
			1692.62,
			-1842.27,
			110.916
		},
		{
			"Las Venturas Airport",
			1236.63,
			1203.28,
			-89.084,
			1457.37,
			1883.11,
			110.916
		},
		{
			"Flint Range",
			-594.191,
			-1648.55,
			0,
			-187.7,
			-1276.6,
			200
		},
		{
			"Verdant Bluffs",
			930.221,
			-2488.42,
			-89.084,
			1249.62,
			-2006.78,
			110.916
		},
		{
			"Palomino Creek",
			2160.22,
			-149.004,
			0,
			2576.92,
			228.322,
			200
		},
		{
			"Ocean Docks",
			2373.77,
			-2697.09,
			-89.084,
			2809.22,
			-2330.46,
			110.916
		},
		{
			"Easter Bay Airport",
			-1213.91,
			-50.096,
			-4.5,
			-947.98,
			578.396,
			200
		},
		{
			"Whitewood Estates",
			883.308,
			1726.22,
			-89.084,
			1098.31,
			2507.23,
			110.916
		},
		{
			"Calton Heights",
			-2274.17,
			744.17,
			-6.1,
			-1982.32,
			1358.9,
			200
		},
		{
			"Easter Basin",
			-1794.92,
			249.904,
			-9.1,
			-1242.98,
			578.396,
			200
		},
		{
			"Los Santos Inlet",
			-321.744,
			-2224.43,
			-89.084,
			44.615,
			-1724.43,
			110.916
		},
		{
			"Doherty",
			-2173.04,
			-222.589,
			-1,
			-1794.92,
			265.243,
			200
		},
		{
			"Mount Chiliad",
			-2178.69,
			-2189.91,
			-47.917,
			-2030.12,
			-1771.66,
			576.083
		},
		{
			"Fort Carson",
			-376.233,
			826.326,
			-3,
			123.717,
			1220.44,
			200
		},
		{
			"Foster Valley",
			-2178.69,
			-1115.58,
			0,
			-1794.92,
			-599.884,
			200
		},
		{
			"Ocean Flats",
			-2994.49,
			-222.589,
			-1,
			-2593.44,
			277.411,
			200
		},
		{
			"Fern Ridge",
			508.189,
			-139.259,
			0,
			1306.66,
			119.526,
			200
		},
		{
			"Bayside",
			-2741.07,
			2175.15,
			0,
			-2353.17,
			2722.79,
			200
		},
		{
			"Las Venturas Airport",
			1457.37,
			1203.28,
			-89.084,
			1777.39,
			1883.11,
			110.916
		},
		{
			"Blueberry Acres",
			-319.676,
			-220.137,
			0,
			104.534,
			293.324,
			200
		},
		{
			"Palisades",
			-2994.49,
			458.411,
			-6.1,
			-2741.07,
			1339.61,
			200
		},
		{
			"North Rock",
			2285.37,
			-768.027,
			0,
			2770.59,
			-269.74,
			200
		},
		{
			"Hunter Quarry",
			337.244,
			710.84,
			-115.239,
			860.554,
			1031.71,
			203.761
		},
		{
			"Los Santos International",
			1382.73,
			-2730.88,
			-89.084,
			2201.82,
			-2394.33,
			110.916
		},
		{
			"Missionary Hill",
			-2994.49,
			-811.276,
			0,
			-2178.69,
			-430.276,
			200
		},
		{
			"San Fierro Bay",
			-2616.4,
			1659.68,
			-3,
			-1996.66,
			2175.15,
			200
		},
		{
			"Restricted Area",
			-91.586,
			1655.05,
			-50,
			421.234,
			2123.01,
			250
		},
		{
			"Mount Chiliad",
			-2997.47,
			-1115.58,
			-47.917,
			-2178.69,
			-971.913,
			576.083
		},
		{
			"Mount Chiliad",
			-2178.69,
			-1771.66,
			-47.917,
			-1936.12,
			-1250.97,
			576.083
		},
		{
			"Easter Bay Airport",
			-1794.92,
			-730.118,
			-3,
			-1213.91,
			-50.096,
			200
		},
		{
			"The Panopticon",
			-947.98,
			-304.32,
			-1.1,
			-319.676,
			327.071,
			200
		},
		{
			"Shady Creeks",
			-1820.64,
			-2643.68,
			-8,
			-1226.78,
			-1771.66,
			200
		},
		{
			"Back o Beyond",
			-1166.97,
			-2641.19,
			0,
			-321.744,
			-1856.03,
			200
		},
		{
			"Mount Chiliad",
			-2994.49,
			-2189.91,
			-47.917,
			-2178.69,
			-1115.58,
			576.083
		},
		{
			"Tierra Robada",
			-1213.91,
			596.349,
			-242.99,
			-480.539,
			1659.68,
			900
		},
		{
			"Flint County",
			-1213.91,
			-2892.97,
			-242.99,
			44.615,
			-768.027,
			900
		},
		{
			"Whetstone",
			-2997.47,
			-2892.97,
			-242.99,
			-1213.91,
			-1115.58,
			900
		},
		{
			"Bone County",
			-480.539,
			596.349,
			-242.99,
			869.461,
			2993.87,
			900
		},
		{
			"Tierra Robada",
			-2997.47,
			1659.68,
			-242.99,
			-480.539,
			2993.87,
			900
		},
		{
			"San Fierro",
			-2997.47,
			-1115.58,
			-242.99,
			-1213.91,
			1659.68,
			900
		},
		{
			"Las Venturas",
			869.461,
			596.349,
			-242.99,
			2997.06,
			2993.87,
			900
		},
		{
			"Red County",
			-1213.91,
			-768.027,
			-242.99,
			2997.06,
			596.349,
			900
		},
		{
			"Los Santos",
			44.615,
			-2892.97,
			-242.99,
			2997.06,
			-768.027,
			900
		}
	}
	local var_41_1, var_41_2, var_41_3 = getCharCoordinates(PLAYER_PED)

	for iter_41_0, iter_41_1 in ipairs(var_41_0) do
		if var_41_1 >= iter_41_1[2] and var_41_2 >= iter_41_1[3] and var_41_3 >= iter_41_1[4] and var_41_1 <= iter_41_1[5] and var_41_2 <= iter_41_1[6] and var_41_3 <= iter_41_1[7] then
			return iter_41_1[1]
		end
	end

	return "Unknown"
end

function my_direction()
	local var_42_0 = math.ceil(getCharHeading(PLAYER_PED))

	if var_42_0 then
		if var_42_0 >= 0 and var_42_0 <= 35 or var_42_0 <= 360 and var_42_0 >= 325 then
			return "Север"
		elseif var_42_0 > 75 and var_42_0 < 100 then
			return "Запад"
		elseif var_42_0 > 255 and var_42_0 < 280 then
			return "Восток"
		elseif var_42_0 >= 170 and var_42_0 <= 187 then
			return "Юг"
		elseif var_42_0 >= 36 and var_42_0 <= 74 then
			return "Северо-Запад"
		elseif var_42_0 >= 186 and var_42_0 <= 259 then
			return "Юго-Восток"
		elseif var_42_0 >= 76 and var_42_0 <= 169 then
			return "Юго-Запад"
		elseif var_42_0 >= 254 and var_42_0 <= 324 then
			return "Северо-Восток"
		else
			return var_42_0
		end
	else
		return "Неизвестно"
	end
end

function bind_elms()
	for iter_43_0, iter_43_1 in ipairs(var_0_102) do
		if iter_43_1.activation ~= "" and var_0_18.active_binders[iter_43_1.activation] == true and isKeysDown(decodeJson(var_0_18.binds[iter_43_1.activation])) and not isPauseMenuActive() and not sampIsDialogActive() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() then
			linebinder(iter_43_1)
		end
	end

	if var_0_18.settings.autolovlya and isKeysDown(var_0_21.bind_startstop_autolovlya.v) and not isPauseMenuActive() and not sampIsDialogActive() and not sampIsChatInputActive() then
		var_0_50.autolovlyaWinState[0] = not var_0_50.autolovlyaWinState[0]
		var_0_50.autolovlya_time = 0

		if var_0_50.autolovlyago then
			var_0_50.autolovlyago = false
		end
	end

	if var_0_18.settings.strobes and isKeysDown(var_0_21.bind_strobes.v) and not sampIsDialogActive() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() then
		strobes()
	end

	if not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_cheats then
		if var_0_18.settings.fast_exit and isKeysDown(var_0_21.bind_fast_exit.v) and not isGamePaused() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() and not sampIsDialogActive() then
			if isCharInAnyCar(PLAYER_PED) then
				local var_43_0, var_43_1, var_43_2 = getCarCoordinates(storeCarCharIsInNoSave(PLAYER_PED))

				warpCharFromCarToCoord(PLAYER_PED, var_43_0, var_43_1, var_43_2)
			else
				var_0_108(var_0_14("Доступно только в автомобиле!"), 1500)
			end
		end

		if var_0_18.settings.nitro and isKeysDown(var_0_21.bind_nitro.v) and not isGamePaused() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() and not sampIsDialogActive() then
			if isCharInAnyCar(PLAYER_PED) then
				local var_43_3 = storeCarCharIsInNoSave(PLAYER_PED)

				giveNonPlayerCarNitro(var_43_3)
				var_0_108(var_0_14("Нитро успешно добавлен на автомобиль!"), 1500)
			else
				var_0_108(var_0_14("Доступно только в автомобиле!"), 1500)
			end
		end

		if var_0_18.settings.airbrake and isKeysDown(var_0_21.bind_airbrake.v) and not sampIsDialogActive() and not sampIsChatInputActive() and not isCursorActive() and not isSampfuncsConsoleActive() then
			if not var_0_29.flycar_active then
				var_0_29.active_airbrake = not var_0_29.active_airbrake

				var_0_108(var_0_14(var_0_29.active_airbrake and "Аирбрейк активирован!" or "Аирбрейк де-активирован!"), 666)

				airBrkCoords = {
					getCharCoordinates(PLAYER_PED)
				}

				if not isCharInAnyCar(PLAYER_PED) then
					airBrkCoords[3] = airBrkCoords[3] - 1
				end

				if var_0_29.active_invis then
					var_0_29.active_invis = false

					var_0_108(var_0_14("Режим невидимки отключен, т.к. Вы активировали AirBrake!"), 1111)
				end

				if var_0_18.settings.airbrake_clear then
					var_0_18.cheats.airbrake_speed = 4
				end

				if var_0_29.active_airbrake then
					var_0_29.active_clickwarp = false
					var_0_68 = false

					sampToggleCursor(false)
					lua_thread.create(airbrake)
				end
			else
				var_0_108(var_0_14("У вас активирован FlyCar!"), 999)
			end
		end

		if var_0_18.settings.wallhack and isKeysDown(var_0_21.bind_wallhack.v) and not sampIsDialogActive() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() then
			var_0_29.wh = not var_0_29.wh

			var_0_108(var_0_14(var_0_29.wh and "Вх активировано!" or "Вх деактивировано!"), 444)
		end

		if var_0_18.settings.obj_wh and isKeysDown(var_0_21.bind_obj_wh.v) and not sampIsDialogActive() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() then
			var_0_29.obj_wh = not var_0_29.obj_wh

			var_0_108(var_0_14(var_0_29.obj_wh and "Вх на объекты активировано!" or "Вх на объекты деактивировано!"), 444)
		end

		if var_0_18.settings.collision and isKeysDown(var_0_21.bind_collision.v) and not sampIsDialogActive() and not sampIsChatInputActive() and not isCursorActive() and not isSampfuncsConsoleActive() then
			var_0_29.collision_active = not var_0_29.collision_active

			if not var_0_29.collision_active then
				if var_0_18.settings.collision_vehs then
					for iter_43_2, iter_43_3 in ipairs(getAllVehicles()) do
						if doesVehicleExist(iter_43_3) then
							setCarCollision(iter_43_3, true)
						end
					end
				end

				if var_0_18.settings.collision_objects then
					for iter_43_4, iter_43_5 in ipairs(getAllObjects()) do
						if doesObjectExist(iter_43_5) then
							setObjectCollision(iter_43_5, true)
						end
					end
				end
			end

			var_0_108(var_0_14(var_0_29.collision_active and "Коллизия активирована!" or "Коллизия деактивирована!"), 444)
		end

		if var_0_18.settings.invis and isKeysDown(var_0_21.bind_invis.v) and not sampIsDialogActive() and not sampIsChatInputActive() and not isCursorActive() and not isSampfuncsConsoleActive() then
			if getActiveInterior() == 0 then
				if not var_0_29.active_airbrake then
					if not var_0_29.flycar_active then
						var_0_29.active_invis = not var_0_29.active_invis

						var_0_108(var_0_14("Вы ") .. var_0_14(var_0_29.active_invis and "активировали" or "отключили") .. var_0_14(" режим невидимки!"), 777)
					else
						var_0_108(var_0_14("У вас активен FlyCar, режим невидимки включить не получится!"), 1111)
					end
				else
					var_0_108(var_0_14("У вас активен AirBrake, режим невидимки включить не получится!"), 1111)
				end
			else
				var_0_108(var_0_14("Вы находитесь в интерьере, режим невидимки включить не получится!"), 1111)
			end
		end
	end

	if var_0_18.settings.autoopenar and isKeysDown(var_0_21.bind_ar.v) and not isPauseMenuActive() and not sampIsDialogActive() and not sampIsChatInputActive() then
		if var_0_18.settings.autoopenrep and not var_0_50.autolovlyaWinState[0] then
			var_0_36.go_open_rep = true

			if var_0_36.go_error then
				var_0_36.errors = tonumber(var_0_36.last_report_count) - 1
				var_0_36.go_error = false
			end
		end

		sampSendChat("/ar")
	end

	if var_0_18.settings.open_mat_bind and isKeysDown(var_0_21.open_mat.v) and not isPauseMenuActive() and not sampIsDialogActive() and not sampIsChatInputActive() then
		var_0_116.switch()
	end

	if isKeysDown(var_0_21.bind_off_mat.v) and not sampIsDialogActive() and not sampIsChatInputActive() then
		var_0_26.off_mat[0] = not var_0_26.off_mat[0]

		off_mat_func()
	end

	if isKeysDown(var_0_21.bind_acceptform.v) and not sampIsDialogActive() and not sampIsChatInputActive() and var_0_66.active_forma then
		AcceptForm()
	end

	if isKeysDown(var_0_21.bind_rejectform.v) and not sampIsDialogActive() and not sampIsChatInputActive() and var_0_66.active_forma then
		RejectForm()
	end

	if isKeysDown(var_0_21.bind_againform.v) and not sampIsDialogActive() and not sampIsChatInputActive() and not isCursorActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then
		sampSendChat(var_0_66.last_forma)
	end
end

function tp_coord(arg_44_0, arg_44_1, arg_44_2, arg_44_3)
	setCharInterior(PLAYER_PED, arg_44_0)
	setInteriorVisible(arg_44_0)
	clearExtraColours(true)
	requestCollision(arg_44_1, arg_44_2)
	loadScene(arg_44_1, arg_44_2, arg_44_3)
	activateInteriorPeds(true)
	setCharCoordinates(PLAYER_PED, arg_44_1, arg_44_2, arg_44_3)
end

var_0_2.cdef("struct stGangzone\n{\n    float    fPosition[4];\n    uint32_t    dwColor;\n    uint32_t    dwAltColor;\n};\nstruct stGangzonePool\n{\n    struct stGangzone    *pGangzone[1024];\n    int iIsListed[1024];\n};\n")
var_0_2.cdef("    intptr_t LoadKeyboardLayoutA(const char* pwszKLID, unsigned int Flags);\n    int PostMessageA(intptr_t hWnd, unsigned int Msg, unsigned int wParam, long lParam);\n    intptr_t GetActiveWindow();\n")

local var_0_119 = {}

function getAllGangZones()
	local var_45_0 = {}
	local var_45_1 = var_0_2.cast("struct stGangzonePool*", sampGetGangzonePoolPtr())

	for iter_45_0 = 0, 1023 do
		if var_45_1.iIsListed[iter_45_0] ~= 0 and var_45_1.pGangzone[iter_45_0] ~= nil then
			table.insert(var_45_0, {
				id = iter_45_0,
				pos = var_45_1.pGangzone[iter_45_0].fPosition,
				color = var_45_1.pGangzone[iter_45_0].dwColor,
				altcolor = var_45_1.pGangzone[iter_45_0].dwAltColor
			})
		end
	end

	return var_45_0
end

function setLanguage(arg_46_0)
	if var_0_119[arg_46_0] == nil then
		var_0_119[arg_46_0] = var_0_2.C.LoadKeyboardLayoutA(arg_46_0, 1)
	end

	var_0_2.C.PostMessageA(var_0_2.C.GetActiveWindow(), 80, 1, var_0_119[arg_46_0])
end

function getNearestCarWithDriver(arg_47_0)
	local var_47_0, var_47_1, var_47_2 = getCharCoordinates(PLAYER_PED)
	local var_47_3 = "Неизвестно"
	local var_47_4 = 999
	local var_47_5 = {}

	for iter_47_0, iter_47_1 in ipairs(getAllChars()) do
		if doesCharExist(iter_47_1) and iter_47_1 ~= PLAYER_PED and isCharInAnyCar(iter_47_1) then
			local var_47_6 = getDriverOfCar(storeCarCharIsInNoSave(iter_47_1))

			if doesCharExist(var_47_6) and var_47_6 ~= PLAYER_PED and isCharInAnyCar(var_47_6) and storeCarCharIsInNoSave(var_47_6) ~= storeCarCharIsInNoSave(PLAYER_PED) then
				local var_47_7, var_47_8, var_47_9 = getCharCoordinates(var_47_6)
				local var_47_10 = getDistanceBetweenCoords3d(var_47_0, var_47_1, var_47_2, var_47_7, var_47_8, var_47_9)
				local var_47_11, var_47_12 = sampGetPlayerIdByCharHandle(var_47_6)

				if arg_47_0 == 2 then
					if var_47_11 then
						local var_47_13 = var_0_22[getCarModel(storeCarCharIsInNoSave(var_47_6))] or "Неизвестно"

						table.insert(var_47_5, {
							id = var_47_12,
							dist = math.floor(var_47_10),
							model = var_47_13
						})
					end
				elseif isCharOnScreen(var_47_6) and var_47_11 and var_47_10 < var_47_4 then
					var_47_4 = var_47_10

					if sampIsPlayerConnected(var_47_12) then
						var_47_3 = var_47_12
					else
						var_47_3 = "Неизвестно"
					end
				end
			end
		end
	end

	if arg_47_0 == 2 then
		if #var_47_5 > 0 then
			for iter_47_2, iter_47_3 in ipairs(var_47_5) do
				if sampIsPlayerConnected(iter_47_3.id) then
					sampAddChatMessage(var_0_16 .. sampGetPlayerNickname(iter_47_3.id) .. "[" .. iter_47_3.id .. "] - " .. iter_47_3.model .. " - " .. iter_47_3.dist .. "м.", -1)
				end
			end
		else
			sampAddChatMessage(var_0_16 .. "Поблизости не найдено ни одного игрока за рулем транспорта.", -1)
		end
	else
		return var_47_3
	end
end

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then
		return
	end

	while not isSampAvailable() do
		wait(100)
	end

	check_update()

	var_0_70.sampLoaded = true

	sampRegisterChatCommand("lov", function()
		var_0_115.switch()
	end)
	sampRegisterChatCommand("off_mat", function()
		var_0_26.off_mat[0] = not var_0_26.off_mat[0]

		off_mat_func()
	end)
	sampRegisterChatCommand("txt_lines", function(arg_51_0)
		if arg_51_0 == "" then
			sampAddChatMessage(var_0_16 .. "Введите имя файла с расширением .txt (без расширения).", -1)
		else
			local var_51_0, var_51_1 = io.open(getWorkingDirectory() .. "\\MATools\\" .. arg_51_0 .. ".txt", "r")

			if not var_51_0 then
				sampAddChatMessage(var_0_16 .. "Не найдено файла в папке скрипта: " .. arg_51_0 .. ".txt", -1)
			else
				local var_51_2 = {}

				for iter_51_0 in var_51_0:lines() do
					table.insert(var_51_2, iter_51_0)
				end

				var_51_0:close()
				lua_thread.create(function()
					for iter_52_0, iter_52_1 in ipairs(var_51_2) do
						sampSendChat(var_0_14:decode(iter_52_1))
						wait(40)
					end
				end)

				var_51_2 = {}
			end
		end
	end)
	sampRegisterChatCommand("a", function(arg_53_0)
		if arg_53_0 == "" then
			sampAddChatMessage(var_0_16 .. "Вы не ввели текст, используйте: /a [Текст].", -1)
		else
			local var_53_0 = 110 - (30 + #myNick())

			if var_53_0 >= #arg_53_0 then
				sampSendChat("/a " .. arg_53_0)
			else
				local var_53_1 = (function(arg_54_0, arg_54_1)
					local var_54_0 = {}
					local var_54_1 = 1
					local var_54_2 = arg_54_0:sub(var_54_1, var_54_1 + arg_54_1 - 1)

					table.insert(var_54_0, var_54_2)

					local var_54_3 = var_54_1 + arg_54_1

					while var_54_3 <= #arg_54_0 do
						local var_54_4 = #arg_54_0 - var_54_3 + 1
						local var_54_5 = arg_54_1 < var_54_4 and arg_54_1 or var_54_4
						local var_54_6 = arg_54_0:sub(var_54_3, var_54_3 + var_54_5 - 1)

						table.insert(var_54_0, var_54_6)

						var_54_3 = var_54_3 + var_54_5
					end

					return var_54_0
				end)(arg_53_0, var_53_0)

				if #var_53_1 > 1 then
					sampSendChat("/a " .. var_53_1[1] .. "...")
				else
					sampSendChat("/a " .. var_53_1[1])
				end

				for iter_53_0 = 2, #var_53_1 do
					local var_53_2 = iter_53_0 == #var_53_1 and "" or "..."

					sampSendChat("/a ..." .. var_53_1[iter_53_0] .. var_53_2)
				end
			end
		end
	end)
	sampRegisterChatCommand("check_update_mat", function()
		check_update()
	end)
	sampRegisterChatCommand("ghetto_zone", function(arg_56_0)
		local var_56_0 = getAllGangZones()

		for iter_56_0, iter_56_1 in ipairs(var_56_0) do
			if iter_56_1.id == tonumber(arg_56_0) then
				local var_56_1 = iter_56_1.pos[0] + (iter_56_1.pos[2] - iter_56_1.pos[0]) / 2
				local var_56_2 = iter_56_1.pos[1] + (iter_56_1.pos[3] - iter_56_1.pos[1]) / 2

				tp_coord(0, var_56_1, var_56_2, 30)
			end
		end
	end)
	sampRegisterChatCommand("amp", function()
		var_0_113.sel = var_0_15.int(8)

		if not var_0_116.state then
			var_0_116.switch()
		end
	end)
	sampRegisterChatCommand("ghetto", function()
		var_0_43.ghettoWinState[0] = not var_0_43.ghettoWinState[0]
	end)
	sampRegisterChatCommand("road", function()
		local var_59_0, var_59_1, var_59_2, var_59_3 = getNearRoad()

		if var_59_0 then
			setCharCoordinates(PLAYER_PED, var_59_1, var_59_2, var_59_3 + 1)
		end
	end)
	sampRegisterChatCommand("getip", function(arg_60_0)
		if arg_60_0 ~= "" and arg_60_0 ~= nil and not var_0_2.string(arg_60_0):match("%a") then
			if tonumber(arg_60_0) > -1 and tonumber(arg_60_0) < 1001 then
				sampSendChat("/getip " .. arg_60_0)

				var_0_49.id = tonumber(arg_60_0)
				var_0_49.nick = getPlayerNicknameById(tonumber(arg_60_0))
			else
				var_0_108(var_0_14("Вы указали некорректный id, используйте: /getip [id(От 0 до 1000)]"), 2000)
			end
		else
			var_0_108(var_0_14("Вы указали некорректный id, используйте: /getip [id]"), 2000)
		end
	end)
	sampRegisterChatCommand("mat", function()
		var_0_116.switch()
	end)
	sampRegisterChatCommand("mh", function()
		var_0_118.switch()
	end)
	sampRegisterChatCommand("vskin", function(arg_63_0)
		if arg_63_0 ~= "" then
			if var_0_2.string(arg_63_0):match("%a") then
				var_0_108(var_0_14("Вы указали некорректный Айди скина, используйте: /vskin [Айди скина(0-311)]"), 3000)
			else
				arg_63_0 = tonumber(arg_63_0)

				if arg_63_0 > 0 and arg_63_0 < 312 or arg_63_0 > 12584 and arg_63_0 < 12589 or arg_63_0 > 12589 and arg_63_0 < 12600 or arg_63_0 > 12607 and arg_63_0 < 12634 or arg_63_0 > 12634 and arg_63_0 < 12656 or arg_63_0 > 12657 and arg_63_0 < 12683 then
					if not isCharInAir(PLAYER_PED) then
						set_player_skin(myId(), arg_63_0)
					else
						var_0_108(var_0_14("Вы находитесь в воздухе, встаньте на землю и используйте команду!"), 3000)
					end
				else
					var_0_108(var_0_14("Вы указали некорректный Айди скина, используйте: /vskin [Айди скина(0-311)]"), 3000)
				end
			end
		else
			var_0_108(var_0_14("Вы указали некорректный Айди скина, используйте: /vskin [Айди скина(0-311)]"), 3000)
		end
	end)
	sampRegisterChatCommand("tpveh", function(arg_64_0)
		if arg_64_0:match("%S") then
			if arg_64_0 == "d" then
				if getNearestCarWithDriver(1) ~= "Неизвестно" then
					sampSendChat("/gethere " .. getNearestCarWithDriver(1))
				else
					sampAddChatMessage(var_0_16 .. "Нет ни одного транспорта с водителем.", -1)
				end
			end
		else
			sampSendChat("/tpveh")
		end
	end)
	sampRegisterChatCommand("drivers", function()
		getNearestCarWithDriver(2)
	end)
	sampRegisterChatCommand("slap", function(arg_66_0)
		if arg_66_0 then
			if arg_66_0:match("^%d+$") then
				local var_66_0 = arg_66_0:match("^(%d+)")

				sampSendChat("/slap " .. var_66_0)
			elseif arg_66_0:match("^%d+ %d+$") then
				local var_66_1, var_66_2 = arg_66_0:match("^(%d+)%s+(%d+)$")

				lua_thread.create(function()
					for iter_67_0 = 1, var_66_2 do
						sampSendChat("/slap " .. var_66_1)
						wait(111)
					end
				end)
			else
				sampAddChatMessage(var_0_16 .. "Правильное использование команды: /slap [ID] [Кол-во раз(необязательно)]", -1)
			end
		else
			sampAddChatMessage(var_0_16 .. "Правильное использование команды: /slap [ID] [Кол-во раз(необязательно)]", -1)
		end
	end)
	sampRegisterChatCommand("pveh", function(arg_68_0)
		if arg_68_0 then
			if arg_68_0:match("^%d+ %d+ %d+ %d+$") then
				local var_68_0, var_68_1, var_68_2, var_68_3 = arg_68_0:match("^(%d+)%s+(%d+)%s+(%d+)%s+(%d+)")

				sampSendChat("/pveh " .. var_68_0 .. " " .. var_68_1 .. " " .. var_68_2 .. " " .. var_68_3)
			elseif arg_68_0:match("^%d+ %d+ %d+ %d+ %d+$") then
				local var_68_4, var_68_5, var_68_6, var_68_7, var_68_8 = arg_68_0:match("^(%d+)%s+(%d+)%s+(%d+)%s+(%d+)%s+(%d+)")

				lua_thread.create(function()
					for iter_69_0 = 1, var_68_8 do
						sampSendChat("/pveh " .. var_68_4 .. " " .. var_68_5 .. " " .. var_68_6 .. " " .. var_68_7)
						wait(100)
					end
				end)
			else
				sampAddChatMessage(var_0_16 .. "Правильное использование команды: /pveh [ID] [ID car] [Color1] [Color2] [Кол-во раз(необязательно)]", -1)
			end
		else
			sampAddChatMessage(var_0_16 .. "Правильное использование команды: /pveh [ID] [ID car] [Color1] [Color2] [Кол-во раз(необязательно)]", -1)
		end
	end)

	for iter_48_0, iter_48_1 in pairs(var_0_64.again_cmds) do
		sampRegisterChatCommand(iter_48_1, function(arg_70_0)
			if arg_70_0 and arg_70_0:match("%S") then
				local var_70_0 = {}

				for iter_70_0 in string.gmatch(arg_70_0, "%S+") do
					table.insert(var_70_0, iter_70_0)
				end

				local var_70_1 = {}

				for iter_70_1, iter_70_2 in ipairs(var_70_0) do
					var_70_1[iter_70_2] = true
				end

				lua_thread.create(function()
					for iter_71_0, iter_71_1 in pairs(var_70_1) do
						sampSendChat("/" .. iter_48_1 .. " " .. iter_71_0)
						wait(100)
					end
				end)
			elseif iter_48_1 == "spawn" or iter_48_1 == "az" then
				sampSendChat("/" .. iter_48_1)
			else
				sampAddChatMessage(var_0_16 .. "Правильное использование: /" .. iter_48_1 .. " [ID] [ID] [ID](неограниченное кол-во людей, можно 1)", -1)
			end
		end)
	end

	sampRegisterChatCommand("tempskin", function(arg_72_0)
		if arg_72_0 then
			local var_72_0 = {}

			for iter_72_0 in string.gmatch(arg_72_0, "%S+") do
				table.insert(var_72_0, iter_72_0)
			end

			local var_72_1 = var_72_0[1]

			if var_72_0[2] then
				local var_72_2 = {}

				for iter_72_1 = 2, #var_72_0 do
					var_72_2[var_72_0[iter_72_1]] = true
				end

				lua_thread.create(function()
					for iter_73_0, iter_73_1 in pairs(var_72_2) do
						sampSendChat("/tempskin " .. var_72_1 .. " " .. iter_73_0)
						wait(100)
					end
				end)
			else
				sampAddChatMessage(var_0_16 .. "Правильное использование: /tempskin [skin id] [ID] [ID](неограниченное кол-во людей, можно 1)", -1)
			end
		else
			sampAddChatMessage(var_0_16 .. "Правильное использование: /tempskin [skin id] [ID] [ID](неограниченное кол-во людей, можно 1)", -1)
		end
	end)

	for iter_48_2, iter_48_3 in ipairs(var_0_102) do
		if iter_48_3.activation ~= "" and var_0_18.active_binders[iter_48_3.activation] == true then
			sampRegisterChatCommand(iter_48_3.activation, function()
				linebinder(iter_48_3)
			end)
		end
	end

	if var_0_18.settings.wallhack and var_0_18.settings.auto_start_wallhack then
		var_0_29.wh = true
	end

	if var_0_18.online_info.today ~= os.date("%a") then
		var_0_18.online_info.today = os.date("%a")
		var_0_18.online_info.day_online = 0
		var_0_18.online_info.day_afk = 0
		var_0_18.online_info.answers_day = 0

		var_0_3.save(var_0_18, var_0_17)
	end

	lua_thread.create(SpeedHack)
	lua_thread.create(two_second)
	lua_thread.create(AdminChecker)
	lua_thread.create(infopanel_time)
	lua_thread.create(Cheats)

	while true do
		wait(1)

		if var_0_87 then
			downloadUrlToFile(var_0_91, var_0_92, function(arg_75_0, arg_75_1)
				if arg_75_1 == var_0_0.STATUS_ENDDOWNLOADDATA then
					sampAddChatMessage(var_0_16 .. "{FFFFFF}Скрипт {32CD32}успешно {FFFFFF}обновлён.", -1)
				end
			end)

			break
		end

		bind_elms()

		if isGamePaused() then
			if var_0_29.active_clickwarp then
				var_0_29.active_clickwarp = false

				sampToggleCursor(false)
			end

			if not var_0_67 then
				var_0_67 = true
			end
		end

		if os.date("%X") == "23:59:59" then
			var_0_48.gotoNextDay = true
			var_0_18.online_info.today = os.date("%a", os.time() + 500)
			var_0_18.online_info.day_online = 0
			var_0_18.online_info.answers_day = 0
			var_0_18.online_info.day_afk = 0

			var_0_3.save(var_0_18, var_0_17)
		end

		local var_48_0 = {
			{
				inix = "far_chat_x",
				iniy = "far_chat_y",
				move = "move_far_chat",
				text = var_0_14("Местоположение дальнего чата успешно изменено.")
			},
			{
				inix = "specinfo_x",
				iniy = "specinfo_y",
				move = "move_specinfo",
				text = var_0_14("Местоположение окошка информации в реконе успешно изменено.")
			},
			{
				inix = "spechelp_x",
				iniy = "spechelp_y",
				move = "move_spec_help",
				text = var_0_14("Местоположение окна взаимодействия в реконе успешно изменено.")
			},
			{
				inix = "specbtns_x",
				iniy = "specbtns_y",
				move = "move_btns_spec",
				text = var_0_14("Местоположение окна кейлоггера успешно изменено.")
			},
			{
				inix = "adminchecker_x",
				iniy = "adminchecker_y",
				move = "move_adminchecker",
				text = var_0_14("Местоположение чекера администрации успешно изменено.")
			},
			{
				inix = "playerchecker_x",
				iniy = "playerchecker_y",
				move = "move_playerchecker",
				text = var_0_14("Местоположение чекера игроков успешно изменено.")
			},
			{
				inix = "forms_x",
				iniy = "forms_y",
				move = "move_forms",
				text = var_0_14("Местоположение информационного окна форм успешно изменено.")
			},
			{
				inix = "infopanel_x",
				iniy = "infopanel_y",
				move = "move_infopanel",
				text = var_0_14("Местоположение информационной панели успешно изменено.")
			},
			{
				inix = "autolovlya_x",
				iniy = "autolovlya_y",
				move = "move_autolovlya",
				text = var_0_14("Местоположение таймера автоловли успешно изменено.")
			},
			{
				inix = "monitoring_x",
				iniy = "monitoring_y",
				move = "move_monitoring",
				text = var_0_14("Местоположение мониторинга подключений и отключений успешно изменено.")
			}
		}

		for iter_48_4, iter_48_5 in ipairs(var_48_0) do
			move_func(iter_48_5.move, iter_48_5.inix, iter_48_5.iniy, iter_48_5.text)
		end
	end
end

function move_func(arg_76_0, arg_76_1, arg_76_2, arg_76_3)
	if var_0_28[arg_76_0] then
		sampToggleCursor(true, true)

		local var_76_0, var_76_1 = getCursorPos()

		var_0_18.posXY[arg_76_1] = var_76_0
		var_0_18.posXY[arg_76_2] = var_76_1

		if isKeyJustPressed(1) then
			sampToggleCursor(false, false)

			var_0_28[arg_76_0] = false

			var_0_116.switch()
			var_0_108(arg_76_3, 3000)
			var_0_3.save(var_0_18, var_0_17)
		end
	end
end

function strobes()
	if isCharInAnyCar(PLAYER_PED) and not isCharOnAnyBike(PLAYER_PED) and not isCharInAnyBoat(PLAYER_PED) and not isCharInAnyHeli(PLAYER_PED) and not isCharInAnyPlane(PLAYER_PED) then
		if not var_0_29.enableStrobes then
			var_0_29.enableStrobes = true

			lua_thread.create(function()
				vehptr = getCarPointer(storeCarCharIsInNoSave(PLAYER_PED)) + 1440

				while var_0_29.enableStrobes do
					callMethod(7086336, vehptr, 2, 0, 0, 0)
					callMethod(7086336, vehptr, 2, 0, 1, 1)

					if var_0_27.strob_speed[0] >= 0 then
						wait(var_0_27.strob_speed[0])
					else
						wait(111)
					end

					callMethod(7086336, vehptr, 2, 0, 0, 1)
					callMethod(7086336, vehptr, 2, 0, 1, 0)

					if var_0_27.strob_speed[0] >= 0 then
						wait(var_0_27.strob_speed[0])
					else
						wait(111)
					end
				end

				callMethod(7086336, vehptr, 2, 0, 0, 0)
				callMethod(7086336, vehptr, 2, 0, 1, 0)
			end)
		else
			var_0_29.enableStrobes = false
		end
	end
end

function onScriptTerminate(arg_79_0, arg_79_1)
	if arg_79_0 == thisScript() then
		if var_0_48.gotoNextDay then
			var_0_18.online_info.day_online = var_0_18.online_info.day_online + var_0_48.session_duration_NextDay
			var_0_18.online_info.day_afk = var_0_18.online_info.day_afk + var_0_48.afk_duration_NextDay
			var_0_18.online_info.answers_day = var_0_18.online_info.answers_day + var_0_48.answers_session_NextDay

			var_0_3.save(var_0_18, var_0_17)
		else
			var_0_18.online_info.day_online = var_0_18.online_info.day_online + var_0_48.session_duration
			var_0_18.online_info.day_afk = var_0_18.online_info.day_afk + var_0_48.afk_duration
			var_0_18.online_info.answers_day = var_0_18.online_info.answers_day + var_0_48.answers_session

			var_0_3.save(var_0_18, var_0_17)
		end
	end
end

function onExitScript(arg_80_0)
	if var_0_48.gotoNextDay then
		var_0_18.online_info.day_online = var_0_18.online_info.day_online + var_0_48.session_duration_NextDay
		var_0_18.online_info.day_afk = var_0_18.online_info.day_afk + var_0_48.afk_duration_NextDay
		var_0_18.online_info.answers_day = var_0_18.online_info.answers_day + var_0_48.answers_session_NextDay

		var_0_3.save(var_0_18, var_0_17)
	else
		var_0_18.online_info.day_online = var_0_18.online_info.day_online + var_0_48.session_duration
		var_0_18.online_info.day_afk = var_0_18.online_info.day_afk + var_0_48.afk_duration
		var_0_18.online_info.answers_day = var_0_18.online_info.answers_day + var_0_48.answers_session

		var_0_3.save(var_0_18, var_0_17)
	end
end

function SpeedHack()
	while true do
		if (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_cheats) and var_0_18.settings.speedhack and isCharInAnyCar(PLAYER_PED) and isKeyDown(VK_MENU) and isKeyDown(VK_W) and (var_0_29.active_clickwarp and not isKeyDown(18) or not var_0_29.active_clickwarp) then
			local var_81_0 = getCarCharIsUsing(1)

			if var_81_0 ~= -1 and getDriverOfCar(var_81_0) == PLAYER_PED and not isGamePaused() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() and not sampIsDialogActive() and getCarSpeed(var_81_0) * 3.7 < 950 then
				setCarForwardSpeed(var_81_0, getCarSpeed(var_81_0) * 1.2 + var_0_27.speedhack_speed[0])
			end
		end

		wait(100)
	end
end

function two_second()
	while true do
		wait(2000)

		if var_0_67 then
			var_0_67 = false
		end
	end
end

function AdminChecker()
	while true do
		wait(3333)

		if (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_adminchecker) and var_0_18.settings.adminchecker and not var_0_115.state and not var_0_39 and not sampIsDialogActive() and not sampIsChatInputActive() and not sampIsCursorActive() and not isGamePaused() then
			var_0_51 = true

			sampSendChat("/admins")
		end
	end
end

function infopanel_time()
	while true do
		if not isGamePaused() then
			if var_0_48.gotoNextDay then
				var_0_48.session_duration_NextDay = var_0_48.session_duration_NextDay + 1
			else
				var_0_48.session_duration = var_0_48.session_duration + 1
			end
		elseif var_0_48.gotoNextDay then
			var_0_48.afk_duration_NextDay = var_0_48.afk_duration_NextDay + 1
		else
			var_0_48.afk_duration = var_0_48.afk_duration + 1
		end

		if var_0_50.autolovlyaWinState[0] and not var_0_28.move_autolovlya then
			var_0_50.autolovlya_time = var_0_50.autolovlya_time + 1
		end

		wait(1000)
	end
end

function Cheats()
	while true do
		wait(0)

		if not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_cheats then
			if isCharPlayingAnim(playerPed, "KO_SKID_BACK") or isCharPlayingAnim(playerPed, "FALL_COLLAPSE") then
				clearCharTasksImmediately(playerPed)
			end

			if var_0_18.settings.fisheye then
				if isCurrentCharWeapon(PLAYER_PED, 34) and isKeyDown(2) then
					if not var_0_29.fisheye_locked then
						cameraSetLerpFov(70, 70, 1000, 1)

						var_0_29.fisheye_locked = true
					end
				else
					cameraSetLerpFov(var_0_27.fisheye_vision[0], var_0_27.fisheye_vision[0], 1000, 1)

					var_0_29.fisheye_locked = false
				end
			end

			if var_0_18.settings.fast_run and var_0_27.speed_fastrun[0] ~= 1 then
				for iter_85_0, iter_85_1 in pairs(var_0_74.all_anims) do
					setCharAnimSpeed(PLAYER_PED, iter_85_1, var_0_27.speed_fastrun[0])
				end
			end

			if var_0_18.settings.gm_ped then
				setCharProofs(playerPed, true, true, true, true, true)
				writeMemory(9867630, 1, 1, false)
			else
				setCharProofs(playerPed, false, false, false, false, false)
				writeMemory(9867630, 1, 0, false)
			end

			if var_0_18.settings.antistan then
				setCharUsesUpperbodyDamageAnimsOnly(PLAYER_PED, 1)
			end

			if var_0_18.settings.gm_car then
				if isCharInAnyCar(playerPed) then
					local var_85_0 = storeCarCharIsInNoSave(PLAYER_PED)

					setCarProofs(var_85_0, true, true, true, true, true)
					setCarCanBeDamaged(var_85_0, false)
					setCarCanBeVisiblyDamaged(var_85_0, false)
				end
			elseif isCharInAnyCar(playerPed) then
				local var_85_1 = storeCarCharIsInNoSave(PLAYER_PED)

				setCarCanBeDamaged(var_85_1, true)
				setCarCanBeVisiblyDamaged(var_85_1, true)
			end

			if var_0_18.settings.gm_wheel and isCharInAnyCar(playerPed) then
				setCanBurstCarTires(storeCarCharIsInNoSave(PLAYER_PED), false)
			end

			if var_0_18.settings.nobike then
				setCharCanBeKnockedOffBike(PLAYER_PED, true)
			end

			if var_0_18.settings.driveunderwater and isCharInAnyCar(playerPed) then
				var_0_5.setuint8(7087961, 1, false)
			else
				var_0_5.setuint8(7087961, 0, false)
			end

			if var_0_18.settings.driveoffengine and isCharInAnyCar(playerPed) then
				switchCarEngine(storeCarCharIsInNoSave(PLAYER_PED), true)
			end

			if var_0_18.settings.infinity_ammo then
				var_0_5.write(9867640, 1, 1, true)
			else
				var_0_5.write(9867640, 0, 1, true)
			end

			if var_0_18.settings.fast_fire and var_0_27.speed_fastfire[0] ~= 1 then
				for iter_85_2, iter_85_3 in pairs(var_0_74.guns_anims) do
					setCharAnimSpeed(PLAYER_PED, iter_85_3, var_0_27.speed_fastfire[0])
				end
			end

			if var_0_18.settings.nospread then
				var_0_5.setfloat(9252452, 0)
			else
				var_0_5.setfloat(9252452, 0.95999997854233)
			end

			if var_0_29.wh then
				local var_85_2 = sampGetServerSettingsPtr()

				var_0_5.setfloat(var_85_2 + 39, 500)
				var_0_5.setint8(var_85_2 + 47, 0)
				var_0_5.setint8(var_85_2 + 56, 1)
			else
				local var_85_3 = sampGetServerSettingsPtr()

				var_0_5.setfloat(var_85_3 + 39, 50)
				var_0_5.setint8(var_85_3 + 47, 1)
				var_0_5.setint8(var_85_3 + 56, 1)
			end

			if var_0_18.settings.tank_mode and (isCharInAnyCar(PLAYER_PED) or isCharOnAnyBike(PLAYER_PED)) then
				local var_85_4 = storeCarCharIsInNoSave(PLAYER_PED)

				setCanBurstCarTires(var_85_4, false)
				setCarHeavy(var_85_4, true)
			end

			if var_0_29.collision_active then
				if var_0_18.settings.collision_objects then
					for iter_85_4, iter_85_5 in ipairs(getAllObjects()) do
						if doesObjectExist(iter_85_5) then
							if var_0_37.specWinState[0] then
								setObjectCollision(iter_85_5, true)
							else
								setObjectCollision(iter_85_5, false)
							end
						end
					end
				end

				if var_0_18.settings.collision_vehs then
					for iter_85_6, iter_85_7 in ipairs(getAllVehicles()) do
						if doesVehicleExist(iter_85_7) then
							if isKeyJustPressed(VK_F) and isCharOnFoot(PLAYER_PED) or var_0_37.specWinState[0] then
								setCarCollision(iter_85_7, true)
							elseif iter_85_7 ~= storeCarCharIsInNoSave(PLAYER_PED) then
								setCarCollision(iter_85_7, false)
							end
						end
					end
				end

				if var_0_18.settings.collision_players and not var_0_37.specWinState[0] then
					for iter_85_8, iter_85_9 in ipairs(getAllChars()) do
						if doesCharExist(iter_85_9) and iter_85_9 ~= PLAYER_PED then
							setCharCollision(iter_85_9, false)
						end
					end
				end
			end

			if var_0_18.settings.flycar then
				if not var_0_29.flycar_active and isKeyDown(VK_1) and isKeyJustPressed(VK_2) and isCharInAnyCar(PLAYER_PED) and not sampIsChatInputActive() and not sampIsDialogActive() and not isSampfuncsConsoleActive() then
					if not var_0_29.active_airbrake then
						if var_0_29.active_invis then
							var_0_29.active_invis = false

							var_0_108(var_0_14("Режим невидимки отключен, т.к. Вы активировали FlyCar!"), 1111)
						end

						var_0_108(var_0_14("Flycar активирован."), 777)

						var_0_29.flycar_active = not var_0_29.flycar_active
						var_0_29.flycar_speed = getCarSpeed(getCarCharIsUsing(PLAYER_PED)) / 2
						var_0_29.fc = {}
					else
						var_0_108(var_0_14("У Вас активирован Airbrake!"), 999)
					end
				elseif var_0_29.flycar_active and isKeyJustPressed(VK_3) and isCharInAnyCar(PLAYER_PED) and not sampIsChatInputActive() and not sampIsDialogActive() and not isSampfuncsConsoleActive() then
					var_0_108(var_0_14("Flycar де-активирован."), 777)

					var_0_29.flycar_speed = 0
					var_0_29.flycar_active = not var_0_29.flycar_active
					var_0_29.fc = {}
				end

				if var_0_29.flycar_active then
					if isCharInAnyCar(PLAYER_PED) then
						local var_85_5 = getCarCharIsUsing(PLAYER_PED)

						if getDriverOfCar(var_85_5) == -1 then
							pcall(sampForcePassengerSyncSeatId, var_0_29.fc[1], var_0_29.fc[2])
							pcall(sampForceUnoccupiedSyncSeatId, var_0_29.fc[1], var_0_29.fc[2])
						else
							pcall(sampForceVehicleSync, var_0_29.fc[1])
						end

						setCarHeavy(var_85_5, false)
						setCarProofs(var_85_5, true, true, true, true, true)

						local var_85_6, var_85_7, var_85_8, var_85_9 = getPositionOfAnalogueSticks(0)
						local var_85_10 = var_85_6 / -64
						local var_85_11 = var_85_7 / 64

						setCarRotationVelocity(var_85_5, var_85_11, 0, var_85_10)

						if isKeyDown(VK_W) then
							if getCarSpeed(var_85_5) <= 555 then
								var_0_29.flycar_speed = var_0_29.flycar_speed + 0.5
							end
						elseif isKeyDown(VK_S) then
							if var_0_29.flycar_speed >= 0 then
								var_0_29.flycar_speed = var_0_29.flycar_speed - 0.7
							else
								var_0_29.flycar_speed = 0
							end
						end

						if isKeyDown(VK_S) and isKeyDown(VK_SPACE) then
							var_0_29.flycar_speed = 0

							setCarRotationVelocity(var_85_5, 0, 0, 0, 0)
							setCarRoll(var_85_5, 0)
						end

						if isKeyDown(VK_A) then
							addToCarRotationVelocity(var_85_5, 0, 0, 1.5)
						elseif isKeyDown(VK_D) then
							addToCarRotationVelocity(var_85_5, 0, 0, -1.5)
						end

						if isKeyDown(VK_RBUTTON) then
							addToCarRotationVelocity(var_85_5, 0.8, 0, 0)
						elseif isKeyDown(VK_LBUTTON) then
							addToCarRotationVelocity(var_85_5, -0.8, 0, 0)
						end

						if isKeyDown(VK_C) then
							setCarCollision(var_85_5, false)
						else
							setCarCollision(var_85_5, true)
						end

						setCarForwardSpeed(var_85_5, var_0_29.flycar_speed)

						if getCarHealth(var_85_5) < 900 then
							setCarHealth(var_85_5, 1000)
						end
					else
						var_0_108(var_0_14("Flycar де-активирован, т.к. Вы вышли из транспорта."), 777)

						var_0_29.flycar_active = not var_0_29.flycar_active
						var_0_29.fc = {}
					end
				end
			end

			if var_0_18.settings.clickwarp and isKeyDown(VK_MBUTTON) and not isKeyDown(18) then
				if not var_0_29.active_airbrake then
					var_0_29.active_clickwarp = not var_0_29.active_clickwarp
					var_0_68 = not var_0_68

					if var_0_68 then
						sampSetCursorMode(CMODE_LOCKCAM)
					else
						sampToggleCursor(false)
					end

					while isKeyDown(VK_MBUTTON) do
						wait(80)
					end
				else
					var_0_108(var_0_14("У Вас активирован AirBrake!"), 999)
				end
			end

			if var_0_29.active_clickwarp then
				local var_85_12 = sampGetCursorMode()

				if isKeyDown(18) then
					if var_85_12 == 3 then
						sampSetCursorMode(0)

						var_0_68 = false
					end
				elseif var_85_12 == 0 then
					sampSetCursorMode(CMODE_LOCKCAM)

					var_0_68 = true
				end

				local var_85_13, var_85_14 = getCursorPos()
				local var_85_15, var_85_16 = getScreenResolution()

				if var_85_13 >= 0 and var_85_14 >= 0 and var_85_13 < var_85_15 and var_85_14 < var_85_16 then
					local var_85_17, var_85_18, var_85_19 = convertScreenCoordsToWorld3D(var_85_13, var_85_14, 700)
					local var_85_20, var_85_21, var_85_22 = getActiveCameraCoordinates()
					local var_85_23, var_85_24 = processLineOfSight(var_85_20, var_85_21, var_85_22, var_85_17, var_85_18, var_85_19, true, true, false, true, false, false, false)

					if var_85_23 and var_85_24.entity ~= 0 then
						local var_85_25 = var_85_24.normal
						local var_85_26 = var_0_7(var_85_24.pos[1], var_85_24.pos[2], var_85_24.pos[3]) - var_0_7(var_85_25[1], var_85_25[2], var_85_25[3]) * 0.1
						local var_85_27 = 300

						if var_85_25[3] >= 0.5 then
							var_85_27 = 1
						end

						local var_85_28, var_85_29 = processLineOfSight(var_85_26.x, var_85_26.y, var_85_26.z + var_85_27, var_85_26.x, var_85_26.y, var_85_26.z - 0.3, true, true, false, true, false, false, false)

						if var_85_28 then
							local var_85_30 = var_0_7(var_85_29.pos[1], var_85_29.pos[2], var_85_29.pos[3] + 1)
							local var_85_31, var_85_32, var_85_33 = getCharCoordinates(playerPed)
							local var_85_34 = getDistanceBetweenCoords3d(var_85_31, var_85_32, var_85_33, var_85_30.x, var_85_30.y, var_85_30.z)
							local var_85_35 = renderGetFontDrawHeight(var_0_86)
							local var_85_36 = var_85_14 - 2
							local var_85_37 = var_85_13 - 2

							if not isKeyDown(18) then
								renderFontDrawText(var_0_86, string.format("%0.2fm", var_85_34), var_85_37, var_85_36 - var_85_35, 4008636142)
							end

							local var_85_38

							if var_85_24.entityType == 2 then
								local var_85_39 = getVehiclePointerHandle(var_85_24.entity)

								if doesVehicleExist(var_85_39) and (not isCharInAnyCar(playerPed) or storeCarCharIsInNoSave(playerPed) ~= var_85_39) then
									local var_85_40 = 2868903935

									if isKeyDown(VK_RBUTTON) then
										var_85_38 = var_85_39
										var_85_40 = 4294967295
									end

									if not isKeyDown(18) then
										renderFontDrawText(var_0_86, "Нажмите ЛКМ + ПКМ, чтобы телепортироваться в авто.", var_85_37, var_85_36 - var_85_35 * 3, var_85_40)
									end
								end
							end

							if isKeyDown(VK_LBUTTON) then
								if var_85_38 then
									if not jumpIntoCar(var_85_38) then
										teleportPlayer(var_85_30.x, var_85_30.y, var_85_30.z)
									end
								else
									if isCharInAnyCar(playerPed) then
										local var_85_41 = var_0_7(var_85_24.normal[1], var_85_24.normal[2], 0)
										local var_85_42 = var_0_7(var_85_29.normal[1], var_85_29.normal[2], var_85_29.normal[3])

										rotateCarAroundUpAxis(storeCarCharIsInNoSave(playerPed), var_85_42)

										var_85_30 = var_85_30 - var_85_41 * 1.8
										var_85_30.z = var_85_30.z - 0.8
									end

									teleportPlayer(var_85_30.x, var_85_30.y, var_85_30.z)
								end

								while isKeyDown(VK_LBUTTON) do
									wait(0)
								end

								sampToggleCursor(false)

								var_0_68 = false
								var_0_29.active_clickwarp = false
							end
						end
					end
				end
			end
		end
	end
end

function myNick()
	return sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))):gsub("%[.+%]", "")
end

function myId()
	return select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))
end

function onWindowMessage(arg_88_0, arg_88_1, arg_88_2)
	if var_0_29.active_airbrake then
		if arg_88_0 == var_0_10.WM_KEYDOWN and not isCharInAnyCar(PLAYER_PED) and (arg_88_1 == 65 or arg_88_1 == 83 or arg_88_1 == 68 or arg_88_1 == 87 or arg_88_1 == 32 or arg_88_1 == 16) then
			consumeWindowMessage(false, false)
		end

		if arg_88_0 == 522 then
			if arg_88_1 == 4287102976 then
				if not sampIsDialogActive() and not sampIsChatInputActive() then
					if var_0_18.cheats.airbrake_speed > 7 then
						var_0_18.cheats.airbrake_speed = var_0_18.cheats.airbrake_speed - 1.5
					elseif var_0_18.cheats.airbrake_speed > 0.3 then
						var_0_18.cheats.airbrake_speed = var_0_18.cheats.airbrake_speed - 0.3
					end

					var_0_3.save(var_0_18, var_0_17)
					printStringNow(var_0_18.cheats.airbrake_speed, 677)
				end
			elseif arg_88_1 == 7864320 and not sampIsDialogActive() and not sampIsChatInputActive() then
				if var_0_18.cheats.airbrake_speed > 7 then
					var_0_18.cheats.airbrake_speed = var_0_18.cheats.airbrake_speed + 1.5
				else
					var_0_18.cheats.airbrake_speed = var_0_18.cheats.airbrake_speed + 0.3
				end

				var_0_3.save(var_0_18, var_0_17)
				printStringNow(var_0_18.cheats.airbrake_speed, 777)
			end
		end
	end

	if arg_88_1 == 27 and (var_0_115.state or var_0_116.state or var_0_43.ghettoWinState[0] or var_0_43.ipWinState[0] or var_0_118.state or var_0_117.state) then
		if arg_88_0 == var_0_10.WM_KEYDOWN then
			consumeWindowMessage(true, false)
		end

		if arg_88_0 == var_0_10.WM_KEYUP then
			if var_0_43.ipWinState[0] then
				var_0_43.ipWinState[0] = false
			elseif var_0_43.ghettoWinState[0] then
				if var_0_43.ghettoWinState2[0] then
					var_0_43.ghettoWinState2[0] = false
					var_0_39 = false
				else
					var_0_43.ghettoWinState[0] = false
					var_0_39 = false
				end
			elseif var_0_118.state then
				var_0_118.switch()
			elseif var_0_117.state then
				var_0_117.switch()
			elseif var_0_116.state then
				if var_0_85.editBinderWinState[0] then
					var_0_85.editBinderWinState[0] = false
				elseif var_0_82.editRepButtonWinState[0] then
					var_0_82.editRepButtonWinState[0] = false
				elseif var_0_45.viewAddPoint[0] then
					var_0_45.viewAddPoint[0] = false
				else
					var_0_116.switch()
				end
			elseif var_0_115.state then
				var_0_115.switch()
				sampSendDialogResponse(990, 0, _, _)
				sampSendDialogResponse(989, 0, _, _)
			end
		end
	end

	if arg_88_1 == 13 and var_0_115.state then
		if arg_88_0 == var_0_10.WM_KEYDOWN then
			consumeWindowMessage(true, false)
		end

		if arg_88_0 == var_0_10.WM_KEYUP then
			if var_0_14:decode(var_0_2.string(var_0_35)) ~= "" then
				sampSendDialogResponse(990, 1, _, var_0_14:decode(var_0_2.string(var_0_35)))

				if var_0_18.settings.info_rep then
					sendInfoRep()
				end

				var_0_35 = var_0_15.char[512]()

				var_0_115.switch()
			else
				var_0_108(var_0_14("Вы ничего не ввели в поле ответа!"), 1500)
			end
		end
	end

	if tHotKeyData.edit ~= nil and arg_88_0 == var_0_10.WM_CHAR and tBlockChar[arg_88_1] then
		consumeWindowMessage(false, false)
	end

	if arg_88_0 == var_0_10.WM_KEYDOWN or arg_88_0 == var_0_10.WM_SYSKEYDOWN then
		if tHotKeyData.edit ~= nil and arg_88_1 == var_0_11.VK_ESCAPE then
			tKeys = {}
			tHotKeyData.edit = nil

			consumeWindowMessage(true, true)
		end

		if tHotKeyData.edit ~= nil and arg_88_1 == var_0_11.VK_BACK then
			tHotKeyData.save = {
				tHotKeyData.edit,
				{}
			}
			tHotKeyData.edit = nil

			consumeWindowMessage(true, true)
		end

		if getKeyNumber(arg_88_1) == -1 then
			tKeys[#tKeys + 1] = arg_88_1

			if tHotKeyData.edit ~= nil and not isKeyModified(arg_88_1) then
				tHotKeyData.save = {
					tHotKeyData.edit,
					tKeys
				}
				tHotKeyData.edit = nil
				tKeys = {}

				consumeWindowMessage(true, true)
			end
		end

		reloadKeysList()

		if tHotKeyData.edit ~= nil then
			consumeWindowMessage(true, true)
		end
	elseif arg_88_0 == var_0_10.WM_KEYUP or arg_88_0 == var_0_10.WM_SYSKEYUP then
		local var_88_0 = getKeyNumber(arg_88_1)

		if var_88_0 > -1 then
			tKeys[var_88_0] = nil
		end

		reloadKeysList()

		if tHotKeyData.edit ~= nil then
			consumeWindowMessage(true, true)
		end
	end
end

function var_0_9.onPlayerJoin(arg_89_0, arg_89_1, arg_89_2, arg_89_3)
	if var_0_18.settings.playerchecker_vhod_uved then
		for iter_89_0, iter_89_1 in ipairs(var_0_103) do
			if iter_89_1.nick == arg_89_3 then
				sampAddChatMessage(var_0_16 .. "{00FF00}" .. arg_89_3 .. " {FFFFFF}подключается к серверу!", -1)
				table.insert(var_0_56, {
					nick = arg_89_3,
					id = arg_89_0
				})
			end
		end
	end

	if var_0_18.settings.monitoring and not arg_89_2 then
		while #var_0_34.monitoring_log >= var_0_18.settings.monitoring_lines do
			table.remove(var_0_34.monitoring_log, 1)
		end

		for iter_89_2 = #var_0_34.monitoring_log, 1, -1 do
			if var_0_34.monitoring_log[iter_89_2].id == arg_89_0 and var_0_34.monitoring_log[iter_89_2].type == "join" then
				table.remove(var_0_34.monitoring_log, iter_89_2)
			end
		end

		table.insert(var_0_34.monitoring_log, {
			type = "join",
			nick = arg_89_3,
			id = arg_89_0,
			isNpc = arg_89_2,
			timestamp = os.date("%H:%M:%S")
		})
	end
end

function var_0_9.onPlayerQuit(arg_90_0, arg_90_1, arg_90_2)
	local var_90_0 = {
		[0] = "Потеря связи/краш.",
		"Вышел сам(/quit).",
		"Кикнут/Забанен."
	}

	if var_0_18.settings.playerchecker_exit_uved then
		for iter_90_0, iter_90_1 in ipairs(var_0_56) do
			if iter_90_1.id == arg_90_0 then
				sampAddChatMessage(var_0_16 .. "{FF0000}" .. iter_90_1.nick .. " {FFFFFF}отключился от сервера! Причина: " .. var_90_0[arg_90_1], -1)
				table.remove(var_0_56, iter_90_0)
			end
		end
	end

	if var_0_18.settings.monitoring then
		while #var_0_34.monitoring_log >= var_0_18.settings.monitoring_lines do
			table.remove(var_0_34.monitoring_log, 1)
		end

		local var_90_1 = sampGetPlayerNickname(arg_90_0)

		table.insert(var_0_34.monitoring_log, {
			type = "quit",
			nick = var_90_1,
			id = arg_90_0,
			isNpc = arg_90_2,
			reason = arg_90_1,
			timestamp = os.date("%H:%M:%S")
		})
	end
end

function var_0_9.onSendInteriorChangeNotification(arg_91_0)
	if var_0_29.active_invis and arg_91_0 ~= 0 then
		var_0_29.active_invis = false

		var_0_108(var_0_14("Режим невидимки отключен, т.к. вы зашли в интерьер!"), 1111)
	end
end

function var_0_9.onServerMessage(arg_92_0, arg_92_1)
	for iter_92_0, iter_92_1 in ipairs(var_0_102) do
		if iter_92_1.activation_text ~= "" and var_0_14(arg_92_1):find(iter_92_1.activation_text) then
			linebinder(iter_92_1)
		end
	end

	if arg_92_1:gsub("{......}", ""):find("IP%: %d+%.%d+%.%d+%.%d+ %| Regip%: %d+%.%d+%.%d+%.%d+") then
		local var_92_0, var_92_1 = arg_92_1:gsub("{......}", ""):match("IP%: (%d+%.%d+%.%d+%.%d+) %| Regip%: (%d+%.%d+%.%d+%.%d+)")

		info_ip(var_92_0, var_92_1)

		return false
	end

	if os.time() - var_0_38.lastSpec <= 1 and arg_92_1:find("Ошибка | {.+}Игрок не найден") then
		return false
	end

	if os.time() - var_0_38.lastForma <= 1 and arg_92_1:find("Ошибка | {.+}") then
		local var_92_2 = arg_92_1:match("Ошибка | {.+}(.+)")

		sampSendChat("/a Ошибка в форме: " .. var_92_2 .. " | MATools")

		return false
	end

	if arg_92_0 == -11250433 and arg_92_1:find("Ошибка") then
		if var_0_18.settings.autoopenrep then
			if arg_92_1:find("Жалоба отсутствует") then
				var_0_108(var_0_14("Жалоба под номером ") .. var_0_36.errors + 1 .. var_0_14(" отсутствует!"), 999)

				if tonumber(var_0_36.errors) >= 0 then
					var_0_36.errors = tonumber(var_0_36.errors) - 1
				end

				var_0_36.clear_rep = true

				sampSendDialogResponse(988, 0, _, _)

				return false
			end

			if arg_92_1:find("Данную жалобу уже") and arg_92_1:find("просматривает") then
				var_0_108(var_0_14("Жалобу под номером ") .. var_0_36.errors + 1 .. var_0_14(" уже кто-то просматривает!"), 999)

				if tonumber(var_0_36.errors) >= 0 then
					var_0_36.errors = tonumber(var_0_36.errors) - 1
				end

				var_0_36.clear_rep = true

				sampSendDialogResponse(988, 0, _, _)

				return false
			end
		end

		if arg_92_1:find("Закройте диалог") then
			if var_0_50.autolovlyaWinState[0] then
				var_0_50.autolovlyaWinState[0] = false
				var_0_50.autolovlya_time = 0

				if var_0_50.autolovlyago then
					var_0_50.autolovlyago = false
				end

				return {
					-1,
					var_0_16 .. "У Вас открыт диалог, автоловля не смогла открыть окно репорта!"
				}
			else
				return false
			end
		end
	end

	if arg_92_0 == -1037231617 and arg_92_1:find("Всего жалоб:") then
		if var_0_18.settings.reportplusplus then
			printStyledString("REPORT++", 199, 2)
		end

		var_0_36.go_error = true
		var_0_36.last_report_count = arg_92_1:match("Всего жалоб: {.+}(%d+)")

		if var_0_18.settings.autolovlya and not isCursorActive() and var_0_50.autolovlyaWinState[0] then
			var_0_50.autolovlyago = true

			sampSendChat("/ar")
		end
	end

	if var_0_44.start_give then
		for iter_92_2, iter_92_3 in ipairs(var_0_44.errors) do
			if arg_92_1:find(iter_92_3) then
				arg_92_1 = arg_92_1:gsub("{......}", "")

				table.insert(var_0_44.errors_list, arg_92_1 .. " | Форма: " .. var_0_44.last_forma)
				var_0_108(var_0_14(arg_92_1):gsub(var_0_14("Ошибка %| "), "") .. var_0_14(" | Форма: ") .. var_0_14(var_0_44.last_forma), 3333)

				return false
			end
		end
	end

	if var_0_18.settings.autologin and arg_92_1:find("Неверный пароль") then
		var_0_32.bad_password = true
		var_0_32.bad_alogin = true
	end

	if arg_92_1:find("Ваш аккаунт успешно загрузился, приятной игры!") then
		sampAddChatMessage(var_0_16 .. "Вас приветствует MATools! Приятной игры!", -1)
		sampAddChatMessage(var_0_16 .. "Если Вы нашли баг, то обратитесь: https://vk.com/deffix_elgar.", -1)
		sampAddChatMessage(var_0_16 .. "Меню настроек: /mat.", -1)
		sampSendChat("/alogin")
	end

	if not var_0_67 and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_forms) and not var_0_18.settings.offforms and arg_92_1:find("%[A%] .+ %w+_?%w+%[%d+%]: /.+") then
		local var_92_3, var_92_4 = arg_92_1:match("%[A%] .+ (%w+_?%w+)%[%d+%]: (/.+)")

		for iter_92_4, iter_92_5 in ipairs(var_0_64.form_cmds) do
			if string.rlower(arg_92_1):match("/" .. iter_92_5) and not var_0_66.active_forma and var_0_18.forms["forms_" .. iter_92_5] == 2 then
				var_0_39 = true

				forma(var_92_3, var_92_4)

				var_0_66.active_forma = true

				forma_accept_reject(var_92_3)

				var_0_66.formStartTime = os.time()
			end
		end
	end

	if var_0_18.settings.custom_color_a_chat and (arg_92_1:find("%[A%] .+ %w+_?%w+%[%d+%]") or arg_92_1:find("%[A%] .+ %w+_?%w+ авторизовался в админке")) and (arg_92_0 == 1724645546 and arg_92_1:find("%[A%] .+ %w+_?%w+%[%d+%]") or arg_92_0 == 869072895 and arg_92_1:find("%[A%] .+ %w+_?%w+ авторизовался в админке")) then
		return {
			bit.bor(bit.lshift(math.floor(var_0_76[0] * 255), 24), bit.lshift(math.floor(var_0_76[1] * 255), 16), bit.lshift(math.floor(var_0_76[2] * 255), 8), math.floor(var_0_76[3] * 255)),
			arg_92_1
		}
	end

	if arg_92_1:find("%[H%] .+ %w+_?%w+%[%d+%]") and var_0_18.settings.custom_color_hc_chat and arg_92_0 == -1494075905 and arg_92_1:find("%[H%] .+ %w+_?%w+%[%d+%]") then
		return {
			bit.bor(bit.lshift(math.floor(var_0_77[0] * 255), 24), bit.lshift(math.floor(var_0_77[1] * 255), 16), bit.lshift(math.floor(var_0_77[2] * 255), 8), math.floor(var_0_77[3] * 255)),
			arg_92_1
		}
	end

	if var_0_18.settings.custom_color_answerask_chat and arg_92_0 == -264092161 and arg_92_1:find("Хелпер %w+_%w+%[%d+%] для %w+_%w+%[%d+%]:") then
		return {
			bit.bor(bit.lshift(math.floor(var_0_80[0] * 255), 24), bit.lshift(math.floor(var_0_80[1] * 255), 16), bit.lshift(math.floor(var_0_80[2] * 255), 8), math.floor(var_0_80[3] * 255)),
			arg_92_1
		}
	end

	if var_0_18.settings.custom_color_answerrep_chat and arg_92_0 == -264092161 and arg_92_1:find("%[A%] %w+_%w+%[%d+%] для %w+_%w+%[%d+%]:") then
		if tonumber(var_0_36.last_report_count) > 0 then
			var_0_36.last_report_count = tonumber(var_0_36.last_report_count) - 1
		end

		var_0_36.errors = tonumber(var_0_36.errors) - 1

		local var_92_5 = arg_92_1:match("%[A%] (%w+_%w+)%[%d+%] для %w+_%w+%[%d+%]:")

		if (var_0_18.settings.infopanel_answers_day or var_0_18.settings.infopanel_answers_session) and var_92_5 == myNick() then
			if var_0_48.gotoNextDay then
				var_0_48.answers_session_NextDay = var_0_48.answers_session_NextDay + 1
			else
				var_0_48.answers_session = var_0_48.answers_session + 1
			end
		end

		return {
			bit.bor(bit.lshift(math.floor(var_0_81[0] * 255), 24), bit.lshift(math.floor(var_0_81[1] * 255), 16), bit.lshift(math.floor(var_0_81[2] * 255), 8), math.floor(var_0_81[3] * 255)),
			arg_92_1
		}
	end

	if var_0_18.settings.custom_color_ans_chat and arg_92_1:find("%w+_%w+%[%d+%] для %w+_%w+%[%d+%]:") then
		if arg_92_0 == -264092161 and (arg_92_1:find("Практикант %w+_%w+%[%d+%] для %w+_%w+%[%d+%]:") or arg_92_1:find("Мл.хелпер %w+_%w+%[%d+%] для %w+_%w+%[%d+%]:") or arg_92_1:find("Ст.хелпер %w+_%w+%[%d+%] для %w+_%w+%[%d+%]:") or arg_92_1:find("Главный хелпер %w+_%w+%[%d+%] для %w+_%w+%[%d+%]:")) then
			if var_0_18.settings.custom_color_ans_chat_helpers then
				return {
					bit.bor(bit.lshift(math.floor(var_0_78[0] * 255), 24), bit.lshift(math.floor(var_0_78[1] * 255), 16), bit.lshift(math.floor(var_0_78[2] * 255), 8), math.floor(var_0_78[3] * 255)),
					arg_92_1
				}
			end
		elseif arg_92_0 == -264092161 and arg_92_1:find("%w+_%w+%[%d+%] для %w+_%w+%[%d+%]:") and not arg_92_1:find("%[A%]") and var_0_18.settings.custom_color_ans_chat_admins then
			return {
				bit.bor(bit.lshift(math.floor(var_0_79[0] * 255), 24), bit.lshift(math.floor(var_0_79[1] * 255), 16), bit.lshift(math.floor(var_0_79[2] * 255), 8), math.floor(var_0_79[3] * 255)),
				arg_92_1
			}
		end
	end
end

function var_0_9.onSendDialogResponse(arg_93_0, arg_93_1, arg_93_2, arg_93_3)
	if arg_93_0 == 32700 then
		if arg_93_1 == 1 then
			if var_0_62.workers_check then
				for iter_93_0, iter_93_1 in pairs(var_0_62.workers) do
					if arg_93_2 == iter_93_0 then
						if var_0_37.spec_id == "" then
							var_0_37.last_spec_id = iter_93_1.id
						else
							var_0_37.last_spec_id = var_0_37.spec_id
						end

						var_0_37.spec_id = iter_93_1.id
						var_0_37.spec_nick = getPlayerNicknameById(tonumber(iter_93_1.id))
						var_0_62.workers_check = false

						break
					end
				end
			end
		else
			var_0_62.workers_check = false
		end
	end
end

function var_0_9.onShowDialog(arg_94_0, arg_94_1, arg_94_2, arg_94_3, arg_94_4, arg_94_5)
	if arg_94_0 == 32700 and arg_94_2:find("Работники") then
		var_0_62.workers_check = true

		local var_94_0 = 0

		for iter_94_0 in arg_94_5:gmatch("[^\n]+") do
			iter_94_0 = iter_94_0:gsub("%{......%}", "")

			if not iter_94_0:match("^ID%s") then
				local var_94_1, var_94_2 = iter_94_0:match("^(%d+)%s+([%w_]+)$")

				if var_94_1 and var_94_2 then
					var_0_62.workers[var_94_0] = {
						id = var_94_1,
						name = var_94_2
					}
					var_94_0 = var_94_0 + 1
				end
			end
		end
	end

	if string.find(arg_94_5:gsub("%{......%}", ""), "Введите в поле ниже ваш ответ.") and arg_94_5:find("начать слежку") and arg_94_5:find("Нарушитель") and arg_94_2:find("Жалоба") then
		var_0_36.AuthorNick, var_0_36.AuthorId, var_0_36.SuspectNick, var_0_36.SuspectId, var_0_36.Text = string.match(arg_94_5:gsub("%{......%}", ""), "Имя: (.+)%[(%d+)%]\nНарушитель: (.+)%[(%d+)%]\nЖалоба: (.+)\nВведите в поле ниже ваш ответ.")
	end

	if arg_94_0 == 10 and (arg_94_5:find("Так быстро стрелять из Desert Eagle запрещено!") or arg_94_5:find("Так быстро стрелять из M4 запрещено!")) then
		sampSendDialogResponse(10, 0, _, _)

		return false
	end

	if var_0_18.settings.skip_tp and arg_94_0 == 455 and arg_94_2:find("Телепорт по метке") then
		sampSendDialogResponse(455, 1, _, _)

		return false
	end

	if arg_94_0 == 9461 and var_0_42.ghettoSelected ~= -1 and var_0_43.ghettoWinState[0] then
		sampSendDialogResponse(9461, 1, var_0_42.ghettoSelected, _)

		var_0_42.ghettoSelected = -1

		sampCloseCurrentDialogWithButton(0)

		var_0_39 = false
		var_0_43.ghettoWinState2[0] = false

		return false
	end

	if arg_94_0 == 820 and var_0_45.mp_help_skip == 1 then
		sampSendDialogResponse(820, 1, _, var_0_45.kolvo_players[0])

		var_0_45.mp_help_skip = 0

		sampCloseCurrentDialogWithButton(0)

		return false
	end

	if arg_94_0 == 815 then
		if var_0_45.mp_help_skip == 2 then
			sampSendDialogResponse(815, 1, 1, _)

			var_0_45.mp_help_skip = 0

			return false
		elseif var_0_45.mp_help_skip == 3 then
			sampSendDialogResponse(815, 1, 2, _)

			var_0_45.mp_help_skip = 0

			return false
		elseif var_0_45.mp_help_skip == 4 then
			sampSendDialogResponse(815, 1, 3, _)

			var_0_45.mp_help_skip = 0

			return false
		elseif var_0_45.mp_help_skip == 5 then
			sampSendDialogResponse(815, 1, 6, _)

			var_0_45.mp_help_skip = 0

			return false
		elseif var_0_45.mp_help_skip == 6 then
			sampSendDialogResponse(815, 1, 7, _)

			var_0_45.mp_help_skip = 0

			return false
		elseif var_0_45.mp_help_skip == 9 then
			sampSendDialogResponse(815, 1, 4, _)

			var_0_45.mp_help_skip = 0

			return false
		end
	end

	if arg_94_0 == 821 and var_0_45.mp_help_skip == 7 then
		sampSendDialogResponse(821, 1, _, var_0_45.type_skin[0] .. " " .. var_0_45.radius_skin[0])

		var_0_45.mp_help_skip = 0

		sampCloseCurrentDialogWithButton(0)

		return false
	end

	if arg_94_0 == 822 and var_0_45.mp_help_skip == 10 then
		sampSendDialogResponse(822, 1, _, var_0_45.kolvo_money[0] .. " " .. var_0_45.radius_money[0])

		var_0_45.mp_help_skip = 0

		sampCloseCurrentDialogWithButton(0)

		return false
	end

	if arg_94_0 == 817 and var_0_45.mp_help_skip == 8 then
		sampSendDialogResponse(817, 1, _, var_0_45.type_gun[0] .. " " .. var_0_45.kolvo_gun[0] .. " " .. var_0_45.radius_gun[0])

		var_0_45.mp_help_skip = 0

		sampCloseCurrentDialogWithButton(0)

		return false
	end

	if arg_94_0 == 990 then
		var_0_73 = true

		if var_0_72 ~= "Удалить" then
			var_0_72 = "Удалить"
		end

		var_0_36.start_time = os.time()

		if var_0_18.settings.custom_report_window then
			var_0_115.switch()

			return false
		end
	end

	if arg_94_0 == 989 then
		if var_0_71 then
			sampSendDialogResponse(989, 1, 1, _)

			var_0_71 = false

			return false
		end

		if var_0_18.settings.autocheckrep then
			sampSendDialogResponse(989, 1, 0, _)

			return false
		end
	end

	if arg_94_0 == 988 then
		if var_0_36.clear_rep then
			var_0_36.clear_rep = false

			sampSendDialogResponse(988, 0, _, _)

			return false
		else
			if var_0_36.go_open_rep then
				if tonumber(var_0_36.errors) > -1 then
					sampSendDialogResponse(988, 1, tonumber(var_0_36.errors), _)
				else
					var_0_108(var_0_14("Сейчас нет активных жалоб!"), 777)
					sampSendDialogResponse(988, 0, _, _)
				end

				var_0_36.go_open_rep = false

				return false
			end

			if var_0_50.autolovlyago then
				sampSendDialogResponse(988, 1, tonumber(var_0_36.last_report_count) - 1, _)

				var_0_50.autolovlyago = false
				var_0_50.autolovlyaWinState[0] = false
				var_0_50.autolovlya_time = 0

				return false
			end
		end
	end

	if var_0_18.settings.check_myadmstats and arg_94_0 == 453 and arg_94_2:find("Статистика админа") then
		sampSendDialogResponse(453, 1, _, myNick())

		return false
	end

	if var_0_18.settings.autologin then
		if arg_94_0 == 40 then
			sampSendDialogResponse(40, 1, _, _)

			return false
		end

		if arg_94_0 == 41 then
			if not var_0_32.bad_password then
				sampSendDialogResponse(41, 1, _, var_0_14(var_0_2.string(var_0_30.input_password)))

				return false
			else
				var_0_108(var_0_14("Пароль от аккаунта неверный!"), 5000)

				var_0_32.bad_alogin = false
			end
		end

		if arg_94_0 == 42 then
			sampSendDialogResponse(42, 1, _, var_0_14(var_0_2.string(var_0_30.input_pincode)))

			return false
		end

		if arg_94_0 == 43 then
			sampSendDialogResponse(43, 0, _, _)

			return false
		end

		if arg_94_0 == 61 then
			if not var_0_32.bad_alogin then
				sampSendDialogResponse(61, 1, _, var_0_14(var_0_2.string(var_0_30.input_alogin)))

				return false
			else
				var_0_108(var_0_14("Пароль от админки неверный!"), 5000)

				var_0_32.bad_password = false
			end
		end
	end

	if var_0_51 and var_0_18.settings.adminchecker then
		if arg_94_0 == 10 and string.find(arg_94_5:gsub("%{......%}", ""), "Администраторы в сети:") then
			var_0_52 = arg_94_5:match("Администраторы в сети:(.+)") or ""

			sampSendDialogResponse(10, 1, _, _)

			var_0_51 = false

			return false
		end

		var_0_51 = false
	end
end

function var_0_9.onSendCommand(arg_95_0)
	if (arg_95_0:match("/sp %d+") or arg_95_0:match("/spec %d+") or arg_95_0:match("/re %d+")) and not arg_95_0:match(myId()) then
		local var_95_0 = arg_95_0:match("%/.+ (%d+)")

		if sampIsPlayerConnected(tonumber(var_95_0)) then
			if var_0_37.spec_id == "" then
				var_0_37.last_spec_id = var_95_0
			else
				var_0_37.last_spec_id = var_0_37.spec_id
			end

			var_0_37.spec_id = var_95_0
			var_0_37.spec_nick = getPlayerNicknameById(tonumber(var_95_0))
		else
			sampAddChatMessage(var_0_16 .. "Игрок с ID " .. var_95_0 .. " не подключен к серверу!", -1)
		end

		var_0_38.lastSpec = os.time()
	end

	if arg_95_0 == "/ar" and var_0_50.autolovlyaWinState[0] and not var_0_50.autolovlyago then
		var_0_108(var_0_14("У Вас включена автоловля, Вы не можете открыть список репорта."), 3000)

		return false
	end

	for iter_95_0, iter_95_1 in ipairs(var_0_64.form_cmds) do
		if arg_95_0:match("/" .. iter_95_1) and not arg_95_0:match("/a") then
			if var_0_18.forms["forms_" .. iter_95_1] == 1 then
				return {
					"/a " .. arg_95_0
				}
			else
				return arg_95_0
			end
		end
	end
end

function var_0_9.onSendChat(arg_96_0)
	if var_0_18.settings.only_b then
		sampSendChat("/b " .. arg_96_0)

		return false
	end

	if var_0_18.settings.accent then
		return {
			"[" .. var_0_14:decode(var_0_2.string(var_0_30.input_accent)) .. "]: " .. arg_96_0
		}
	end
end

function var_0_9.onDisplayGameText(arg_97_0, arg_97_1, arg_97_2)
	if var_0_37.specWinState[0] and arg_97_2:match("DISCONNECTED") then
		setClipboardText(var_0_37.spec_nick)

		var_0_37.specWinState[0] = false

		var_0_108(var_0_14("Игрок оффнулся, скопировано в буфер: ") .. var_0_37.spec_nick .. ".", 2500)
	end
end

function var_0_9.onShowTextDraw(arg_98_0, arg_98_1)
	if var_0_37.specWinState[0] and var_0_18.settings.custom_spec then
		return false
	end
end

function var_0_9.onTogglePlayerSpectating(arg_99_0)
	var_0_37.specWinState[0] = arg_99_0

	if not var_0_37.specWinState[0] then
		var_0_37.cursor = true
		var_0_37.last_spec_id = var_0_37.spec_id
		var_0_37.spec_nick = ""
		var_0_37.spec_id = ""
	end
end

var_0_1.OnFrame(function()
	return var_0_18.settings.custom_report_window and var_0_115.alpha > 0
end, function(arg_101_0)
	local var_101_0 = 208

	if #var_0_100 ~= 0 then
		if #var_0_100 % 4 ~= 0 then
			var_101_0 = math.floor(#var_0_100 / 4) * 27 + 27 + 208
		else
			var_101_0 = math.floor(#var_0_100 / 4) * 27 + 208
		end
	end

	arg_101_0.HideCursor = not var_0_115.state

	var_0_1.PushStyleVarFloat(var_0_1.StyleVar.Alpha, var_0_115.alpha)
	var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(509, var_101_0), var_0_1.Cond.Always)
	var_0_1.Begin(var_0_14("Репорт"), nil, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar)
	var_0_1.PushStyleColor(var_0_1.Col.ChildBg, var_0_1.ImVec4(0.4, 0, 0.8, 1))
	var_0_1.BeginChild("##report_child", var_0_1.ImVec2(509, 25), false)
	var_0_1.PushFont(norm)
	var_0_1.SetCursorPosX((509 - var_0_1.CalcTextSize(var_0_14("Репорт | MATools")).x) / 2)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 3)
	var_0_1.Text(var_0_14("Репорт | MATools"))
	var_0_1.PopFont()
	var_0_1.EndChild()
	var_0_1.PushStyleVarFloat(var_0_1.StyleVar.ChildRounding, 0)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 10)
	var_0_1.BeginChild("##report_child2", var_0_1.ImVec2(509, 5), false)
	var_0_1.EndChild()
	var_0_1.PopStyleColor()
	var_0_1.PopStyleVar()

	local var_101_1 = sampGetPlayerColor(getPlayerIDByName(var_0_36.AuthorNick))
	local var_101_2 = var_0_1.ImVec4(1, 1, 1, 1)

	if var_101_1 ~= "-" then
		local var_101_3 = imgui_nick_color(var_101_1, 16, 8)
		local var_101_4 = imgui_nick_color(var_101_1, 8, 8)
		local var_101_5 = imgui_nick_color(var_101_1, 0, 8)

		var_101_2 = var_0_1.ImVec4(var_101_3 / 255, var_101_4 / 255, var_101_5 / 255, 1)
	end

	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 6)
	var_0_1.TextColored(var_101_2, var_0_8("user"))
	var_0_1.SameLine()
	var_0_1.PushFont(rep_font)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

	if var_0_36.AuthorNick ~= "" then
		var_0_1.Text(var_0_14("Жалоба от:"))
		var_0_1.SameLine()
		var_0_1.TextColored(var_101_2, getPlayerNicknameById(getPlayerIDByName(var_0_36.AuthorNick)))
		var_0_1.PopFont()
		var_0_1.Hint("##copynickauthor", var_0_14("Нажмите для того, чтобы скопировать ник автора репорта."))

		if var_0_1.IsItemClicked() then
			if var_0_36.AuthorNick ~= "" then
				if setClipboardText(var_0_36.AuthorNick) then
					var_0_108(var_0_14("Вы успешно скопировали: " .. var_0_36.AuthorNick .. "."), 1234)
				end
			else
				var_0_108(var_0_14("Ник-нейм не найден!"), 999)
			end
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() - 6)
		var_0_1.PushFont(rep_font)
		var_0_1.TextColored(var_101_2, "[" .. getPlayerIDByName(var_0_36.AuthorNick) .. "]")
		var_0_1.PopFont()
		var_0_1.Hint("##copyidauthor", var_0_14("Нажмите для того, чтобы скопировать айди автора репорта."))

		if var_0_1.IsItemClicked() then
			if var_0_36.AuthorNick ~= "" then
				if setClipboardText(getPlayerIDByName(var_0_36.AuthorNick)) then
					var_0_108(var_0_14("Вы успешно скопировали: " .. getPlayerIDByName(var_0_36.AuthorNick) .. "."), 1234)
				end
			else
				var_0_108(var_0_14("Айди не найдено!"), 999)
			end
		end
	else
		var_0_1.Text(var_0_14("Жалоба от: "))
		var_0_1.PopFont()
	end

	var_0_1.SameLine()
	var_0_1.PushFont(rep_font)
	var_0_1.TextDisabled(var_0_14("<<< Копировать"))
	var_0_1.PopFont()
	var_0_1.Hint("##copyallauthor", var_0_14("Нажмите для того, чтобы скопировать ник и айди автора репорта."))

	if var_0_1.IsItemClicked() then
		if var_0_36.AuthorNick ~= "" then
			if setClipboardText(var_0_36.AuthorNick .. "[" .. getPlayerIDByName(var_0_36.AuthorNick) .. "]") then
				var_0_108(var_0_14("Вы успешно скопировали: " .. var_0_36.AuthorNick .. "[" .. getPlayerIDByName(var_0_36.AuthorNick) .. "]" .. "."), 1234)
			end
		else
			var_0_108(var_0_14("Ник и айди не найдены!"), 999)
		end
	end

	local var_101_6 = sampGetPlayerColor(getPlayerIDByName(var_0_36.SuspectNick))
	local var_101_7 = var_0_1.ImVec4(1, 1, 1, 1)

	if var_101_6 ~= "-" then
		local var_101_8 = imgui_nick_color(var_101_6, 16, 8)
		local var_101_9 = imgui_nick_color(var_101_6, 8, 8)
		local var_101_10 = imgui_nick_color(var_101_6, 0, 8)

		var_101_7 = var_0_1.ImVec4(var_101_8 / 255, var_101_9 / 255, var_101_10 / 255, 1)
	end

	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 6)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
	var_0_1.TextColored(var_101_7, var_0_8("user"))
	var_0_1.SameLine()
	var_0_1.PushFont(rep_font)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

	if var_0_36.SuspectNick ~= "" then
		var_0_1.Text(var_0_14("Нарушитель:"))
		var_0_1.SameLine()
		var_0_1.TextColored(var_101_7, getPlayerNicknameById(getPlayerIDByName(var_0_36.SuspectNick)))
		var_0_1.PopFont()
		var_0_1.Hint("##copynicksuspect", var_0_14("Нажмите для того, чтобы скопировать ник нарушителя."))

		if var_0_1.IsItemClicked() then
			if var_0_36.SuspectNick ~= "" then
				if setClipboardText(var_0_36.SuspectNick) then
					var_0_108(var_0_14("Вы успешно скопировали: " .. var_0_36.SuspectNick .. "."), 1234)
				end
			else
				var_0_108(var_0_14("Ник-нейм не найден!"), 999)
			end
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() - 6)
		var_0_1.PushFont(rep_font)
		var_0_1.TextColored(var_101_7, "[" .. getPlayerIDByName(var_0_36.SuspectNick) .. "]")
		var_0_1.PopFont()
		var_0_1.Hint("##copyidsuspect", var_0_14("Нажмите для того, чтобы скопировать айди нарушителя."))

		if var_0_1.IsItemClicked() then
			if var_0_36.SuspectNick ~= "" then
				if setClipboardText(getPlayerIDByName(var_0_36.SuspectNick)) then
					var_0_108(var_0_14("Вы успешно скопировали: " .. getPlayerIDByName(var_0_36.SuspectNick) .. "."), 1234)
				end
			else
				var_0_108(var_0_14("Айди не найдено!"), 999)
			end
		end
	else
		var_0_1.Text(var_0_14("Нарушитель: "))
		var_0_1.PopFont()
	end

	var_0_1.SameLine()
	var_0_1.PushFont(rep_font)
	var_0_1.TextDisabled(var_0_14("<<< Копировать "))
	var_0_1.PopFont()
	var_0_1.Hint("##copyallsuspect", var_0_14("Нажмите для того, чтобы скопировать ник и айди нарушителя."))

	if var_0_1.IsItemClicked() then
		if var_0_36.SuspectNick ~= "" then
			if setClipboardText(var_0_36.SuspectNick .. "[" .. getPlayerIDByName(var_0_36.SuspectNick) .. "]") then
				var_0_108(var_0_14("Вы успешно скопировали: " .. var_0_36.SuspectNick .. "[" .. getPlayerIDByName(var_0_36.SuspectNick) .. "]" .. "."), 1234)
			end
		else
			var_0_108(var_0_14("Ник и айди не найдеы!"), 999)
		end
	end

	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
	var_0_1.Separator()
	var_0_1.PushStyleColor(var_0_1.Col.Text, var_0_1.ImVec4(0.9, 0.9, 0.6, 1))
	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 9)
	var_0_1.Text(var_0_8("question"))
	var_0_1.PopStyleColor()
	var_0_1.SameLine(27)
	var_0_1.PushFont(rep_font)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
	var_0_1.Text(var_0_14("Репорт: "))
	var_0_1.PopFont()
	var_0_1.SameLine(0, 6)

	if #var_0_36.Text > 63 then
		local var_101_11 = var_0_36.Text:sub(1, 63)
		local var_101_12 = var_0_36.Text:sub(64, #var_0_36.Text)

		var_0_1.Text(var_0_14(var_101_11 .. "..."))
		var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 9)
		var_0_1.Text(var_0_14("..." .. var_101_12))
	else
		var_0_1.Text(var_0_14(var_0_36.Text))
		var_0_1.Text("")
	end

	var_0_1.Separator()
	var_0_1.SetNextItemWidth(428)
	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 7)
	var_0_1.InputTextWithHint("##Answer", var_0_14("Ответ на репорт"), var_0_35, 512)

	if var_0_73 then
		var_0_1.SetKeyboardFocusHere(0)

		var_0_73 = false
	end

	var_0_1.SameLine()

	if var_0_1.Button(var_0_14("Очистить")) then
		var_0_1.StrCopy(var_0_35, var_0_14(""))
	end

	var_0_1.Separator()
	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 4.5)

	local var_101_13 = {
		"Слежу",
		"Спек за автором",
		"ТП к автору",
		"ЖБ форум"
	}

	for iter_101_0, iter_101_1 in ipairs(var_101_13) do
		if var_0_1.Button(var_0_14(iter_101_1), var_0_1.ImVec2(121, 22)) then
			local var_101_14

			if iter_101_1 == "Слежу" then
				var_101_14 = var_0_18.rep_btns.btn_1
			elseif iter_101_1 == "Спек за автором" then
				var_101_14 = var_0_18.rep_btns.btn_2
			elseif iter_101_1 == "ТП к автору" then
				var_101_14 = var_0_18.rep_btns.btn_3
			elseif iter_101_1 == "ЖБ форум" then
				var_101_14 = var_0_18.rep_btns.btn_4
			end

			if string.match(var_101_14, "<author_name>") then
				local var_101_15 = var_101_14

				if string.match(var_101_15, "<author_name>") then
					var_101_15 = var_101_15:gsub("<author_name>", getPlayerName(var_0_36.AuthorNick))
				end

				if string.match(var_101_15, "<my_name>") then
					var_101_15 = var_101_15:gsub("<my_name>", getPlayerName(myNick()))
				end

				if string.match(var_101_15, "<suspect_name>") then
					var_101_15 = var_101_15:gsub("<suspect_name>", getPlayerName(var_0_36.SuspectNick))
				end

				var_0_1.StrCopy(var_0_35, var_101_15)
			else
				var_0_1.StrCopy(var_0_35, var_101_14)
			end

			sampSendDialogResponse(990, 1, iter_101_0, var_0_14:decode(var_0_2.string(var_0_35)))

			if var_0_18.settings.info_rep then
				sendInfoRep()
			end

			var_0_35 = var_0_15.char[512]()

			var_0_115.switch()

			if iter_101_1 == "Слежу" then
				if isCharInAnyCar(PLAYER_PED) then
					local function var_101_16()
						local var_102_0, var_102_1, var_102_2 = getCarCoordinates(storeCarCharIsInNoSave(PLAYER_PED))

						warpCharFromCarToCoord(PLAYER_PED, var_102_0, var_102_1, var_102_2)
						wait(370)
						sampSendChat("/sp " .. getPlayerIDByName(var_0_36.SuspectNick))
					end

					lua_thread.create(var_101_16)
				else
					sampSendChat("/sp " .. getPlayerIDByName(var_0_36.SuspectNick))
				end
			elseif iter_101_1 == "Спек за автором" then
				if isCharInAnyCar(PLAYER_PED) then
					local function var_101_17()
						local var_103_0, var_103_1, var_103_2 = getCarCoordinates(storeCarCharIsInNoSave(PLAYER_PED))

						warpCharFromCarToCoord(PLAYER_PED, var_103_0, var_103_1, var_103_2)
						wait(370)
						sampSendChat("/sp " .. getPlayerIDByName(var_0_36.AuthorNick))
					end

					lua_thread.create(var_101_17)
				else
					sampSendChat("/sp " .. getPlayerIDByName(var_0_36.AuthorNick))
				end
			elseif iter_101_1 == "ТП к автору" then
				if isCharInAnyCar(PLAYER_PED) then
					local function var_101_18()
						local var_104_0, var_104_1, var_104_2 = getCarCoordinates(storeCarCharIsInNoSave(PLAYER_PED))

						warpCharFromCarToCoord(PLAYER_PED, var_104_0, var_104_1, var_104_2)
						wait(333)
						sampSendChat("/goto " .. getPlayerIDByName(var_0_36.AuthorNick))
					end

					lua_thread.create(var_101_18)
				else
					sampSendChat("/goto " .. getPlayerIDByName(var_0_36.AuthorNick))
				end
			end
		end

		if iter_101_1 ~= "ЖБ форум" then
			var_0_1.SameLine()
		end
	end

	if #var_0_100 ~= 0 then
		var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 4.5)
	end

	local var_101_19 = 0

	if #var_0_100 % 4 ~= 0 then
		var_101_19 = #var_0_100 % 4
	end

	for iter_101_2, iter_101_3 in ipairs(var_0_100) do
		if tonumber(iter_101_2) > #var_0_100 - var_101_19 then
			if var_101_19 == 1 then
				ButtonWidth = 499
			elseif var_101_19 == 2 then
				ButtonWidth = 247
			elseif var_101_19 == 3 then
				ButtonWidth = 163
			end
		else
			ButtonWidth = 121
		end

		if var_0_1.Button(iter_101_3.name .. "##" .. tonumber(iter_101_2), var_0_1.ImVec2(ButtonWidth, 22)) then
			if string.match(iter_101_3.content, "<author_name>") then
				local var_101_20 = iter_101_3.content

				if string.match(var_101_20, "<author_name>") then
					var_101_20 = var_101_20:gsub("<author_name>", getPlayerName(var_0_36.AuthorNick))
				end

				if string.match(var_101_20, "<my_name>") then
					var_101_20 = var_101_20:gsub("<my_name>", getPlayerName(myNick()))
				end

				if string.match(var_101_20, "<suspect_name>") then
					var_101_20 = var_101_20:gsub("<suspect_name>", getPlayerName(var_0_36.SuspectNick))
				end

				var_0_1.StrCopy(var_0_35, var_101_20)
			else
				var_0_1.StrCopy(var_0_35, iter_101_3.content)
			end

			sampSendDialogResponse(990, 1, _, var_0_14:decode(var_0_2.string(var_0_35)))

			if var_0_18.settings.info_rep then
				sendInfoRep()
			end

			if iter_101_3.deystv and #iter_101_3.deystv > 0 then
				local var_101_21 = {
					content = iter_101_3.deystv
				}

				linebinder(var_101_21)
			end

			var_0_35 = var_0_15.char[512]()

			var_0_115.switch()
		end

		if tonumber(iter_101_2) ~= #var_0_100 then
			if tonumber(iter_101_2) % 4 ~= 0 then
				var_0_1.SameLine()
			else
				var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 4.5)
			end
		end
	end

	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 4.5)

	if var_0_1.Button(var_0_14("Отправить"), var_0_1.ImVec2(121, 22)) then
		if var_0_14:decode(var_0_2.string(var_0_35)) ~= "" then
			sampSendDialogResponse(990, 1, _, var_0_14:decode(var_0_2.string(var_0_35)))
			var_0_115.switch()

			if var_0_18.settings.info_rep then
				sendInfoRep()
			end

			var_0_35 = var_0_15.char[512]()
		else
			var_0_108(var_0_14("Вы ничего не ввели в поле ответа!"), 2500)
		end
	end

	var_0_1.SameLine()

	if var_0_1.Button(var_0_14("Переслать в /a"), var_0_1.ImVec2(121, 22)) then
		var_0_115.switch()
		var_0_1.StrCopy(var_0_35, var_0_14("Уважаемый игрок, передал Вашу жалобу в чат администрации!"))
		sampSendDialogResponse(990, 1, _, var_0_14:decode(var_0_2.string(var_0_35)))

		if var_0_18.settings.info_rep then
			sendInfoRep()
		end

		var_0_35 = var_0_15.char[512]()

		if #var_0_36.Text > 25 then
			local var_101_22 = var_0_36.Text:sub(1, 25)

			sampSendChat("/a [" .. var_0_36.AuthorNick .. "(" .. getPlayerIDByName(var_0_36.AuthorNick) .. ")" .. " >>> " .. var_0_36.SuspectNick .. "(" .. getPlayerIDByName(var_0_36.SuspectNick) .. ")" .. "]: " .. var_101_22 .. "...")

			if #var_0_36.Text > 120 then
				local var_101_23 = var_0_36.Text:sub(26, 120)
				local var_101_24 = var_0_36.Text:sub(121, #var_0_36.Text)

				sampSendChat("/a ..." .. var_101_23 .. "...")
				sampSendChat("/a ..." .. var_101_24)
			else
				local var_101_25 = var_0_36.Text:sub(26, #var_0_36.Text)

				sampSendChat("/a ..." .. var_101_25)
			end
		else
			sampSendChat("/a [" .. var_0_36.AuthorNick .. "(" .. getPlayerIDByName(var_0_36.AuthorNick) .. ")" .. " >>> " .. var_0_36.SuspectNick .. "(" .. getPlayerIDByName(var_0_36.SuspectNick) .. ")" .. "]: " .. var_0_36.Text)
		end
	end

	var_0_1.SameLine()

	if var_0_1.Button(var_0_14(var_0_72), var_0_1.ImVec2(121, 22)) then
		if var_0_72 == "Удалить" then
			var_0_72 = "Вы уверены?"
		elseif var_0_72 == "Вы уверены?" then
			var_0_71 = true

			sampSendDialogResponse(990, 0, _, _)

			var_0_35 = var_0_15.char[512]()

			var_0_115.switch()

			var_0_72 = "Удалить"
		end
	end

	var_0_1.SameLine()

	if var_0_1.Button(var_0_14("Закрыть"), var_0_1.ImVec2(121, 22)) then
		sampSendDialogResponse(990, 0, _, _)
		sampSendDialogResponse(989, 0, _, _)

		var_0_35 = var_0_15.char[512]()

		var_0_115.switch()
	end

	var_0_1.End()
	var_0_1.PopStyleVar()
end)
var_0_1.OnFrame(function()
	return var_0_28.move_btns_spec or var_0_28.move_specinfo or var_0_28.move_spec_help or var_0_37.specWinState[0] and not isGamePaused() and sampIsPlayerConnected(tonumber(var_0_37.spec_id))
end, function(arg_106_0)
	if not var_0_28.move_spec_help then
		arg_106_0.HideCursor = var_0_37.cursor

		if isKeyJustPressed(VK_RBUTTON) and not sampIsCursorActive() and not isSampfuncsConsoleActive() then
			var_0_37.cursor = not var_0_37.cursor
		end
	end

	if var_0_28.move_specinfo or var_0_37.specWinState[0] and var_0_18.settings.custom_spec then
		var_0_1.SetNextWindowPos(var_0_1.ImVec2(var_0_18.posXY.specinfo_x, var_0_18.posXY.specinfo_y), var_0_1.Cond.Always, var_0_1.ImVec2(1, 1))
		var_0_1.SetNextWindowSize(var_0_1.ImVec2(270, 230), var_0_1.Cond.FirstUseEver)
		var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))
		var_0_1.Begin(var_0_14("Инф репорт"), nil, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar)
		var_0_1.PopStyleVar()

		local var_106_0, var_106_1 = sampGetCharHandleBySampPlayerId(tonumber(var_0_37.spec_id))
		local var_106_2 = var_106_0 and sampGetPlayerColor(tonumber(var_0_37.spec_id)) or "-"
		local var_106_3 = var_0_1.ImVec4(1, 1, 1, 1)

		if var_106_2 ~= "-" then
			local var_106_4 = imgui_nick_color(var_106_2, 16, 8)
			local var_106_5 = imgui_nick_color(var_106_2, 8, 8)
			local var_106_6 = imgui_nick_color(var_106_2, 0, 8)

			var_106_3 = var_0_1.ImVec4(var_106_4 / 255, var_106_5 / 255, var_106_6 / 255, 1)
		end

		var_0_1.PushFont(var_0_75[20])
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x - var_0_1.CalcTextSize(var_0_37.spec_nick .. "[" .. var_0_37.spec_id .. "]").x) / 2)
		var_0_1.TextColored(var_106_3, var_0_37.spec_nick .. "[" .. var_0_37.spec_id .. "]")
		var_0_1.PopFont()
		var_0_1.Hint("##copyspecinfo", var_0_14("Нажмите ЛКМ для того, чтобы скопировать ник, ПКМ - айди."))

		if var_0_1.IsItemClicked(0) then
			if var_0_37.spec_nick ~= "" then
				local var_106_7 = var_0_37.spec_nick:match("([^%[%]]+)") or var_0_37.spec_nick

				if setClipboardText(var_106_7) then
					var_0_108(var_0_14("Вы успешно скопировали: " .. var_106_7 .. "."), 1234)
				end
			else
				var_0_108(var_0_14("Ошибка!"), 999)
			end
		elseif var_0_1.IsItemClicked(1) then
			if var_0_37.spec_id ~= "" then
				if setClipboardText(var_0_37.spec_id) then
					var_0_108(var_0_14("Вы успешно скопировали: " .. var_0_37.spec_id .. "."), 1234)
				end
			else
				var_0_108(var_0_14("Ошибка!"), 999)
			end
		end

		local var_106_8 = var_106_0 and tostring(sampGetPlayerHealth(tonumber(var_0_37.spec_id))) or "-"
		local var_106_9 = var_106_0 and tostring(sampGetPlayerArmor(tonumber(var_0_37.spec_id))) or "-"
		local var_106_10 = var_106_0 and tostring(math.floor(getCharSpeed(var_106_1) * 3.5)) or "-"
		local var_106_11 = var_106_0 and tostring(sampGetPlayerPing(tonumber(var_0_37.spec_id))) or "-"
		local var_106_12 = var_106_0 and tostring(sampGetPlayerScore(tonumber(var_0_37.spec_id))) or "-"
		local var_106_13 = var_106_0 and tostring(getCharModel(var_106_1)) or "-"
		local var_106_14 = "-"
		local var_106_15 = var_106_0 and isCharInAnyCar(var_106_1) and tostring(getCarHealth(storeCarCharIsInNoSave(var_106_1))) or "-"
		local var_106_16 = var_106_0 and isCharInAnyCar(var_106_1) and isCarEngineOn(storeCarCharIsInNoSave(var_106_1)) or "-"

		if var_106_16 ~= "-" then
			var_106_14 = var_106_16 and var_0_14("Заведён") or var_0_14("Заглушен")
		end

		var_0_1.Separator()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 5)
		var_0_1.SetCursorPosX(var_0_1.GetWindowSize().x / 2)
		var_0_1.VerticalSeparator()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 3)
		var_0_1.PushFont(norm)
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_0_14("Здоровье")).x) / 2)
		var_0_1.Text(var_0_14("Здоровье"))
		var_0_1.SameLine((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_106_8).x) / 2 + var_0_1.GetWindowSize().x / 2)
		var_0_1.Text(tostring(var_106_8))
		var_0_1.Separator()
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_0_14("Броня")).x) / 2)
		var_0_1.Text(var_0_14("Броня"))
		var_0_1.SameLine((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_106_9).x) / 2 + var_0_1.GetWindowSize().x / 2)
		var_0_1.Text(tostring(var_106_9))
		var_0_1.Separator()
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_0_14("Уровень")).x) / 2)
		var_0_1.Text(var_0_14("Уровень"))
		var_0_1.SameLine((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_106_12).x) / 2 + var_0_1.GetWindowSize().x / 2)
		var_0_1.Text(tostring(var_106_12))
		var_0_1.Separator()
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_0_14("Пинг")).x) / 2)
		var_0_1.Text(var_0_14("Пинг"))
		var_0_1.SameLine((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_106_11).x) / 2 + var_0_1.GetWindowSize().x / 2)
		var_0_1.Text(tostring(var_106_11))
		var_0_1.Separator()
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_0_14("Скин")).x) / 2)
		var_0_1.Text(var_0_14("Скин"))
		var_0_1.SameLine((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_106_13).x) / 2 + var_0_1.GetWindowSize().x / 2)
		var_0_1.Text(tostring(var_106_13))
		var_0_1.Separator()
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_0_14("Скорость")).x) / 2)
		var_0_1.Text(var_0_14("Скорость"))
		var_0_1.SameLine((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_106_10).x) / 2 + var_0_1.GetWindowSize().x / 2)
		var_0_1.Text(tostring(var_106_10))
		var_0_1.Separator()
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_0_14("Двигатель")).x) / 2)
		var_0_1.Text(var_0_14("Двигатель"))
		var_0_1.SameLine((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_106_14).x) / 2 + var_0_1.GetWindowSize().x / 2)
		var_0_1.Text(tostring(var_106_14))
		var_0_1.Separator()
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_0_14("Hp Car")).x) / 2)
		var_0_1.Text(var_0_14("Hp Car"))
		var_0_1.SameLine((var_0_1.GetWindowSize().x / 2 - var_0_1.CalcTextSize(var_106_15).x) / 2 + var_0_1.GetWindowSize().x / 2)
		var_0_1.Text(tostring(var_106_15))
		var_0_1.SameLine(5)
		var_0_1.PushStyleColor(var_0_1.Col.Text, var_0_1.ImVec4(0, 0, 0, 0))
		var_0_1.Text(var_0_14("Двигатель        заглушен"))
		var_0_1.PopStyleColor()
		var_0_1.PopFont()
		var_0_1.End()
	end

	if (var_0_28.move_spec_help or var_0_37.specWinState[0]) and var_0_18.settings.help_spec then
		var_0_1.SetNextWindowPos(var_0_1.ImVec2(var_0_18.posXY.spechelp_x, var_0_18.posXY.spechelp_y), var_0_1.Cond.Always, var_0_1.ImVec2(1, 1))
		var_0_1.SetNextWindowSize(var_0_1.ImVec2(645, 92), var_0_1.Cond.FirstUseEver)
		var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))
		var_0_1.Begin(var_0_14("кнопки репорт"), nil, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar)
		var_0_1.PopStyleVar()

		if var_0_1.Button("<<<", var_0_1.ImVec2(45, 82)) then
			if tonumber(var_0_37.spec_id) == 0 then
				var_0_108(var_0_14("Вы достигли лимита(0 id)!"), 1500)
			elseif tonumber(var_0_37.spec_id) == 1 then
				if sampIsPlayerConnected(0) then
					var_0_37.last_spec_id = var_0_37.spec_id
					var_0_37.spec_id = 0
					var_0_37.spec_nick = getPlayerNicknameById(tonumber(0))

					sampSendChat("/sp 0")
				end
			else
				for iter_106_0 = -1 * tonumber(var_0_37.spec_id) + 1, 0 do
					if sampIsPlayerConnected(iter_106_0 * -1) then
						var_0_37.last_spec_id = var_0_37.spec_id
						var_0_37.spec_id = iter_106_0 * -1
						var_0_37.spec_nick = getPlayerNicknameById(tonumber(iter_106_0 * -1))

						sampSendChat("/sp " .. iter_106_0 * -1)

						break
					end
				end
			end
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Статистика"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/stats " .. var_0_37.spec_id)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Рег.данные"), var_0_1.ImVec2(85, 23)) then
			var_0_49.id = tonumber(var_0_37.spec_id)
			var_0_49.nick = getPlayerNicknameById(tonumber(var_0_37.spec_id))

			sampSendChat("/getip " .. var_0_37.spec_id)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Наказания"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/showhistory " .. var_0_37.spec_id)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Ники"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/namestory " .. var_0_37.spec_id)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Инвентарь"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/invview " .. var_0_37.spec_id)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("В чекер"), var_0_1.ImVec2(85, 23)) then
			local var_106_17 = var_0_37.spec_nick:match("([^%[%]]+)") or var_0_37.spec_nick

			for iter_106_1, iter_106_2 in ipairs(var_0_103) do
				if var_106_17 == iter_106_2.nick then
					var_0_108(var_0_14("У Вас уже есть в чекере игрок с ником ") .. iter_106_2.nick .. "!", 1200)

					var_0_54.showErrorPlayerChecker = true

					break
				end
			end

			if not var_0_54.showErrorPlayerChecker then
				table.insert(var_0_103, {
					nick = var_106_17
				})
				saveJsonFile(var_0_96, var_0_103)
				var_0_108(var_0_14("Игрок с ником ") .. var_106_17 .. var_0_14(" успешно добавлен в чекер!"), 1000)
			else
				var_0_54.showErrorPlayerChecker = false
			end
		end

		var_0_1.SetCursorPosY(34)
		var_0_1.SetCursorPosX(55)

		if var_0_1.Button(var_0_14("Вы тут?"), var_0_1.ImVec2(85, 23)) then
			-- block empty
		end

		var_0_1.Hint("btnspec_help_hint", var_0_14("ЛКМ - спроосить в /n\nПКМ - Спросить в /ans"))

		if var_0_1.IsItemHovered() then
			if var_0_1.IsMouseClicked(1) then
				local function var_106_18()
					var_0_39 = true

					sampSendChat("/ans " .. var_0_37.spec_id .. " Вы тут? Ответ в /n Да, я тут.")
					wait(80)
					sampSendChat("/ans " .. var_0_37.spec_id .. " Вы тут? Ответ в /n Да, я тут.")
					wait(80)
					sampSendChat("/ans " .. var_0_37.spec_id .. " Вы тут? Ответ в /n Да, я тут.")

					var_0_39 = false
				end

				lua_thread.create(var_106_18)
			elseif var_0_1.IsMouseClicked(0) then
				local function var_106_19()
					var_0_39 = true

					sampSendChat("/b " .. getPlayerNicknameById(tonumber(var_0_37.spec_id)) .. "[" .. var_0_37.spec_id .. "], Вы тут? Ответ в /n Да, я тут.")
					wait(3001)
					sampSendChat("/b " .. getPlayerNicknameById(tonumber(var_0_37.spec_id)) .. "[" .. var_0_37.spec_id .. "], Вы тут? Ответ в /n Да, я тут.")
					wait(3001)
					sampSendChat("/b " .. getPlayerNicknameById(tonumber(var_0_37.spec_id)) .. "[" .. var_0_37.spec_id .. "], Вы тут? Ответ в /n Да, я тут.")

					var_0_39 = false
				end

				lua_thread.create(var_106_19)
			end
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Велик"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/pveh " .. var_0_37.spec_id .. " 510 1 1")
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Спавн"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/spawn " .. var_0_37.spec_id)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Подкинуть"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/slap " .. var_0_37.spec_id)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Починка"), var_0_1.ImVec2(85, 23)) then
			-- block empty
		end

		var_0_1.Hint("btnspec_help2_hint", var_0_14("ЛКМ - Перевернуть\nПКМ - Перевернуть и починить"))

		if var_0_1.IsItemHovered() then
			if var_0_1.IsMouseClicked(1) then
				sampSendChat("/frem " .. var_0_37.spec_id)
			elseif var_0_1.IsMouseClicked(0) then
				sampSendChat("/flip " .. var_0_37.spec_id)
			end
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Заморозка"), var_0_1.ImVec2(85, 23)) then
			-- block empty
		end

		var_0_1.Hint("btnspec_help3_hint", var_0_14("ЛКМ - Заморозить\nПКМ - Разморозить"))

		if var_0_1.IsItemHovered() then
			if var_0_1.IsMouseClicked(1) then
				sampSendChat("/unfreeze " .. var_0_37.spec_id)
			elseif var_0_1.IsMouseClicked(0) then
				sampSendChat("/freeze " .. var_0_37.spec_id)
			end
		end

		var_0_1.SetCursorPosY(63)
		var_0_1.SetCursorPosX(55)

		if var_0_1.Button(var_0_14("ТП на дорогу"), var_0_1.ImVec2(85, 23)) then
			local function var_106_20()
				local var_109_0 = var_0_18.settings.nosurf

				var_0_39 = true

				sampSendChat("/spoff")

				var_0_18.settings.nosurf = false

				wait(1000)
				sampSendChat("/goto " .. var_0_37.last_spec_id)
				wait(1500)

				local var_109_1, var_109_2, var_109_3, var_109_4 = getNearRoad()

				if var_109_1 then
					setCharCoordinates(PLAYER_PED, var_109_2, var_109_3, var_109_4 + 1)
				end

				if var_109_0 then
					var_0_18.settings.nosurf = true
				end

				wait(888)
				sampSendChat("/gethere " .. var_0_37.last_spec_id)

				var_0_39 = false
			end

			lua_thread.create(var_106_20)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("ТП к игроку"), var_0_1.ImVec2(85, 23)) then
			local function var_106_21()
				sampSendChat("/spoff")
				wait(1000)
				sampSendChat("/goto " .. var_0_37.last_spec_id)
			end

			lua_thread.create(var_106_21)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("ТП в АЗ"), var_0_1.ImVec2(85, 23)) then
			local function var_106_22()
				sampSendChat("/spoff")
				wait(1000)
				sampSendChat("/az " .. var_0_37.last_spec_id)
			end

			lua_thread.create(var_106_22)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Наказание"), var_0_1.ImVec2(85, 23)) then
			var_0_117.switch()
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Обновить"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/sp " .. var_0_37.spec_id)
		end

		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Выйти"), var_0_1.ImVec2(85, 23)) then
			sampSendChat("/spoff")
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(5)

		if var_0_1.Button(">>>", var_0_1.ImVec2(45, 82)) then
			for iter_106_3 = tonumber(var_0_37.spec_id) + 1, sampGetMaxPlayerId(false) do
				if iter_106_3 == 500 then
					var_0_108(var_0_14("Вы достигли лимита(") .. var_0_37.spec_id .. " id)!", 1500)

					break
				end

				if sampIsPlayerConnected(iter_106_3) then
					var_0_37.last_spec_id = var_0_37.spec_id
					var_0_37.spec_id = iter_106_3
					var_0_37.spec_nick = getPlayerNicknameById(tonumber(iter_106_3))

					sampSendChat("/sp " .. iter_106_3)

					break
				end
			end
		end

		var_0_1.End()
	end

	if (var_0_28.move_btns_spec or var_0_37.specWinState[0]) and var_0_18.settings.btns_spec then
		var_0_1.SetNextWindowPos(var_0_1.ImVec2(var_0_18.posXY.specbtns_x, var_0_18.posXY.specbtns_y), var_0_1.Cond.Always, var_0_1.ImVec2(1, 1))
		var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))
		var_0_1.Begin(var_0_14("кнопки репорт игрока"), nil, var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar + var_0_1.WindowFlags.AlwaysAutoResize)
		var_0_1.PopStyleVar()

		if var_0_28.move_btns_spec and not var_0_37.specWinState[0] then
			var_0_1.SetCursorPosX(355)
			var_0_1.SetCursorPosY(85)
			var_0_1.Text(" ")
		end

		if sampGetCharHandleBySampPlayerId(tonumber(var_0_37.spec_id)) then
			local var_106_23 = isCharOnFoot(select(2, sampGetCharHandleBySampPlayerId(tonumber(var_0_37.spec_id)))) and "onfoot" or "vehicle"

			if sampGetPlayerNickname(tonumber(var_0_37.spec_id)):find("%[PC%]") then
				var_0_1.BeginGroup()
				var_0_1.SetCursorPosX(40)
				KeyCap("W", var_0_41[var_106_23].W ~= nil, var_0_1.ImVec2(30, 30))
				KeyCap("A", var_0_41[var_106_23].A ~= nil, var_0_1.ImVec2(30, 30))
				var_0_1.SameLine()
				KeyCap("S", var_0_41[var_106_23].S ~= nil, var_0_1.ImVec2(30, 30))
				var_0_1.SameLine()
				KeyCap("D", var_0_41[var_106_23].D ~= nil, var_0_1.ImVec2(30, 30))
				var_0_1.EndGroup()
				var_0_1.SameLine(nil, 20)
			else
				var_0_1.Dummy(var_0_1.ImVec2(65, 65))

				local var_106_24 = var_0_1.GetWindowDrawList()
				local var_106_25 = var_0_1.GetItemRectMin()
				local var_106_26 = 35
				local var_106_27 = 10
				local var_106_28 = var_0_1.ImVec2(var_106_25.x + 32.5, var_106_25.y + 32.5)
				local var_106_29 = var_0_1.GetStyle().Colors[var_0_1.Col.Button]
				local var_106_30 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_106_29.x, var_106_29.y, var_106_29.z, 0.3))
				local var_106_31 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_106_29.x, var_106_29.y, var_106_29.z, var_106_29.w))
				local var_106_32 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(1, 1, 1, 0.55))

				var_106_24:AddCircleFilled(var_106_28, var_106_26, var_106_30, 48)
				var_106_24:AddCircle(var_106_28, var_106_26, var_106_31, 48, 1)

				local var_106_33 = var_0_40.joystick.old.x / 110 * (var_106_26 - var_106_27 / 2)
				local var_106_34 = var_0_40.joystick.new.x / 110 * (var_106_26 - var_106_27 / 2)
				local var_106_35 = var_0_40.joystick.old.y / 110 * (var_106_26 - var_106_27 / 2)
				local var_106_36 = var_0_40.joystick.new.y / 110 * (var_106_26 - var_106_27 / 2)
				local var_106_37 = bringFloatTo(var_106_33, var_106_34, var_0_40.joystick.timer, 0.1)
				local var_106_38 = bringFloatTo(var_106_35, var_106_36, var_0_40.joystick.timer, 0.1)

				var_106_24:AddCircleFilled(var_0_1.ImVec2(var_106_28.x + var_106_37, var_106_28.y + var_106_38), var_106_27, var_106_32, 16)
				var_0_1.SameLine(nil, 20)
			end

			if var_106_23 == "onfoot" then
				var_0_1.BeginGroup()
				KeyCap("Shift", var_0_41[var_106_23].Shift ~= nil, var_0_1.ImVec2(75, 30))
				var_0_1.SameLine()
				KeyCap("Alt", var_0_41[var_106_23].Alt ~= nil, var_0_1.ImVec2(55, 30))
				KeyCap("Space", var_0_41[var_106_23].Space ~= nil, var_0_1.ImVec2(135, 30))
				var_0_1.EndGroup()
				var_0_1.SameLine()
				var_0_1.BeginGroup()
				KeyCap("C", var_0_41[var_106_23].C ~= nil, var_0_1.ImVec2(30, 30))
				var_0_1.SameLine()
				KeyCap("F", var_0_41[var_106_23].F ~= nil, var_0_1.ImVec2(30, 30))
				KeyCap("RM", var_0_41[var_106_23].RKM ~= nil, var_0_1.ImVec2(30, 30))
				var_0_1.SameLine()
				KeyCap("LM", var_0_41[var_106_23].LKM ~= nil, var_0_1.ImVec2(30, 30))
				var_0_1.EndGroup()
			else
				var_0_1.BeginGroup()
				KeyCap("Ctrl", var_0_41[var_106_23].Ctrl ~= nil, var_0_1.ImVec2(65, 30))
				var_0_1.SameLine()
				KeyCap("Alt", var_0_41[var_106_23].Alt ~= nil, var_0_1.ImVec2(65, 30))
				KeyCap("Space", var_0_41[var_106_23].Space ~= nil, var_0_1.ImVec2(135, 30))
				var_0_1.EndGroup()
				var_0_1.SameLine()
				var_0_1.BeginGroup()
				KeyCap("Up", var_0_41[var_106_23].Up ~= nil, var_0_1.ImVec2(40, 30))
				KeyCap("Down", var_0_41[var_106_23].Down ~= nil, var_0_1.ImVec2(40, 30))
				var_0_1.EndGroup()
				var_0_1.SameLine()
				var_0_1.BeginGroup()
				KeyCap("H", var_0_41[var_106_23].H ~= nil, var_0_1.ImVec2(30, 30))
				var_0_1.SameLine()
				KeyCap("F", var_0_41[var_106_23].F ~= nil, var_0_1.ImVec2(30, 30))

				if sampGetPlayerNickname(tonumber(var_0_37.spec_id)):find("%[PC%]") then
					KeyCap("Q", var_0_41[var_106_23].Q ~= nil, var_0_1.ImVec2(30, 30))
					var_0_1.SameLine()
					KeyCap("E", var_0_41[var_106_23].E ~= nil, var_0_1.ImVec2(30, 30))
				else
					KeyCap("W", var_0_41[var_106_23].W ~= nil, var_0_1.ImVec2(30, 30))
					var_0_1.SameLine()
					KeyCap("S", var_0_41[var_106_23].S ~= nil, var_0_1.ImVec2(30, 30))
				end

				var_0_1.EndGroup()
			end

			var_0_1.End()
		end
	end
end)
var_0_1.OnFrame(function()
	return var_0_117.alpha > 0
end, function(arg_113_0)
	arg_113_0.HideCursor = not var_0_117.state

	var_0_1.PushStyleVarFloat(var_0_1.StyleVar.Alpha, var_0_117.alpha)
	var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 2.5), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(965, 285), var_0_1.Cond.Always)
	var_0_1.Begin(var_0_14("Наказание в чат"), _, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar)

	local var_113_0 = -1

	for iter_113_0, iter_113_1 in pairs({
		"ban",
		"warn",
		"prison",
		"mute",
		"kick"
	}) do
		local var_113_1 = var_0_1.GetWindowPos()
		local var_113_2, var_113_3 = getCursorPos()
		local var_113_4 = 10 + (iter_113_0 - 1) % 6 * 190
		local var_113_5 = 10 + (math.ceil(iter_113_0 / 6) - 1) * 270

		var_0_1.SetCursorPosX(var_113_4)
		var_0_1.SetCursorPosY(var_113_5)
		pun(iter_113_1:upper(), iter_113_1, iter_113_0)

		if var_113_2 > var_113_1.x and var_113_2 < var_113_1.x + 965 and var_113_3 > var_113_1.y and var_113_3 < var_113_1.y + 405 and var_113_2 > var_113_4 + var_113_1.x and var_113_2 < var_113_4 + 185 + var_113_1.x and var_113_3 > var_113_5 + var_113_1.y and var_113_3 < var_113_5 + 265 + var_113_1.y then
			var_113_0 = iter_113_0

			if var_0_1.IsMouseClicked(0) then
				sampSetChatInputText("/" .. iter_113_1 .. " " .. var_0_37.spec_id .. " ")
				sampSetChatInputEnabled(true)
				var_0_117.switch()
			end
		end
	end

	if var_113_0 ~= var_0_84 then
		var_0_84 = var_113_0
	end

	var_0_1.End()
	var_0_1.PopStyleVar()
end)

function pun(arg_114_0, arg_114_1, arg_114_2)
	local var_114_0 = var_0_1.GetWindowDrawList()
	local var_114_1 = var_0_1.GetCursorScreenPos()
	local var_114_2 = arg_114_2 == var_0_84 and {
		0.7,
		0.1,
		0.9,
		1
	} or {
		1,
		1,
		1,
		1
	}

	var_114_0:AddRect(var_114_1, var_0_1.ImVec2(var_114_1.x + 185, var_114_1.y + 265), var_0_1.ColorConvertFloat4ToU32(var_114_2), 15, bit.bor(bit.lshift(1, 0), bit.lshift(1, 1), bit.lshift(1, 2), bit.lshift(1, 3)))
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 10)
	var_0_1.SetCursorPosX(30 + 190 * (arg_114_2 - 1))
	var_0_1.Image(var_0_25[arg_114_1], var_0_1.ImVec2(150, 200))
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 17)
	var_0_1.SetCursorPosX((185 - var_0_1.CalcTextSize(arg_114_0).x) / 2 + 190 * (arg_114_2 - 1))
	var_0_1.PushFont(var_0_75[22])
	var_0_1.Text(arg_114_0)
	var_0_1.PopFont()
end

function var_0_9.onPlayerSync(arg_115_0, arg_115_1)
	if var_0_18.settings.btns_spec and tonumber(arg_115_0) == tonumber(var_0_37.spec_id) then
		local var_115_0 = arg_115_1.leftRightKeys
		local var_115_1 = arg_115_1.upDownKeys

		if os.clock() - var_0_40.joystick.timer > 0.1 then
			var_0_40.joystick.timer = os.clock()
			var_0_40.joystick.old.x = var_0_40.joystick.new.x
			var_0_40.joystick.old.y = var_0_40.joystick.new.y
			var_0_40.joystick.new.x = var_115_0 == nil and 0 or var_115_0 > 128 and var_115_0 - 65535 or var_115_0
			var_0_40.joystick.new.y = var_115_1 == nil and 0 or var_115_1 > 128 and var_115_1 - 65535 or var_115_1
		end

		var_0_41.onfoot = {}
		var_0_41.onfoot.W = arg_115_1.upDownKeys == 65408 or nil
		var_0_41.onfoot.A = arg_115_1.leftRightKeys == 65408 or nil
		var_0_41.onfoot.S = arg_115_1.upDownKeys == 128 or nil
		var_0_41.onfoot.D = arg_115_1.leftRightKeys == 128 or nil
		var_0_41.onfoot.Alt = bit.band(arg_115_1.keysData, 1024) == 1024 or nil
		var_0_41.onfoot.Shift = bit.band(arg_115_1.keysData, 8) == 8 or nil
		var_0_41.onfoot.Space = bit.band(arg_115_1.keysData, 32) == 32 or nil
		var_0_41.onfoot.F = bit.band(arg_115_1.keysData, 16) == 16 or nil
		var_0_41.onfoot.C = bit.band(arg_115_1.keysData, 2) == 2 or nil
		var_0_41.onfoot.RKM = bit.band(arg_115_1.keysData, 4) == 4 or nil
		var_0_41.onfoot.LKM = bit.band(arg_115_1.keysData, 128) == 128 or nil
	end
end

function var_0_9.onVehicleSync(arg_116_0, arg_116_1, arg_116_2)
	if var_0_18.settings.btns_spec and tonumber(arg_116_0) == tonumber(var_0_37.spec_id) then
		local var_116_0 = arg_116_2.leftRightKeys
		local var_116_1 = arg_116_2.upDownKeys

		if os.clock() - var_0_40.joystick.timer > 0.1 then
			var_0_40.joystick.timer = os.clock()
			var_0_40.joystick.old.x = var_0_40.joystick.new.x
			var_0_40.joystick.old.y = var_0_40.joystick.new.y
			var_0_40.joystick.new.x = var_116_0 == nil and 0 or var_116_0 > 128 and var_116_0 - 65535 or var_116_0
			var_0_40.joystick.new.y = var_116_1 == nil and 0 or var_116_1 > 128 and var_116_1 - 65535 or var_116_1
		end

		var_0_41.vehicle = {}
		var_0_41.vehicle.W = bit.band(arg_116_2.keysData, 8) == 8 or nil
		var_0_41.vehicle.A = arg_116_2.leftRightKeys == 65408 or nil
		var_0_41.vehicle.S = bit.band(arg_116_2.keysData, 32) == 32 or nil
		var_0_41.vehicle.D = arg_116_2.leftRightKeys == 128 or nil
		var_0_41.vehicle.H = bit.band(arg_116_2.keysData, 2) == 2 or nil
		var_0_41.vehicle.Q = bit.band(arg_116_2.keysData, 256) == 256 or nil
		var_0_41.vehicle.E = bit.band(arg_116_2.keysData, 64) == 64 or nil
		var_0_41.vehicle.F = bit.band(arg_116_2.keysData, 16) == 16 or nil
		var_0_41.vehicle.Space = bit.band(arg_116_2.keysData, 128) == 128 or nil
		var_0_41.vehicle.Ctrl = bit.band(arg_116_2.keysData, 1) == 1 or nil
		var_0_41.vehicle.Alt = bit.band(arg_116_2.keysData, 4) == 4 or nil
		var_0_41.vehicle.Up = arg_116_2.upDownKeys == 65408 or nil
		var_0_41.vehicle.Down = arg_116_2.upDownKeys == 128 or nil
	end
end

function KeyCap(arg_117_0, arg_117_1, arg_117_2)
	local var_117_0 = var_0_1.GetWindowDrawList()
	local var_117_1 = var_0_1.GetCursorScreenPos()
	local var_117_2 = {
		[true] = var_0_1.ImVec4(0.6, 0.6, 1, 1),
		[false] = var_0_1.ImVec4(0.6, 0.6, 1, 0.1)
	}

	if KEYCAP == nil then
		KEYCAP = {}
	end

	if KEYCAP[arg_117_0] == nil then
		KEYCAP[arg_117_0] = {
			status = arg_117_1,
			color = var_117_2[arg_117_1]
		}
	end

	local var_117_3 = KEYCAP[arg_117_0]

	if arg_117_1 ~= var_117_3.status then
		var_117_3.status = arg_117_1
		var_117_3.timer = os.clock()
	end

	local var_117_4 = 3
	local var_117_5 = var_0_1.ImVec2(var_117_1.x, var_117_1.y)
	local var_117_6 = var_0_1.ImVec2(var_117_1.x + arg_117_2.x, var_117_1.y + arg_117_2.y)

	if var_117_3.timer ~= nil then
		var_117_3.color = bringVec4To(var_117_2[not arg_117_1], var_117_2[arg_117_1], var_117_3.timer, 0.1)
	end

	local var_117_7 = var_0_1.CalcTextSize(arg_117_0)
	local var_117_8 = var_0_1.ImVec2(var_117_1.x + arg_117_2.x / 2 - var_117_7.x / 2, var_117_1.y + arg_117_2.y / 2 - var_117_7.y / 2)

	var_0_1.Dummy(arg_117_2)
	var_117_0:AddRectFilled(var_117_5, var_117_6, var_0_1.ColorConvertFloat4ToU32(var_117_3.color), var_117_4)
	var_117_0:AddRect(var_117_5, var_117_6, var_0_1.ColorConvertFloat4ToU32(var_117_2[true]), var_117_4, _, 1)
	var_117_0:AddText(var_117_8, 4294967295, arg_117_0)
end

var_0_1.OnFrame(function()
	return var_0_50.autolovlyaWinState[0]
end, function(arg_119_0)
	arg_119_0.HideCursor = true

	var_0_1.SetNextWindowPos(var_0_1.ImVec2(var_0_18.posXY.autolovlya_x, var_0_18.posXY.autolovlya_y), var_0_1.Cond.Always, var_0_1.ImVec2(1, 1))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(141, 50), var_0_1.Cond.FirstUseEver)
	var_0_1.Begin(var_0_14("autolovlya"), _, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar + var_0_1.WindowFlags.NoMove + var_0_1.WindowFlags.NoSavedSettings)
	var_0_1.PushFont(norm)
	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 5)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
	var_0_1.Text(var_0_14("MATools | Автоловля"))
	var_0_1.Separator()
	var_0_1.SetCursorPosX((141 - var_0_1.CalcTextSize(secondsToTimeString(var_0_50.autolovlya_time)).x) / 2)
	var_0_1.Text(secondsToTimeString(var_0_50.autolovlya_time))
	var_0_1.PopFont()
	var_0_1.End()
end)
var_0_1.OnFrame(function()
	return var_0_43.ipWinState[0]
end, function(arg_121_0)
	var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 1.5, getScreenResolution() / 2.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(1, 1))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(450, 325), var_0_1.Cond.FirstUseEver)
	var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))
	var_0_1.Begin(var_0_14("info_ipWin"), _, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar)
	var_0_1.PopStyleVar()
	var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x - var_0_1.CalcTextSize(var_0_14("Информация об IP ") .. var_0_49.nick .. "[" .. var_0_49.id .. "] | MATools").x) / 2)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
	var_0_1.TextNew(var_0_14("Информация об IP ") .. var_0_49.nick .. "[" .. var_0_49.id .. "] | MATools")
	var_0_1.Separator()
	var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x - var_0_1.CalcTextSize(var_0_14("Регистрационные данные")).x) / 2)
	var_0_1.TextNew(var_0_14("Регистрационные данные"))
	var_0_1.SameLine()
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
	var_0_1.Text(var_0_8("file"))

	local var_121_0 = "IP: " .. var_0_49.regIP .. "\n" .. "Город: " .. var_0_49.regIP_city .. "\n" .. "Страна: " .. var_0_49.regIP_country .. "\n" .. "Провайдер: " .. var_0_49.regIP_isp

	var_0_1.Hint("help_cupyip_hint" .. var_121_0, var_0_14("Кликните, чтобы скопировать:\n") .. var_0_14(var_121_0))

	if var_0_1.IsItemClicked() then
		lua_thread.create(function()
			setLanguage("00000419")
			wait(111)
			setClipboardText(var_121_0)
			var_0_108(var_0_14("Вы успешно скопировали регистрационные данные!"), 1111)
		end)
	end

	var_0_1.TextWithCopy("IP: " .. var_0_49.regIP)
	var_0_1.TextWithCopy("Город: " .. var_0_49.regIP_city)
	var_0_1.TextWithCopy("Страна: " .. var_0_49.regIP_country)
	var_0_1.TextWithCopy("Провайдер: " .. var_0_49.regIP_isp)
	var_0_1.Spacing()
	var_0_1.Spacing()
	var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x - var_0_1.CalcTextSize(var_0_14("Текущие данные")).x) / 2)
	var_0_1.TextNew(var_0_14("Текущие данные"))
	var_0_1.SameLine()
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
	var_0_1.Text(var_0_8("file"))

	local var_121_1 = "IP: " .. var_0_49.lastIP .. "\n" .. "Город: " .. var_0_49.lastIP_city .. "\n" .. "Страна: " .. var_0_49.lastIP_country .. "\n" .. "Провайдер: " .. var_0_49.lastIP_isp

	var_0_1.Hint("help_cupyip_hint" .. var_121_1, var_0_14("Кликните, чтобы скопировать:\n") .. var_0_14(var_121_1))

	if var_0_1.IsItemClicked() then
		lua_thread.create(function()
			setLanguage("00000419")
			wait(111)
			setClipboardText(var_121_1)
			var_0_108(var_0_14("Вы успешно скопировали текущие данные!"), 1111)
		end)
	end

	var_0_1.TextWithCopy("IP: " .. var_0_49.lastIP)
	var_0_1.TextWithCopy("Город: " .. var_0_49.lastIP_city)
	var_0_1.TextWithCopy("Страна: " .. var_0_49.lastIP_country)
	var_0_1.TextWithCopy("Провайдер: " .. var_0_49.lastIP_isp)
	var_0_1.Spacing()
	var_0_1.Spacing()
	var_0_1.Spacing()
	var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x - var_0_1.CalcTextSize(var_0_14("Расстояние между городами: ") .. var_0_49.distance .. var_0_14(" км.")).x) / 2)
	var_0_1.TextWithCopy("Расстояние между городами: " .. var_0_49.distance .. " км.")
	var_0_1.SameLine(8)
	var_0_1.PushStyleColor(var_0_1.Col.Text, var_0_1.ImVec4(0, 0, 0, 0))
	var_0_1.Text(var_0_14("Информация об IP ") .. var_0_49.nick .. "[" .. var_0_49.id .. "] |   MATools")
	var_0_1.PopStyleColor()
	var_0_1.Spacing()
	var_0_1.Spacing()
	var_0_1.Spacing()

	local var_121_2 = "Регистрационные данные:\n" .. var_121_0 .. "\n\n" .. "Текущие данные:\n" .. var_121_1 .. "\n\n" .. "Расстояние между городами: " .. var_0_49.distance .. " км."

	var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x - 230) / 2)

	if var_0_1.Button(var_0_14("Скопировать"), var_0_1.ImVec2(100, 22)) then
		lua_thread.create(function()
			setLanguage("00000419")
			wait(111)
			setClipboardText(var_121_2)
			var_0_108(var_0_14("Вы успешно скопировали текущие и регистрационные данные!"), 1111)
		end)
	end

	var_0_1.SameLine(0, 30)

	if var_0_1.Button(var_0_14("Закрыть"), var_0_1.ImVec2(100, 22)) then
		var_0_43.ipWinState[0] = false
	end

	var_0_1.End()
end)
var_0_1.OnFrame(function()
	return var_0_43.ghettoWinState[0]
end, function(arg_126_0)
	var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(472, 497), var_0_1.Cond.Always)
	var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.ImVec4(0, 0, 0, 0))
	var_0_1.PushStyleVarFloat(var_0_1.StyleVar.FrameRounding, 0)
	var_0_1.Begin(var_0_14("Ghetto"), nil, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar)
	var_0_1.Image(var_0_25.ghetto, var_0_1.ImVec2(472, 497))

	local var_126_0 = getAllGangZones()

	var_0_1.SetCursorPosY(68)
	var_0_1.SetCursorPosX(70)

	local var_126_1 = {
		{
			stop = 131,
			start = 121
		},
		{
			stop = 120,
			start = 110
		},
		{
			stop = 109,
			start = 99
		},
		{
			stop = 98,
			start = 88
		},
		{
			stop = 87,
			start = 77
		},
		{
			stop = 76,
			start = 66
		},
		{
			stop = 65,
			start = 55
		},
		{
			stop = 54,
			start = 44
		},
		{
			stop = 43,
			start = 33
		},
		{
			stop = 32,
			start = 22
		},
		{
			stop = 21,
			start = 11
		},
		{
			stop = 10,
			start = 0
		}
	}

	for iter_126_0, iter_126_1 in ipairs(var_126_1) do
		drawZones(iter_126_1.start, iter_126_1.stop, var_126_0)
	end

	var_0_1.SetCursorPosY(416)

	for iter_126_2 = 132, 133 do
		for iter_126_3, iter_126_4 in ipairs(var_126_0) do
			if iter_126_4.id == iter_126_2 then
				var_0_1.PushStyleColor(var_0_1.Col.ButtonHovered, var_0_1.ImVec4(0.5, 0.5, 0.5, 0.8))
				var_0_1.PushStyleColor(var_0_1.Col.ButtonActive, var_0_1.ImVec4(0.7, 0.7, 0.7, 0.8))

				if iter_126_4.color == 2583625932 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0.9, 0, 0.9, 0.7))
				elseif iter_126_4.color == 2566966527 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(1, 1, 0, 0.7))
				elseif iter_126_4.color == 2566953216 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0, 0.5, 0, 0.8))
				elseif iter_126_4.color == 2583651942 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0, 0.5, 0.8, 0.7))
				elseif iter_126_4.color == 2581705728 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0, 0.95, 1, 0.7))
				elseif iter_126_4.color == 369098751 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0.6, 0.6, 0.6, 0.8))
				end

				var_0_1.SetCursorPosX(20)

				local var_126_2
				local var_126_3 = iter_126_2 == 132 and 19 or 24

				if var_0_1.Button("##ZoneWithId " .. iter_126_2, var_0_1.ImVec2(50, var_126_3)) then
					local var_126_4, var_126_5, var_126_6 = getCharCoordinates(playerPed)

					var_0_42.ghetto_coords.x = var_126_4
					var_0_42.ghetto_coords.y = var_126_5
					var_0_42.ghetto_coords.z = var_126_6
					var_0_42.ghetto_coords.idInt = getActiveInterior()
					var_0_39 = true

					local var_126_7 = iter_126_4.pos[0] + (iter_126_4.pos[2] - iter_126_4.pos[0]) / 2
					local var_126_8 = iter_126_4.pos[1] + (iter_126_4.pos[3] - iter_126_4.pos[1]) / 2

					if getActiveInterior() ~= 0 then
						setCharInterior(PLAYER_PED, 0)
						setInteriorVisible(0)
						activateInteriorPeds(true)
					end

					clearExtraColours(true)
					requestCollision(var_126_7, var_126_8)
					loadScene(var_126_7, var_126_8, 20)
					setCharCoordinates(PLAYER_PED, var_126_7, var_126_8, 20)

					var_0_43.ghettoWinState2[0] = true
				end

				var_0_1.PopStyleColor(3)

				if iter_126_2 ~= 133 then
					var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 5)
				end
			end
		end
	end

	var_0_1.SetCursorPosY(0)
	var_0_1.SetCursorPosX(0)

	local var_126_9 = var_0_1.GetWindowDrawList()
	local var_126_10 = var_0_1.GetCursorScreenPos()

	var_126_9:AddRectFilled(var_126_10, var_0_1.ImVec2(var_126_10.x + 472, var_126_10.y + 25), var_0_1.ColorConvertFloat4ToU32(var_0_1.GetStyle().Colors[var_0_1.Col.Separator]), 0)
	var_0_1.SetCursorPosY(3)
	var_0_1.PushFont(var_0_75[19])
	var_0_1.SetCursorPosX((472 - var_0_1.CalcTextSize(var_0_14("Редактор гетто зон | MATools")).x) / 2)
	var_0_1.Text(var_0_14("Редактор гетто зон | MATools"))
	var_0_1.PopFont()
	var_0_1.SetCursorPosY(475)
	var_0_1.SetCursorPosX(185)

	if var_0_1.Button(var_0_14("Закрыть##ghetto1"), var_0_1.ImVec2(127, 22)) then
		var_0_39 = false
		var_0_43.ghettoWinState2[0] = false
		var_0_43.ghettoWinState[0] = false
	end

	var_0_1.End()
	var_0_1.PopStyleVar()
	var_0_1.PopStyleColor()

	if var_0_43.ghettoWinState2[0] then
		var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
		var_0_1.SetNextWindowSize(var_0_1.ImVec2(220, 207), var_0_1.Cond.Always)
		var_0_1.Begin(var_0_14("Покраска территории"), nil, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse)

		local var_126_11 = {
			var_0_14("Нет владельца"),
			"Grove Street",
			"The Ballas",
			"The Rifa",
			"Varios Los Aztecas",
			"Los Santos Vagos"
		}

		for iter_126_5, iter_126_6 in ipairs(var_126_11) do
			if var_0_1.Button(iter_126_6, var_0_1.ImVec2(220, 25)) then
				var_0_42.ghettoSelected = iter_126_5 - 1

				sampSendChat("/gpanel")
				sampSendDialogResponse(9460, 1, 0, _)
			end

			if var_0_1.IsItemHovered() and var_0_1.IsMouseClicked(1) then
				local function var_126_12()
					var_0_42.ghettoSelected = iter_126_5 - 1

					sampSendChat("/gpanel")
					sampSendDialogResponse(9460, 1, 0, _)
					wait(sampGetPlayerPing(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))))
					tp_coord(var_0_42.ghetto_coords.idInt, var_0_42.ghetto_coords.x, var_0_42.ghetto_coords.y, var_0_42.ghetto_coords.z)
				end

				lua_thread.create(var_126_12)
			end

			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		end

		var_0_1.Spacing()
		var_0_1.SetCursorPosX(60)

		if var_0_1.Button(var_0_14("Закрыть##ghetto2"), var_0_1.ImVec2(100, 22)) then
			var_0_39 = false
			var_0_43.ghettoWinState2[0] = false
		end

		var_0_1.End()
	end
end)

function drawZones(arg_128_0, arg_128_1, arg_128_2)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 5)
	var_0_1.SetCursorPosX(70)

	for iter_128_0 = arg_128_0, arg_128_1 do
		for iter_128_1, iter_128_2 in ipairs(arg_128_2) do
			if iter_128_2.id == iter_128_0 then
				var_0_1.PushStyleColor(var_0_1.Col.ButtonHovered, var_0_1.ImVec4(0.5, 0.5, 0.5, 0.8))
				var_0_1.PushStyleColor(var_0_1.Col.ButtonActive, var_0_1.ImVec4(0.7, 0.7, 0.7, 0.8))

				if iter_128_2.color == 2583625932 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0.9, 0, 0.9, 0.7))
				elseif iter_128_2.color == 2566966527 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(1, 1, 0, 0.7))
				elseif iter_128_2.color == 2566953216 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0, 0.5, 0, 0.8))
				elseif iter_128_2.color == 2583651942 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0, 0.5, 0.8, 0.7))
				elseif iter_128_2.color == 2581705728 then
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0, 0.95, 1, 0.7))
				else
					var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.ImVec4(0.6, 0.6, 0.6, 0.6))
				end

				if var_0_1.Button("##ZoneWithId " .. iter_128_0, var_0_1.ImVec2(34.5, 34.5)) then
					local var_128_0, var_128_1, var_128_2 = getCharCoordinates(playerPed)

					var_0_42.ghetto_coords.x = var_128_0
					var_0_42.ghetto_coords.y = var_128_1
					var_0_42.ghetto_coords.z = var_128_2
					var_0_42.ghetto_coords.idInt = getActiveInterior()
					var_0_39 = true

					local var_128_3 = iter_128_2.pos[0] + (iter_128_2.pos[2] - iter_128_2.pos[0]) / 2
					local var_128_4 = iter_128_2.pos[1] + (iter_128_2.pos[3] - iter_128_2.pos[1]) / 2

					if getActiveInterior() ~= 0 then
						setCharInterior(PLAYER_PED, 0)
						setInteriorVisible(0)
						activateInteriorPeds(true)
					end

					clearExtraColours(true)
					requestCollision(var_128_3, var_128_4)

					if iter_128_0 > 70 then
						if iter_128_0 == 127 or iter_128_0 == 128 or iter_128_0 == 129 or iter_128_0 == 130 or iter_128_0 == 126 or iter_128_0 == 125 or iter_128_0 == 124 or iter_128_0 == 117 or iter_128_0 == 118 or iter_128_0 == 119 or iter_128_0 == 114 or iter_128_0 == 106 or iter_128_0 == 107 or iter_128_0 == 108 or iter_128_0 == 97 or iter_128_0 == 95 or iter_128_0 == 96 or iter_128_0 == 78 then
							loadScene(var_128_3, var_128_4, 80)
							setCharCoordinates(PLAYER_PED, var_128_3, var_128_4, 80)
						else
							loadScene(var_128_3, var_128_4, 45)
							setCharCoordinates(PLAYER_PED, var_128_3, var_128_4, 45)
						end
					elseif iter_128_0 == 64 or iter_128_0 == 44 or iter_128_0 == 42 or iter_128_0 == 53 or iter_128_0 == 14 or iter_128_0 == 6 then
						loadScene(var_128_3, var_128_4, 40)
						setCharCoordinates(PLAYER_PED, var_128_3, var_128_4, 40)
					else
						loadScene(var_128_3, var_128_4, 20)
						setCharCoordinates(PLAYER_PED, var_128_3, var_128_4, 20)
					end

					var_0_43.ghettoWinState2[0] = true
				end

				var_0_1.PopStyleColor(3)

				if iter_128_0 ~= arg_128_1 then
					var_0_1.SameLine(0, 0)
				end
			end
		end
	end
end

var_0_1.OnFrame(function()
	return var_0_118.alpha > 0
end, function(arg_130_0)
	arg_130_0.HideCursor = not var_0_118.state

	var_0_1.PushStyleVarFloat(var_0_1.StyleVar.Alpha, var_0_118.alpha)
	var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(505, 368), var_0_1.Cond.Always)
	var_0_1.Begin(var_0_14("Помощь по ID машин/оружий | MATools"), _, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse)
	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 5)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
	var_0_1.BeginChild("##search car", var_0_1.ImVec2(245, 310), true)
	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 5)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
	var_0_1.SetNextItemWidth(223)
	var_0_1.InputTextWithHint("##SearchCarId", var_0_14("Поиск машины"), var_0_30.search_id_car, 256)

	for iter_130_0, iter_130_1 in pairs(var_0_22) do
		if string.rlower(iter_130_1):find(string.rlower(var_0_14:decode(var_0_2.string(var_0_30.search_id_car)))) or tostring(iter_130_0):find(var_0_2.string(var_0_30.search_id_car)) then
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 5)
			var_0_1.TextNew(var_0_14(iter_130_0 .. " - " .. iter_130_1))
		end
	end

	var_0_1.EndChild()
	var_0_1.SameLine(0, 5)
	var_0_1.BeginChild("##search gun", var_0_1.ImVec2(245, 310), true)
	var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 5)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
	var_0_1.SetNextItemWidth(223)
	var_0_1.InputTextWithHint("##SearchGunId", var_0_14("Поиск оружия"), var_0_30.search_id_gun, 256)

	for iter_130_2, iter_130_3 in pairs(var_0_23) do
		if string.rlower(iter_130_3):find(string.rlower(var_0_2.string(var_0_30.search_id_gun))) or tostring(iter_130_2):find(var_0_2.string(var_0_30.search_id_gun)) then
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 5)
			var_0_1.TextNew(iter_130_2 .. " - " .. iter_130_3)
		end
	end

	var_0_1.EndChild()
	var_0_1.SetCursorPosX(200)

	if var_0_1.Button(var_0_14("Закрыть##mhelp"), var_0_1.ImVec2(105, 22)) then
		var_0_118.switch()
	end

	var_0_1.End()
	var_0_1.PopStyleVar()
end)
var_0_1.OnFrame(function()
	return var_0_116.alpha > 0
end, function(arg_132_0)
	arg_132_0.HideCursor = not var_0_116.state

	var_0_1.PushStyleVarFloat(var_0_1.StyleVar.Alpha, var_0_116.alpha)
	var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_83.settingswpos, var_0_1.ImVec2(0.5, 0.5))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(820, 580), var_0_1.Cond.Always)
	var_0_1.Begin(var_0_14("settings"), _, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar)
	var_0_1.SetCursorPosX(0)
	var_0_1.SetCursorPosY(0)
	var_0_1.PushStyleColor(var_0_1.Col.ChildBg, var_0_1.ImVec4(0.4, 0, 0.8, 1))
	var_0_1.BeginChild("buttons", var_0_1.ImVec2(222, 580), false)
	var_0_1.SetCursorPosY(22)
	var_0_1.PushFont(matools)

	local var_132_0 = (222 - var_0_1.CalcTextSize(var_0_14("MATools")).x) / 2

	var_0_1.SetCursorPosX(var_132_0)
	var_0_1.Text(var_0_14("MATools"))
	var_0_1.PopFont()
	var_0_1.SetCursorPosX(30)
	var_0_1.SetCursorPosY(4)
	var_0_1.Image(var_0_25.gus, var_0_1.ImVec2(35, 30))
	var_0_1.SetCursorPosX(108)
	var_0_1.SetCursorPosY(11)
	var_0_1.Image(var_0_25.lisa, var_0_1.ImVec2(46, 31))
	var_0_1.SetCursorPosY(98)

	for iter_132_0, iter_132_1 in ipairs(var_0_113.list) do
		var_0_1.CustomMenuItem(iter_132_0, iter_132_1)
	end

	var_0_1.EndChild()
	var_0_1.PopStyleColor()
	var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.GetStyle().Colors[var_0_1.Col.Separator])
	var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))

	if var_0_113.sel[0] == 1 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)

		local var_132_1 = (598 - var_0_1.CalcTextSize(var_0_14("Основное")).x) / 2 + 222

		var_0_1.SetCursorPosX(var_132_1)
		var_0_1.Text(var_0_14("Основное"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab1", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Checkbox_open_mat_bind", var_0_26.checkbox_open_mat_bind) then
			var_0_18.settings.open_mat_bind = var_0_26.checkbox_open_mat_bind[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.open_mat_bind, var_0_14("Меню скрипта"))

		if var_0_18.settings.open_mat_bind then
			var_0_1.SameLine(195)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_open_mat_key", var_0_21.open_mat, {}, 100) then
				var_0_18.binds.open_mat = encodeJson(var_0_21.open_mat.v)

				var_0_3.save(var_0_18, var_0_17)
			end
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

		if var_0_1.ToggleButton(var_0_14("##Автологин"), var_0_26.checkbox_autologin) then
			var_0_18.settings.autologin = var_0_26.checkbox_autologin[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.PushFont(norm)

		if var_0_18.settings.autologin then
			var_0_1.Text(var_0_14("Автологин: "))
		else
			var_0_1.TextDisabled(var_0_14("Автологин"))
		end

		var_0_1.PopFont()

		if var_0_18.settings.autologin then
			local var_132_2 = var_0_33.showPassword and 0 or var_0_1.InputTextFlags.Password
			local var_132_3 = var_0_33.showPincode and 0 or var_0_1.InputTextFlags.Password
			local var_132_4 = var_0_33.showAlogin and 0 or var_0_1.InputTextFlags.Password

			var_0_1.SetNextItemWidth(180)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 45)

			if var_0_1.InputTextWithHint("##Add_password_acc", var_0_14("Ваш пароль от аккаунта"), var_0_30.input_password, 256, var_132_2) then
				local var_132_5 = var_0_2.string(var_0_30.input_password)

				if #var_132_5 > 0 then
					var_0_18.settings.password = var_0_14:decode(var_132_5)
				else
					var_0_18.settings.password = ""
				end

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()

			local var_132_6 = var_0_33.showPassword and "пЃ°" or var_0_8("eye")

			var_0_1.Text(var_132_6)

			if var_0_1.IsItemHovered() then
				var_0_33.state_passpin = "password"

				if var_0_33.state_passpin == "password" and var_0_1.IsMouseClicked(0) then
					var_0_33.showPassword = not var_0_33.showPassword
				end
			end

			if var_0_33.showPassword then
				var_0_1.Hint("passwd_hinton1", var_0_14("Скрыть пароль от аккаунта."))
			else
				var_0_1.Hint("passwd_hintoff1", var_0_14("Показать пароль от аккаунта."))
			end

			var_0_1.SetNextItemWidth(90)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 45)

			if var_0_1.InputTextWithHint("##Add_pincode", var_0_14("Ваш пин-код"), var_0_30.input_pincode, 256, var_132_3) then
				local var_132_7 = var_0_2.string(var_0_30.input_pincode)
				local var_132_8 = var_132_7:gsub("%D", "")

				if var_132_8 ~= var_132_7 then
					var_0_2.copy(var_0_30.input_pincode, var_132_8, #var_132_8 + 1)
				end

				if #var_132_8 > 0 then
					var_0_18.settings.pincode = var_132_8
				else
					var_0_18.settings.pincode = ""
				end

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()

			local var_132_9 = var_0_33.showPincode and "пЃ°" or var_0_8("eye")

			var_0_1.Text(var_132_9)

			if var_0_1.IsItemHovered() then
				var_0_33.state_passpin = "pincode"

				if var_0_33.state_passpin == "pincode" and var_0_1.IsMouseClicked(0) then
					var_0_33.showPincode = not var_0_33.showPincode
				end
			end

			if var_0_33.showPincode then
				var_0_1.Hint("pincode_hinton2", var_0_14("Скрыть пин-код."))
			else
				var_0_1.Hint("pincode_hintoff2", var_0_14("Показать пин-код."))
			end

			var_0_1.SetNextItemWidth(180)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 45)

			if var_0_1.InputTextWithHint("##Add_alogin", var_0_14("Ваш пароль от админки"), var_0_30.input_alogin, 256, var_132_4) then
				local var_132_10 = var_0_2.string(var_0_30.input_alogin)

				if #var_132_10 > 0 then
					var_0_18.settings.alogin = var_0_14:decode(var_132_10)
				else
					var_0_18.settings.alogin = ""
				end

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()

			local var_132_11 = var_0_33.showAlogin and "пЃ°" or var_0_8("eye")

			var_0_1.Text(var_132_11)

			if var_0_1.IsItemHovered() then
				var_0_33.state_passpin = "alogin"

				if var_0_33.state_passpin == "alogin" and var_0_1.IsMouseClicked(0) then
					var_0_33.showAlogin = not var_0_33.showAlogin
				end
			end

			if var_0_33.showAlogin then
				var_0_1.Hint("passwd_hinton1_adm", var_0_14("Скрыть пароль от админки."))
			else
				var_0_1.Hint("passwd_hintoff1_adm", var_0_14("Показать пароль от админки."))
			end
		end

		if var_0_18.settings.autologin then
			var_0_1.SetCursorPosY(140)
		else
			var_0_1.SetCursorPosY(60)
		end

		var_0_1.PushFont(norm)
		var_0_1.Text(var_0_14("Прочие функции: "))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

		if var_0_1.ToggleButton(var_0_14("##report++"), var_0_26.checkbox_reportplusplus) then
			var_0_18.settings.reportplusplus = var_0_26.checkbox_reportplusplus[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.reportplusplus, var_0_14("REPORT++"))
		var_0_1.CustomTextQuestion("hint_report++", var_0_14("Включить/Выключить отображение самповского текста REPORT++."))
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

		if var_0_1.ToggleButton(var_0_14("##onlyboocchat"), var_0_26.checkbox_only_b) then
			var_0_18.settings.only_b = var_0_26.checkbox_only_b[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.only_b, var_0_14("Авто /b"))
		var_0_1.CustomTextQuestion("hint_only_b", var_0_14("Автоматически пишет в /b чат все Ваши сообщения в РП чат."))
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

		if var_0_1.ToggleButton(var_0_14("##autoaccent"), var_0_26.checkbox_accent) then
			var_0_18.settings.accent = var_0_26.checkbox_accent[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.accent, var_0_14("Автоакцент"))
		var_0_1.CustomTextQuestion("hint_accent", var_0_14("Автоматически добавляет приписку к вашим сообщениям в чате."))

		if var_0_18.settings.accent then
			var_0_1.SetCursorPosX(45)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
			var_0_1.Text("[")
			var_0_1.SameLine()
			var_0_1.SetNextItemWidth(180)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

			if var_0_1.InputTextWithHint("##Add_accent", var_0_14("Ваш акцент"), var_0_30.input_accent, 128) then
				var_0_18.settings.what_accent = var_0_14:decode(var_0_2.string(var_0_30.input_accent))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.Text("]")
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

		if var_0_1.ToggleButton("##Checkbox_skip tp", var_0_26.checkbox_skip_tp) then
			var_0_18.settings.skip_tp = var_0_26.checkbox_skip_tp[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.skip_tp, var_0_14("Автоподтверждение тп по метке"))
		var_0_1.CustomTextQuestion("hint_skip_tp", var_0_14("Автоматически нажимает \"Да\", когда Вы тпаетесь по метке."))
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

		if var_0_1.ToggleButton(var_0_14("##Checkbox_check_myadmstats"), var_0_26.checkbox_check_myadmstats) then
			var_0_18.settings.check_myadmstats = var_0_26.checkbox_check_myadmstats[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.check_myadmstats, var_0_14("Автопросмотр статистики"))
		var_0_1.CustomTextQuestion("hint_check_myadmstats", var_0_14("Автоматически вводит Ваш ник в просмотре статистики администратора."))
		var_0_1.SetCursorPosX(300)
		var_0_1.SetCursorPosY(4)

		if var_0_1.ToggleButton(var_0_14("##Checkbox_off_mat"), var_0_26.off_mat) then
			off_mat_func()
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_26.off_mat[0], var_0_14("Выключить функционал"))
		var_0_1.CustomTextQuestion("hint_off_func", var_0_14("Выключает выбранные Вами функции тулса(до перезапуска)."))
		var_0_1.SetCursorPosX(345)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

		local var_132_12 = {
			{
				inisetting = "off_mat_cheats",
				text = var_0_14("Отключать читы"),
				checkbox_setting = var_0_26.checkbox_off_mat_cheats
			},
			{
				inisetting = "off_mat_far_chat",
				text = var_0_14("Отключать дальний чат"),
				checkbox_setting = var_0_26.checkbox_off_mat_far_chat
			},
			{
				inisetting = "off_mat_monitoring",
				text = var_0_14("Отключать мониторинг"),
				checkbox_setting = var_0_26.checkbox_off_mat_monitoring
			},
			{
				inisetting = "off_mat_traisers",
				text = var_0_14("Отключать трейсера"),
				checkbox_setting = var_0_26.checkbox_off_mat_traisers
			},
			{
				inisetting = "off_mat_adminchecker",
				text = var_0_14("Отключать админ чекер"),
				checkbox_setting = var_0_26.checkbox_off_mat_adminchecker
			},
			{
				inisetting = "off_mat_playerchecker",
				text = var_0_14("Отключать чекер игроков"),
				checkbox_setting = var_0_26.checkbox_off_mat_playerchecker
			},
			{
				inisetting = "off_mat_infpanel",
				text = var_0_14("Отключать информационную панель"),
				checkbox_setting = var_0_26.checkbox_off_mat_infpanel
			},
			{
				inisetting = "off_mat_forms",
				text = var_0_14("Отключать формы"),
				checkbox_setting = var_0_26.checkbox_off_mat_forms
			},
			{
				inisetting = "off_mat_notes",
				text = var_0_14("Отключать заметки"),
				checkbox_setting = var_0_26.checkbox_off_mat_notes
			}
		}

		for iter_132_2, iter_132_3 in ipairs(var_132_12) do
			if var_0_1.CustomCheckbox(iter_132_3.text, iter_132_3.checkbox_setting, var_0_18.settings[iter_132_3.inisetting]) then
				var_0_18.settings[iter_132_3.inisetting] = iter_132_3.checkbox_setting[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			if iter_132_3.inisettings ~= "off_mat_notes" then
				var_0_1.SetCursorPosX(345)
			end
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 2 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)

		local var_132_13 = (598 - var_0_1.CalcTextSize(var_0_14("Админ ПО")).x) / 2 + 222

		var_0_1.SetCursorPosX(var_132_13)
		var_0_1.Text(var_0_14("Админ ПО"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab1Cheat", var_0_1.ImVec2(293, 222), true)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Checkbox_airbrake", var_0_26.checkbox_airbrake) then
			var_0_18.settings.airbrake = var_0_26.checkbox_airbrake[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.airbrake, var_0_14("Airbrake"))

		if var_0_18.settings.airbrake then
			var_0_1.SameLine()
			var_0_1.CustomTextQuestion("airbrake_help_hint", var_0_14("ЛКМ - увеличить скорость\nПКМ - уменить скорость"))
			var_0_1.SameLine(175)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_airbrake", var_0_21.bind_airbrake, {}, 100) then
				var_0_18.binds.bind_airbrake = encodeJson(var_0_21.bind_airbrake.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 45)

			if var_0_1.ToggleButton("##Checkbox_airbrake_clear", var_0_26.checkbox_airbrake_clear) then
				var_0_18.settings.airbrake_clear = var_0_26.checkbox_airbrake_clear[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.airbrake_clear, var_0_14("Сбивать скорость"))
			var_0_1.CustomTextQuestion("help_airbrk", var_0_14("Всегда при активации устанавливает скорость Airbrake на 4."))
		end

		if var_0_1.ToggleButton("##Checkbox_clickwarp", var_0_26.checkbox_clickwarp) then
			var_0_18.settings.clickwarp = var_0_26.checkbox_clickwarp[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.clickwarp, var_0_14("Clickwarp"))

		if var_0_1.ToggleButton("##Checkbox_collision", var_0_26.checkbox_collision) then
			if var_0_29.collision_active then
				if var_0_18.settings.collision_vehs then
					for iter_132_4, iter_132_5 in ipairs(getAllVehicles()) do
						if doesVehicleExist(iter_132_5) then
							setCarCollision(iter_132_5, true)
						end
					end
				end

				if var_0_18.settings.collision_objects then
					for iter_132_6, iter_132_7 in ipairs(getAllObjects()) do
						if doesObjectExist(iter_132_7) then
							setObjectCollision(iter_132_7, true)
						end
					end
				end

				var_0_29.collision_active = not var_0_29.collision_active

				var_0_108(var_0_14("Коллизия деактивирована!"), 999)
			end

			var_0_18.settings.collision = var_0_26.checkbox_collision[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.collision, var_0_14("Коллизия"))

		if var_0_18.settings.collision then
			var_0_1.SameLine(175)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_collision", var_0_21.bind_collision, {}, 100) then
				var_0_18.binds.bind_collision = encodeJson(var_0_21.bind_collision.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_collision_players", var_0_26.checkbox_collision_players) then
				var_0_18.settings.collision_players = var_0_26.checkbox_collision_players[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.collision_players, var_0_14("Коллизия на игроков"))
			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_collision_vehs", var_0_26.checkbox_collision_vehs) then
				if var_0_18.settings.collision_vehs then
					for iter_132_8, iter_132_9 in ipairs(getAllVehicles()) do
						if doesVehicleExist(iter_132_9) then
							setCarCollision(iter_132_9, true)
						end
					end
				end

				var_0_18.settings.collision_vehs = var_0_26.checkbox_collision_vehs[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.collision_vehs, var_0_14("Коллизия на транспорт"))
			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_collision_objects", var_0_26.checkbox_collision_objects) then
				if var_0_18.settings.collision_objects then
					for iter_132_10, iter_132_11 in ipairs(getAllObjects()) do
						if doesObjectExist(iter_132_11) then
							setObjectCollision(iter_132_11, true)
						end
					end
				end

				var_0_18.settings.collision_objects = var_0_26.checkbox_collision_objects[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.collision_objects, var_0_14("Коллизия на объекты"))
		end

		if var_0_1.ToggleButton("##Checkbox_gm_ped", var_0_26.checkbox_gm_ped) then
			var_0_18.settings.gm_ped = var_0_26.checkbox_gm_ped[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.gm_ped, var_0_14("God Mod"))

		if var_0_1.ToggleButton("##Checkbox_nosurf", var_0_26.checkbox_nosurf) then
			var_0_18.settings.nosurf = var_0_26.checkbox_nosurf[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.nosurf, var_0_14("No Surf Vehicle"))

		if var_0_1.ToggleButton("##Checkbox_infinity_ammo", var_0_26.checkbox_infinity_ammo) then
			var_0_18.settings.infinity_ammo = var_0_26.checkbox_infinity_ammo[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.infinity_ammo, var_0_14("Бесконечные патроны"))

		if var_0_1.ToggleButton("##Checkbox_nospread", var_0_26.checkbox_nospread) then
			var_0_18.settings.nospread = var_0_26.checkbox_nospread[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.nospread, var_0_14("NoSpread"))

		if var_0_1.ToggleButton("##Checkbox_fisheye", var_0_26.checkbox_fisheye) then
			var_0_18.settings.fisheye = var_0_26.checkbox_fisheye[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.fisheye then
			var_0_1.TextNew(var_0_14("Рыбий глаз"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 46)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderFloat("##fisheye_vision", var_0_27.fisheye_vision, 30, 160) then
				var_0_18.cheats.fisheye = var_0_27.fisheye_vision[0]

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.TextDisabledNew(var_0_14("Рыбий глаз"))
		end

		if var_0_1.ToggleButton("##Checkbox_fast_run", var_0_26.checkbox_fast_run) then
			var_0_18.settings.fast_run = var_0_26.checkbox_fast_run[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.fast_run then
			var_0_1.TextNew(var_0_14("Fast Run:"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 46)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderFloat("##speed_fastrun", var_0_27.speed_fastrun, 0.1, 10) then
				var_0_18.cheats.fast_run = var_0_27.speed_fastrun[0]

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.TextDisabledNew(var_0_14("Fast Run"))
		end

		if var_0_1.ToggleButton("##Checkbox_fast_fire", var_0_26.checkbox_fast_fire) then
			var_0_18.settings.fast_fire = var_0_26.checkbox_fast_fire[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.fast_fire then
			var_0_1.TextNew(var_0_14("Fast Fire:"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 46)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderFloat("##speed_fastfire", var_0_27.speed_fastfire, 0.1, 50) then
				var_0_18.cheats.fast_fire = var_0_27.speed_fastfire[0]

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.TextDisabledNew(var_0_14("Fast Fire"))
		end

		if var_0_1.ToggleButton("##Checkbox_antistan", var_0_26.checkbox_antistan) then
			var_0_18.settings.antistan = var_0_26.checkbox_antistan[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.antistan, var_0_14("Антистан"))

		if var_0_1.ToggleButton("##Checkbox_invis", var_0_26.checkbox_invis) then
			var_0_18.settings.invis = var_0_26.checkbox_invis[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.invis, var_0_14("Невидимка"))

		if var_0_18.settings.invis then
			var_0_1.SameLine(175)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_invis", var_0_21.bind_invis, {}, 100) then
				var_0_18.binds.bind_invis = encodeJson(var_0_21.bind_invis.v)

				var_0_3.save(var_0_18, var_0_17)
			end
		end

		var_0_1.EndChild()
		var_0_1.SameLine(0, 4)
		var_0_1.BeginChild("##Tab2Cheat", var_0_1.ImVec2(293, 222), true)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Checkbox_speedhack", var_0_26.checkbox_speedhack) then
			var_0_18.settings.speedhack = var_0_26.checkbox_speedhack[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.speedhack then
			var_0_1.TextNew(var_0_14("Speedhack"))
			var_0_1.CustomTextQuestion("help_speedhack", var_0_14("Активация - ALT"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 46)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderFloat("##speedhack_speed", var_0_27.speedhack_speed, 1, 20) then
				var_0_18.cheats.speedhack_speed = var_0_27.speedhack_speed[0]

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.TextDisabledNew(var_0_14("Speedhack"))
		end

		if var_0_1.ToggleButton("##Checkbox_flycar", var_0_26.checkbox_flycar) then
			var_0_18.settings.flycar = var_0_26.checkbox_flycar[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.flycar, var_0_14("FlyCar"))
		var_0_1.CustomTextQuestion("help_flycar", var_0_14("Активация - 1 + 2\nДеактивация - 3\nБыстро остановиться - S + Space\nКоллизия - С\nПКМ - наклоняет авто вперед, ЛКМ - наклоняет авто назад"))

		if var_0_1.ToggleButton("##Checkbox_gm_car", var_0_26.checkbox_gm_car) then
			var_0_18.settings.gm_car = var_0_26.checkbox_gm_car[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.gm_car, var_0_14("GM Car"))

		if var_0_1.ToggleButton("##Checkbox_tank_mode", var_0_26.checkbox_tank_mode) then
			var_0_18.settings.tank_mode = var_0_26.checkbox_tank_mode[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.tank_mode, var_0_14("Tank mode"))

		if var_0_1.ToggleButton("##Checkbox_gm_wheel", var_0_26.checkbox_gm_wheel) then
			var_0_18.settings.gm_wheel = var_0_26.checkbox_gm_wheel[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.gm_wheel, var_0_14("GM на колёса"))

		if var_0_1.ToggleButton("##Checkbox_anti_eject", var_0_26.checkbox_anti_eject) then
			var_0_18.settings.anti_eject = var_0_26.checkbox_anti_eject[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.anti_eject, var_0_14("Anti Eject"))

		if var_0_1.ToggleButton("##Checkbox_fast_exit", var_0_26.checkbox_fast_exit) then
			var_0_18.settings.fast_exit = var_0_26.checkbox_fast_exit[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.fast_exit, var_0_14("Быстрый выход"))

		if var_0_18.settings.fast_exit then
			var_0_1.SameLine(175)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_fast_exit", var_0_21.bind_fast_exit, {}, 100) then
				var_0_18.binds.bind_fast_exit = encodeJson(var_0_21.bind_fast_exit.v)

				var_0_3.save(var_0_18, var_0_17)
			end
		end

		if var_0_1.ToggleButton("##Checkbox_nitro", var_0_26.checkbox_nitro) then
			var_0_18.settings.nitro = var_0_26.checkbox_nitro[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.nitro, var_0_14("Nitro"))

		if var_0_18.settings.nitro then
			var_0_1.SameLine(175)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_nitro", var_0_21.bind_nitro, {}, 100) then
				var_0_18.binds.bind_nitro = encodeJson(var_0_21.bind_nitro.v)

				var_0_3.save(var_0_18, var_0_17)
			end
		end

		if var_0_1.ToggleButton("##Checkbox_nobike", var_0_26.checkbox_nobike) then
			var_0_18.settings.nobike = var_0_26.checkbox_nobike[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.nobike, var_0_14("NoBike"))

		if var_0_1.ToggleButton("##Checkbox_driveunderwater", var_0_26.checkbox_driveunderwater) then
			var_0_18.settings.driveunderwater = var_0_26.checkbox_driveunderwater[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.driveunderwater, var_0_14("Езда под водой"))

		if var_0_1.ToggleButton("##Checkbox_driveoffengine", var_0_26.checkbox_driveoffengine) then
			var_0_18.settings.driveoffengine = var_0_26.checkbox_driveoffengine[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.driveoffengine, var_0_14("Езда с заглушённым двигателем"))

		if var_0_1.ToggleButton("##Checkbox_strobes", var_0_26.checkbox_strobes) then
			var_0_18.settings.strobes = var_0_26.checkbox_strobes[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.strobes, var_0_14("Стробоскопы"))

		if var_0_18.settings.strobes then
			var_0_1.SameLine(175)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_strobes", var_0_21.bind_strobes, {}, 100) then
				var_0_18.binds.bind_strobes = encodeJson(var_0_21.bind_strobes.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 46)
			var_0_1.SetNextItemWidth(100)

			if var_0_1.InputInt(var_0_14("##StrobSpeedCar"), var_0_27.strob_speed) then
				if var_0_27.strob_speed[0] < 0 then
					var_0_27.strob_speed = var_0_15.int(0)

					var_0_108(var_0_14("Допустимы значения скорости мигания фар строго больше 0 мс."), 1111)
				end

				var_0_18.settings.strob_speed = var_0_27.strob_speed[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.TextNew(var_0_14("Скорость мигания"))
		end

		var_0_1.EndChild()
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab3Cheat", var_0_1.ImVec2(590, 314), true)

		if var_0_1.Button(var_0_14("Редактор гетто зон##btn"), var_0_1.ImVec2(570, 25)) then
			var_0_43.ghettoWinState[0] = not var_0_43.ghettoWinState[0]
		end

		if var_0_1.ToggleButton("##Checkbox_far_chat", var_0_26.checkbox_far_chat) then
			var_0_18.settings.far_chat = var_0_26.checkbox_far_chat[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.far_chat, var_0_14("Дальний чат"))

		if var_0_18.settings.far_chat then
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_far chat", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с чатом и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_far_chat = true
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_timestamp_fc", var_0_26.checkbox_far_chat_timestamp) then
				var_0_18.settings.far_chat_timestamp = var_0_26.checkbox_far_chat_timestamp[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.far_chat_timestamp, var_0_14("Показывать время перед сообщениями"))
			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Количество строк дальнего чата:"))
			var_0_1.SetCursorPosX(50)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderInt("##liness_far_chat", var_0_27.far_chat_lines, 1, 35) then
				while #var_0_34.far_chat_messages >= var_0_18.settings.far_chat_lines do
					table.remove(var_0_34.far_chat_messages, 1)
				end

				var_0_18.settings.far_chat_lines = var_0_27.far_chat_lines[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Размер шрифта дальнего чата:"))
			var_0_1.SetCursorPosX(50)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderInt("##fontsize_far_chat", var_0_27.far_chat_fontsize, 11, 22) then
				var_0_18.settings.far_chat_fontsize = var_0_27.far_chat_fontsize[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Цвет надписи \"MATools | Дальний чат\":"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(50)

			if var_0_1.ColorEdit4(var_0_14("##Цвет far chat"), var_0_59.clr_far_chat) then
				var_0_18.color_editor.clr_far_chat = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_far_chat[0], var_0_59.clr_far_chat[1], var_0_59.clr_far_chat[2], var_0_59.clr_far_chat[3]))

				var_0_3.save(var_0_18, var_0_17)
			end
		end

		if var_0_1.ToggleButton("##Checkbox_monitoring", var_0_26.checkbox_monitoring) then
			var_0_18.settings.monitoring = var_0_26.checkbox_monitoring[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.monitoring, var_0_14("Мониторинг подключений и отключений"))

		if var_0_18.settings.monitoring then
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_monitoring", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с мониторингом и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_monitoring = true
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_timestamp_monitoring", var_0_26.checkbox_monitoring_timestamp) then
				var_0_18.settings.monitoring_timestamp = var_0_26.checkbox_monitoring_timestamp[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.monitoring_timestamp, var_0_14("Показывать время подключений и отключений"))
			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Количество строк мониторинга:"))
			var_0_1.SetCursorPosX(50)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderInt("##liness_monitoring", var_0_27.monitoring_lines, 1, 50) then
				while #var_0_34.monitoring_log >= var_0_18.settings.monitoring_lines do
					table.remove(var_0_34.monitoring_log, 1)
				end

				var_0_18.settings.monitoring_lines = var_0_27.monitoring_lines[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Размер шрифта мониторинга:"))
			var_0_1.SetCursorPosX(50)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderInt("##fontsize_monitoring", var_0_27.monitoring_fontsize, 11, 22) then
				var_0_18.settings.monitoring_fontsize = var_0_27.monitoring_fontsize[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Цвет надписи \"MATools | Мониторинг\":"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(50)

			if var_0_1.ColorEdit4(var_0_14("##Цвет monitoring"), var_0_59.clr_monitoring) then
				var_0_18.color_editor.clr_monitoring = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_monitoring[0], var_0_59.clr_monitoring[1], var_0_59.clr_monitoring[2], var_0_59.clr_monitoring[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Цвет подключений:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(50)

			if var_0_1.ColorEdit4(var_0_14("##Цвет monitoring join"), var_0_59.clr_monitoring_join) then
				var_0_18.color_editor.clr_monitoring_join = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_monitoring_join[0], var_0_59.clr_monitoring_join[1], var_0_59.clr_monitoring_join[2], var_0_59.clr_monitoring_join[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Цвет выхода из игры самостоятельно:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(50)

			if var_0_1.ColorEdit4(var_0_14("##Цвет monitoring quit1"), var_0_59.clr_monitoring_quit1) then
				var_0_18.color_editor.clr_monitoring_quit1 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_monitoring_quit1[0], var_0_59.clr_monitoring_quit1[1], var_0_59.clr_monitoring_quit1[2], var_0_59.clr_monitoring_quit1[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Цвет выхода из игры краш/потеря связи:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(50)

			if var_0_1.ColorEdit4(var_0_14("##Цвет monitoring quit0"), var_0_59.clr_monitoring_quit0) then
				var_0_18.color_editor.clr_monitoring_quit0 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_monitoring_quit0[0], var_0_59.clr_monitoring_quit0[1], var_0_59.clr_monitoring_quit0[2], var_0_59.clr_monitoring_quit0[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.TextNew(var_0_14("Цвет выхода из игры кик/бан:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(50)

			if var_0_1.ColorEdit4(var_0_14("##Цвет monitoring quit2"), var_0_59.clr_monitoring_quit2) then
				var_0_18.color_editor.clr_monitoring_quit2 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_monitoring_quit2[0], var_0_59.clr_monitoring_quit2[1], var_0_59.clr_monitoring_quit2[2], var_0_59.clr_monitoring_quit2[3]))

				var_0_3.save(var_0_18, var_0_17)
			end
		end

		if var_0_1.ToggleButton("##Checkbox_wallhack", var_0_26.checkbox_wallhack) then
			var_0_18.settings.wallhack = var_0_26.checkbox_wallhack[0]

			var_0_3.save(var_0_18, var_0_17)

			if var_0_18.settings.wallhack then
				local var_132_14 = sampGetServerSettingsPtr()

				var_0_5.setfloat(var_132_14 + 39, 500)
				var_0_5.setint8(var_132_14 + 47, 0)
				var_0_5.setint8(var_132_14 + 56, 1)
			else
				var_0_29.wh = false

				local var_132_15 = sampGetServerSettingsPtr()

				var_0_5.setfloat(var_132_15 + 39, 50)
				var_0_5.setint8(var_132_15 + 47, 1)
				var_0_5.setint8(var_132_15 + 56, 1)
			end
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.wallhack, var_0_14("Wallhack"))

		if var_0_18.settings.wallhack then
			var_0_1.SameLine(472)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_wallhack", var_0_21.bind_wallhack, {}, 100) then
				var_0_18.binds.bind_wallhack = encodeJson(var_0_21.bind_wallhack.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_wh_startwh", var_0_26.checkbox_auto_start_wallhack) then
				var_0_18.settings.auto_start_wallhack = var_0_26.checkbox_auto_start_wallhack[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.auto_start_wallhack, var_0_14("Автоматическая активация Wallhack'a при входе"))
			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_wallhack_skelet", var_0_26.checkbox_wallhack_skelet) then
				var_0_18.settings.wallhack_skelet = var_0_26.checkbox_wallhack_skelet[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

			if var_0_18.settings.wallhack_skelet then
				var_0_1.TextNew(var_0_14("Скелет игроков(WH):"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##Цвет скелет wh"), var_0_59.wh_skelet_color) then
					var_0_18.color_editor.wh_skelet_color = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.wh_skelet_color[0], var_0_59.wh_skelet_color[1], var_0_59.wh_skelet_color[2], var_0_59.wh_skelet_color[3]))

					var_0_3.save(var_0_18, var_0_17)
				end
			else
				var_0_1.PushFont(norm)
				var_0_1.TextDisabled(var_0_14("Скелет игроков(WH)"))
				var_0_1.PopFont()
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_wallhack_kvadrat", var_0_26.checkbox_wallhack_kvadrat) then
				var_0_18.settings.wallhack_kvadrat = var_0_26.checkbox_wallhack_kvadrat[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

			if var_0_18.settings.wallhack_kvadrat then
				var_0_1.PushFont(norm)
				var_0_1.Text(var_0_14("Квадрат под игроком(WH):"))
				var_0_1.PopFont()
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##Цвет квадрат wh"), var_0_59.wh_kvadrat_color) then
					var_0_18.color_editor.wh_kvadrat_color = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.wh_kvadrat_color[0], var_0_59.wh_kvadrat_color[1], var_0_59.wh_kvadrat_color[2], var_0_59.wh_kvadrat_color[3]))

					var_0_3.save(var_0_18, var_0_17)
				end
			else
				var_0_1.PushFont(norm)
				var_0_1.TextDisabled(var_0_14("Квадрат под игроком(WH)"))
				var_0_1.PopFont()
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_wallhack_line", var_0_26.checkbox_wallhack_line) then
				var_0_18.settings.wallhack_line = var_0_26.checkbox_wallhack_line[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

			if var_0_18.settings.wallhack_line then
				var_0_1.TextNew(var_0_14("Линии к игрокам(WH):"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##Цвет линии wh"), var_0_59.wh_line_color) then
					var_0_18.color_editor.wh_line_color = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.wh_line_color[0], var_0_59.wh_line_color[1], var_0_59.wh_line_color[2], var_0_59.wh_line_color[3]))

					var_0_3.save(var_0_18, var_0_17)
				end
			else
				var_0_1.TextDisabledNew(var_0_14("Линии к игрокам(WH)"))
			end
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

		if var_0_1.ToggleButton("##Checkbox_obj_wh", var_0_26.checkbox_obj_wh) then
			var_0_18.settings.obj_wh = var_0_26.checkbox_obj_wh[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.obj_wh, var_0_14("Wallhack objects"))

		if var_0_18.settings.obj_wh then
			var_0_1.SameLine(472)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_obj_wh", var_0_21.bind_obj_wh, {}, 100) then
				var_0_18.binds.bind_obj_wh = encodeJson(var_0_21.bind_obj_wh.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextNew(var_0_14("Цвет текста информации об объекте:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(50)

			if var_0_1.ColorEdit4(var_0_14("##Цвет текста obj wh"), var_0_59.obj_wh_text_color) then
				var_0_18.color_editor.obj_wh_text_color = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.obj_wh_text_color[0], var_0_59.obj_wh_text_color[1], var_0_59.obj_wh_text_color[2], var_0_59.obj_wh_text_color[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_obj_wh_line", var_0_26.checkbox_obj_wh_line) then
				var_0_18.settings.obj_wh_line = var_0_26.checkbox_obj_wh_line[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

			if var_0_18.settings.obj_wh_line then
				var_0_1.TextNew(var_0_14("Линии к объектам:"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##Цвет линии obj wh"), var_0_59.obj_wh_line_color) then
					var_0_18.color_editor.obj_wh_line_color = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.obj_wh_line_color[0], var_0_59.obj_wh_line_color[1], var_0_59.obj_wh_line_color[2], var_0_59.obj_wh_line_color[3]))

					var_0_3.save(var_0_18, var_0_17)
				end
			else
				var_0_1.TextDisabledNew(var_0_14("Линии к объектам"))
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_obj_wh_radius", var_0_26.checkbox_obj_wh_radius) then
				var_0_18.settings.obj_wh_radius = var_0_26.checkbox_obj_wh_radius[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_18.settings.obj_wh_radius then
				var_0_1.TextNew(var_0_14("Показывать объекты в радиусе:"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(160)

				if var_0_1.InputInt("##obj vh radius", var_0_27.radius_obj_wh) then
					var_0_18.settings.radius_obj_wh = var_0_27.radius_obj_wh[0]

					var_0_3.save(var_0_18, var_0_17)
				end
			else
				var_0_1.TextDisabledNew(var_0_14("Показывать объекты в радиусе"))
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_obj_wh_all", var_0_26.checkbox_obj_wh_all) then
				if var_0_18.settings.obj_wh_conditions then
					var_0_26.checkbox_obj_wh_conditions[0] = not var_0_26.checkbox_obj_wh_conditions[0]
					var_0_18.settings.obj_wh_conditions = var_0_26.checkbox_obj_wh_conditions[0]
				end

				var_0_18.settings.obj_wh_all = var_0_26.checkbox_obj_wh_all[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_18.settings.obj_wh_all then
				var_0_1.TextNew(var_0_14("Показать все объекты:"))
				var_0_1.SetCursorPosX(95)

				if var_0_1.ToggleButton("##Checkbox_obj_wh_all_ignore", var_0_26.checkbox_obj_wh_all_ignore) then
					var_0_18.settings.obj_wh_all_ignore = var_0_26.checkbox_obj_wh_all_ignore[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine()
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

				if var_0_18.settings.obj_wh_all_ignore then
					var_0_1.TextNew(var_0_14("Игнорировать объекты:"))
					var_0_1.SetCursorPosX(140)
					var_0_1.BeginChild("##obj_wh_all_ignore", var_0_1.ImVec2(255, 200), true)

					for iter_132_12, iter_132_13 in ipairs(var_0_106) do
						if var_0_1.ToggleButton("##ignore" .. tostring(iter_132_12), var_0_15.bool(var_0_18.ignore_objects["model" .. iter_132_13.model])) then
							var_0_18.ignore_objects["model" .. iter_132_13.model] = not var_0_18.ignore_objects["model" .. iter_132_13.model]

							var_0_3.save(var_0_18, var_0_17)
						end

						var_0_1.SameLine(43)
						var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 3)

						local var_132_16 = iter_132_13.model

						if iter_132_13.name ~= "" then
							var_132_16 = iter_132_13.model .. " (" .. iter_132_13.name .. ")"
						end

						if var_0_1.Button(var_132_16 .. "##ignore", var_0_1.ImVec2(205, 20)) then
							-- block empty
						end

						if var_0_1.IsItemHovered() and var_0_1.IsMouseDoubleClicked(0) then
							var_0_108(var_0_14("Объект ") .. iter_132_13.model .. var_0_14(" успешно удалён из списка игнорируемых объектов."), 1111)
							table.remove(var_0_106, iter_132_12)
							saveJsonFile(var_0_99, var_0_106)

							var_0_18.ignore_objects["model" .. iter_132_13.model] = nil

							var_0_3.save(var_0_18, var_0_17)
						end
					end

					var_0_1.EndChild()
					var_0_1.SameLine()
					var_0_1.SetNextItemWidth(172)
					var_0_1.InputTextWithHint("##addobjignoremodelwh", var_0_14("Введите модель объекта"), var_0_30.add_ignore_object_wh_model, 256)
					var_0_1.SetCursorPosX(400)
					var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 178)
					var_0_1.SetNextItemWidth(172)
					var_0_1.InputTextWithHint("##addobjignorenamewh", var_0_14("Введите название объекта"), var_0_30.add_ignore_object_wh_name, 256)
					var_0_1.SetCursorPosX(400)

					if var_0_1.Button(var_0_14("Добавить объект##ignore"), var_0_1.ImVec2(172, 25)) then
						if var_0_2.string(var_0_30.add_ignore_object_wh_model) ~= "" then
							for iter_132_14, iter_132_15 in ipairs(var_0_106) do
								if var_0_2.string(var_0_30.add_ignore_object_wh_model) == iter_132_15.model then
									var_0_108(var_0_14("У Вас уже есть в списке игнорируемых объектов объект ") .. iter_132_15.model .. "!", 1200)

									var_0_54.showErrorWhObjects_ignore = true

									break
								end
							end

							if not var_0_54.showErrorWhObjects_ignore then
								table.insert(var_0_106, {
									name = var_0_2.string(var_0_30.add_ignore_object_wh_name),
									model = var_0_2.string(var_0_30.add_ignore_object_wh_model)
								})
								saveJsonFile(var_0_99, var_0_106)

								var_0_18.ignore_objects["model" .. var_0_2.string(var_0_30.add_ignore_object_wh_model)] = true

								var_0_3.save(var_0_18, var_0_17)
								var_0_108(var_0_14("Объект ") .. var_0_2.string(var_0_30.add_ignore_object_wh_model) .. var_0_14(" успешно добавлен в список игнорируемых объектов!"), 1000)

								var_0_30.add_ignore_object_wh_name = var_0_15.char[256]()
								var_0_30.add_ignore_object_wh_model = var_0_15.char[256]()
							else
								var_0_54.showErrorWhObjects_ignore = false
							end
						else
							var_0_108(var_0_14("Вы не ввели модель объекта!"), 800)
						end
					end

					var_0_1.SetCursorPosX(400)
					var_0_1.TextDisabledNew(var_0_14("Кликните дважды по"))
					var_0_1.SetCursorPosX(400)
					var_0_1.TextDisabledNew(var_0_14("объекту из списка, чтобы"))
					var_0_1.SetCursorPosX(400)
					var_0_1.TextDisabledNew(var_0_14("удалить его из списка."))
					var_0_1.SetCursorPosX(400)
					var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 31.5)

					if var_0_1.Button(var_0_31.WhObjects_ignoreList, var_0_1.ImVec2(172, 25)) then
						if var_0_31.WhObjects_ignoreList == var_0_14("Очистить список") then
							local function var_132_17()
								var_0_31.WhObjects_ignoreList = var_0_14("Вы уверены?")

								wait(2000)

								var_0_31.WhObjects_ignoreList = var_0_14("Очистить список")
							end

							lua_thread.create(var_132_17)
						elseif var_0_31.WhObjects_ignoreList == var_0_14("Вы уверены?") then
							for iter_132_16, iter_132_17 in ipairs(var_0_106) do
								var_0_18.ignore_objects["model" .. iter_132_17.model] = nil

								var_0_3.save(var_0_18, var_0_17)
							end

							var_0_106 = {}

							saveJsonFile(var_0_99, var_0_106)
							var_0_108(var_0_14("Вы успешно очистили весь список игнорируемых объектов!"), 1000)
						end
					end
				else
					var_0_1.TextDisabledNew(var_0_14("Игнорировать объекты"))
				end
			else
				var_0_1.TextDisabledNew(var_0_14("Показать все объекты"))
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton("##Checkbox_obj_wh_conditions", var_0_26.checkbox_obj_wh_conditions) then
				if var_0_18.settings.obj_wh_all then
					var_0_26.checkbox_obj_wh_all[0] = not var_0_26.checkbox_obj_wh_all[0]
					var_0_18.settings.obj_wh_all = var_0_26.checkbox_obj_wh_all[0]
				end

				var_0_18.settings.obj_wh_conditions = var_0_26.checkbox_obj_wh_conditions[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_18.settings.obj_wh_conditions then
				var_0_1.TextNew(var_0_14("Показать объекты по условию:"))
				var_0_1.SetCursorPosX(95)

				if var_0_1.ToggleButton("##Checkbox_obj_wh_conditions_show_name", var_0_26.checkbox_obj_wh_conditions_show_name) then
					var_0_18.settings.obj_wh_conditions_show_name = var_0_26.checkbox_obj_wh_conditions_show_name[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine()
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)
				var_0_1.TextAndDisabled(var_0_18.settings.obj_wh_conditions_show_name, var_0_14("Показывать название объекта(Ваше)"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
				var_0_1.SetCursorPosX(95)
				var_0_1.BeginChild("##obj_wh_conditions", var_0_1.ImVec2(300, 200), true)

				for iter_132_18, iter_132_19 in ipairs(var_0_105) do
					if var_0_1.ToggleButton("##" .. tostring(iter_132_18), var_0_15.bool(var_0_18.active_objects["model" .. iter_132_19.model])) then
						var_0_18.active_objects["model" .. iter_132_19.model] = not var_0_18.active_objects["model" .. iter_132_19.model]

						var_0_3.save(var_0_18, var_0_17)
					end

					var_0_1.SameLine(43)
					var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 3)

					local var_132_18 = iter_132_19.model

					if iter_132_19.name ~= "" then
						var_132_18 = iter_132_19.model .. " (" .. iter_132_19.name .. ")"
					end

					if var_0_1.Button(var_132_18, var_0_1.ImVec2(250, 20)) then
						-- block empty
					end

					if var_0_1.IsItemHovered() and var_0_1.IsMouseDoubleClicked(0) then
						var_0_108(var_0_14("Объект ") .. iter_132_19.model .. var_0_14(" успешно удалён из списка."), 1111)
						table.remove(var_0_105, iter_132_18)
						saveJsonFile(var_0_98, var_0_105)

						var_0_18.active_objects["model" .. iter_132_19.model] = nil

						var_0_3.save(var_0_18, var_0_17)
					end
				end

				var_0_1.EndChild()
				var_0_1.SameLine()
				var_0_1.SetNextItemWidth(172)
				var_0_1.InputTextWithHint("##addobjmodelwh", var_0_14("Введите модель объекта"), var_0_30.add_object_wh_model, 256)
				var_0_1.SetCursorPosX(400)
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 178)
				var_0_1.SetNextItemWidth(172)
				var_0_1.InputTextWithHint("##addobjnamewh", var_0_14("Введите название объекта"), var_0_30.add_object_wh_name, 256)
				var_0_1.SetCursorPosX(400)

				if var_0_1.Button(var_0_14("Добавить объект"), var_0_1.ImVec2(172, 25)) then
					if var_0_2.string(var_0_30.add_object_wh_model) ~= "" then
						for iter_132_20, iter_132_21 in ipairs(var_0_105) do
							if var_0_2.string(var_0_30.add_object_wh_model) == iter_132_21.model then
								var_0_108(var_0_14("У Вас уже есть в списке объект ") .. iter_132_21.model .. "!", 1200)

								var_0_54.showErrorWhObjects = true

								break
							end
						end

						if not var_0_54.showErrorWhObjects then
							table.insert(var_0_105, {
								name = var_0_2.string(var_0_30.add_object_wh_name),
								model = var_0_2.string(var_0_30.add_object_wh_model)
							})
							saveJsonFile(var_0_98, var_0_105)

							var_0_18.active_objects["model" .. var_0_2.string(var_0_30.add_object_wh_model)] = true

							var_0_3.save(var_0_18, var_0_17)
							var_0_108(var_0_14("Объект ") .. var_0_2.string(var_0_30.add_object_wh_model) .. var_0_14(" успешно добавлен в список!"), 1000)

							var_0_30.add_object_wh_name = var_0_15.char[256]()
							var_0_30.add_object_wh_model = var_0_15.char[256]()
						else
							var_0_54.showErrorWhObjects = false
						end
					else
						var_0_108(var_0_14("Вы не ввели модель объекта!"), 800)
					end
				end

				var_0_1.SetCursorPosX(400)
				var_0_1.TextDisabledNew(var_0_14("Кликните дважды по"))
				var_0_1.SetCursorPosX(400)
				var_0_1.TextDisabledNew(var_0_14("объекту из списка, чтобы"))
				var_0_1.SetCursorPosX(400)
				var_0_1.TextDisabledNew(var_0_14("удалить его из списка."))
				var_0_1.SetCursorPosX(400)
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 31.5)

				if var_0_1.Button(var_0_31.WhObjectsList, var_0_1.ImVec2(172, 25)) then
					if var_0_31.WhObjectsList == var_0_14("Очистить список") then
						local function var_132_19()
							var_0_31.WhObjectsList = var_0_14("Вы уверены?")

							wait(2000)

							var_0_31.WhObjectsList = var_0_14("Очистить список")
						end

						lua_thread.create(var_132_19)
					elseif var_0_31.WhObjectsList == var_0_14("Вы уверены?") then
						for iter_132_22, iter_132_23 in ipairs(var_0_105) do
							var_0_18.active_objects["model" .. iter_132_23.model] = nil

							var_0_3.save(var_0_18, var_0_17)
						end

						var_0_105 = {}

						saveJsonFile(var_0_98, var_0_105)
						var_0_108(var_0_14("Вы успешно очистили весь список объектов!"), 1000)
					end
				end
			else
				var_0_1.TextDisabledNew(var_0_14("Показать объекты по условию"))
			end
		end

		if var_0_1.ToggleButton("##Checkbox_traisers", var_0_26.checkbox_traisers) then
			var_0_18.settings.traisers = var_0_26.checkbox_traisers[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.traisers, var_0_14("Трейсера"))

		if var_0_18.settings.traisers then
			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton(var_0_14("##Отрисовка своих пуль"), var_0_61.my_bullets.draw) then
				var_0_18.my_bullets.draw = var_0_61.my_bullets.draw[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.my_bullets.draw, var_0_14("Отрисовка своих пуль"))

			if var_0_18.my_bullets.draw then
				var_0_1.SetCursorPosX(95)
				var_0_1.TextNew(var_0_14("Попадание по игроку: "))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##mySettings__Player"), var_0_61.my_bullets.col_vec4.ped) then
					var_0_18.my_bullets.col_vec4_ped = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_61.my_bullets.col_vec4.ped[0], var_0_61.my_bullets.col_vec4.ped[1], var_0_61.my_bullets.col_vec4.ped[2], var_0_61.my_bullets.col_vec4.ped[3]))

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosX(95)
				var_0_1.TextNew(var_0_14("Попадание по машине: "))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##mySettings__Car"), var_0_61.my_bullets.col_vec4.car) then
					var_0_18.my_bullets.col_vec4_car = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_61.my_bullets.col_vec4.car[0], var_0_61.my_bullets.col_vec4.car[1], var_0_61.my_bullets.col_vec4.car[2], var_0_61.my_bullets.col_vec4.car[3]))

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosX(95)
				var_0_1.TextNew(var_0_14("Попадание по статическому объекту: "))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##mySettings__Stats"), var_0_61.my_bullets.col_vec4.stats) then
					var_0_18.my_bullets.col_vec4_stats = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_61.my_bullets.col_vec4.stats[0], var_0_61.my_bullets.col_vec4.stats[1], var_0_61.my_bullets.col_vec4.stats[2], var_0_61.my_bullets.col_vec4.stats[3]))

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosX(95)
				var_0_1.TextNew(var_0_14("Попадание по динамическому объекту: "))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##mySettings__Dynam"), var_0_61.my_bullets.col_vec4.dynam) then
					var_0_18.my_bullets.col_vec4_dynam = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_61.my_bullets.col_vec4.dynam[0], var_0_61.my_bullets.col_vec4.dynam[1], var_0_61.my_bullets.col_vec4.dynam[2], var_0_61.my_bullets.col_vec4.dynam[3]))

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 3)
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(130)

				if var_0_1.DragFloat(var_0_14("##Время задержки трейсера mySettings"), var_0_61.my_bullets.timer, 0.01, 0.01, 15, var_0_14("%.2f сек")) then
					var_0_18.my_bullets.timer = var_0_61.my_bullets.timer[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine(0, 13)
				var_0_1.TextNew(var_0_14("Время задержки трейсера"))
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(130)

				if var_0_1.DragFloat(var_0_14("##Время появления до попадания mySettings"), var_0_61.my_bullets.transition, 0.01, 0, 4, var_0_14("%.2f сек")) then
					var_0_18.my_bullets.transition = var_0_61.my_bullets.transition[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine(0, 13)
				var_0_1.TextNew(var_0_14("Время появления до попадания"))
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(130)

				if var_0_1.DragFloat(var_0_14("##Шаг исчезновtния mySettings"), var_0_61.my_bullets.step_alpha, 0.001, 0.001, 0.5, var_0_14("%.3f шаг")) then
					var_0_18.my_bullets.step_alpha = var_0_61.my_bullets.step_alpha[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine(0, 13)
				var_0_1.TextNew(var_0_14("Шаг исчезновения"))
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(130)

				if var_0_1.DragFloat(var_0_14("##Толщина линий mySettings"), var_0_61.my_bullets.thickness, 0.1, 1, 10, var_0_14("%.2f мм")) then
					var_0_18.my_bullets.thickness = var_0_61.my_bullets.thickness[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine(0, 13)
				var_0_1.TextNew(var_0_14("Толщина линий"))
				var_0_1.SetCursorPosX(95)

				if var_0_1.ToggleButton(var_0_14("##Окончания у линий my"), var_0_61.my_bullets.draw_polygon) then
					var_0_18.my_bullets.draw_polygon = var_0_61.my_bullets.draw_polygon[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine()
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
				var_0_1.TextAndDisabled(var_0_18.my_bullets.draw_polygon, var_0_14("Окончания у линий"))

				if var_0_18.my_bullets.draw_polygon then
					var_0_1.SetCursorPosX(140)
					var_0_1.SetNextItemWidth(130)

					if var_0_1.DragFloat(var_0_14("##Размер окончания трейсера mySettings"), var_0_61.my_bullets.circle_radius, 0.2, 0, 15, var_0_14("%.2f мм")) then
						var_0_18.my_bullets.circle_radius = var_0_61.my_bullets.circle_radius[0]

						var_0_3.save(var_0_18, var_0_17)
					end

					var_0_1.SameLine(0, 13)
					var_0_1.TextNew(var_0_14("Размер окончания трейсера"))
					var_0_1.SetCursorPosX(140)
					var_0_1.SetNextItemWidth(130)

					if var_0_1.DragInt(var_0_14("##Количество углов на окончаниях mySettings"), var_0_61.my_bullets.degree_polygon, 1, 3, 40, var_0_14("%d")) then
						var_0_18.my_bullets.degree_polygon = var_0_61.my_bullets.degree_polygon[0]

						var_0_3.save(var_0_18, var_0_17)
					end

					var_0_1.SameLine(0, 13)
					var_0_1.TextNew(var_0_14("Количество углов на окончаниях"))
				end
			end

			var_0_1.SetCursorPosX(50)

			if var_0_1.ToggleButton(var_0_14("##Отрисовка пуль игроков"), var_0_61.other_bullets.draw) then
				var_0_18.other_bullets.draw = var_0_61.other_bullets.draw[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.other_bullets.draw, var_0_14("Отрисовка пуль игроков"))

			if var_0_18.other_bullets.draw then
				var_0_1.SetCursorPosX(95)
				var_0_1.TextNew(var_0_14("Попадание по игроку:"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##otherSettings__Player"), var_0_61.other_bullets.col_vec4.ped) then
					var_0_18.other_bullets.col_vec4_ped = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_61.other_bullets.col_vec4.ped[0], var_0_61.other_bullets.col_vec4.ped[1], var_0_61.other_bullets.col_vec4.ped[2], var_0_61.other_bullets.col_vec4.ped[3]))

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosX(95)
				var_0_1.TextNew(var_0_14("Попадание по машине:"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##otherSettings__Car"), var_0_61.other_bullets.col_vec4.car) then
					var_0_18.other_bullets.col_vec4_car = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_61.other_bullets.col_vec4.car[0], var_0_61.other_bullets.col_vec4.car[1], var_0_61.other_bullets.col_vec4.car[2], var_0_61.other_bullets.col_vec4.car[3]))

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosX(95)
				var_0_1.TextNew(var_0_14("Попадание по статическому объекту:"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##otherSettings__Stats"), var_0_61.other_bullets.col_vec4.stats) then
					var_0_18.other_bullets.col_vec4_stats = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_61.other_bullets.col_vec4.stats[0], var_0_61.other_bullets.col_vec4.stats[1], var_0_61.other_bullets.col_vec4.stats[2], var_0_61.other_bullets.col_vec4.stats[3]))

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosX(95)
				var_0_1.TextNew(var_0_14("Попадание по динамическому объекту:"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
				var_0_1.SetCursorPosX(95)

				if var_0_1.ColorEdit4(var_0_14("##otherSettings__Dynam"), var_0_61.other_bullets.col_vec4.dynam) then
					var_0_18.other_bullets.col_vec4_dynam = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_61.other_bullets.col_vec4.dynam[0], var_0_61.other_bullets.col_vec4.dynam[1], var_0_61.other_bullets.col_vec4.dynam[2], var_0_61.other_bullets.col_vec4.dynam[3]))

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 3)
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(130)

				if var_0_1.DragFloat(var_0_14("##Время задержки трейсера otherSettings"), var_0_61.other_bullets.timer, 0.01, 0.01, 15, var_0_14("%.2f сек")) then
					var_0_18.other_bullets.timer = var_0_61.other_bullets.timer[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine(0, 13)
				var_0_1.TextNew(var_0_14("Время задержки трейсера"))
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(130)

				if var_0_1.DragFloat(var_0_14("##Время появления до попадания otherSettings"), var_0_61.other_bullets.transition, 0.01, 0, 4, var_0_14("%.2f сек")) then
					var_0_18.other_bullets.transition = var_0_61.other_bullets.transition[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine(0, 13)
				var_0_1.TextNew(var_0_14("Время появления до попадания"))
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(130)

				if var_0_1.DragFloat(var_0_14("##Шаг исчезновtния otherSettings"), var_0_61.other_bullets.step_alpha, 0.001, 0.001, 0.5, var_0_14("%.3f шаг")) then
					var_0_18.other_bullets.step_alpha = var_0_61.other_bullets.step_alpha[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine(0, 13)
				var_0_1.TextNew(var_0_14("Шаг исчезновения"))
				var_0_1.SetCursorPosX(95)
				var_0_1.SetNextItemWidth(130)

				if var_0_1.DragFloat(var_0_14("##Толщина линий otherSettings"), var_0_61.other_bullets.thickness, 0.1, 1, 10, var_0_14("%.2f мм")) then
					var_0_18.other_bullets.thickness = var_0_61.other_bullets.thickness[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine(0, 13)
				var_0_1.TextNew(var_0_14("Толщина линий"))
				var_0_1.SetCursorPosX(95)

				if var_0_1.ToggleButton(var_0_14("##Окончания у линий other"), var_0_61.other_bullets.draw_polygon) then
					var_0_18.other_bullets.draw_polygon = var_0_61.other_bullets.draw_polygon[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SameLine()
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
				var_0_1.TextAndDisabled(var_0_18.other_bullets.draw_polygon, var_0_14("Окончания у линий"))

				if var_0_18.other_bullets.draw_polygon then
					var_0_1.SetCursorPosX(140)
					var_0_1.SetNextItemWidth(130)

					if var_0_1.DragFloat(var_0_14("##Размер окончания трейсера otherSettings"), var_0_61.other_bullets.circle_radius, 0.2, 0, 15, var_0_14("%.2f мм")) then
						var_0_18.other_bullets.circle_radius = var_0_61.other_bullets.circle_radius[0]

						var_0_3.save(var_0_18, var_0_17)
					end

					var_0_1.SameLine(0, 13)
					var_0_1.TextNew(var_0_14("Размер окончания трейсера"))
					var_0_1.SetCursorPosX(140)
					var_0_1.SetNextItemWidth(130)

					if var_0_1.DragInt(var_0_14("##Количество углов на окончаниях otherSettings"), var_0_61.other_bullets.degree_polygon, 1, 3, 40, var_0_14("%d")) then
						var_0_18.other_bullets.degree_polygon = var_0_61.other_bullets.degree_polygon[0]

						var_0_3.save(var_0_18, var_0_17)
					end

					var_0_1.SameLine(0, 13)
					var_0_1.TextNew(var_0_14("Количество углов на окончаниях"))
				end
			end
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 3 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)

		local var_132_20 = (598 - var_0_1.CalcTextSize(var_0_14("Репорт")).x) / 2 + 222

		var_0_1.SetCursorPosX(var_132_20)
		var_0_1.Text(var_0_14("Репорт"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab5report", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Сheckbox_autoopenar", var_0_26.checkbox_autoopenar) then
			var_0_18.settings.autoopenar = var_0_26.checkbox_autoopenar[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.autoopenar, var_0_14("Открытие /ar по клавише"))

		if var_0_18.settings.autoopenar then
			var_0_1.SameLine(486)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_ar_key", var_0_21.bind_ar, {}, 100) then
				var_0_18.binds.bind_ar = encodeJson(var_0_21.bind_ar.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(46)

			if var_0_1.ToggleButton("##Сheckbox_autoopenrep", var_0_26.checkbox_autoopenrep) then
				var_0_18.settings.autoopenrep = var_0_26.checkbox_autoopenrep[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.autoopenrep, var_0_14("Открытие жалобы по клавише"))
		end

		if var_0_1.ToggleButton("##Сheckbox_autolovlya", var_0_26.checkbox_autolovlya) then
			var_0_18.settings.autolovlya = var_0_26.checkbox_autolovlya[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.autolovlya, var_0_14("Автоловля"))

		if var_0_18.settings.autolovlya then
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_autolovlya", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с окошком и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_50.autolovlyaWinState[0] = true
				var_0_28.move_autolovlya = true
			end

			var_0_1.SetCursorPosX(46)
			var_0_1.PushFont(norm)
			var_0_1.Text(var_0_14("Активировать/деактивировать автоловлю"))
			var_0_1.PopFont()
			var_0_1.SameLine(486)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_startstop_autolovlya_key", var_0_21.bind_startstop_autolovlya, {}, 100) then
				var_0_18.binds.bind_startstop_autolovlya = encodeJson(var_0_21.bind_startstop_autolovlya.v)

				var_0_3.save(var_0_18, var_0_17)
			end
		end

		if var_0_1.ToggleButton("##Checkbox_info_rep", var_0_26.checkbox_info_rep) then
			var_0_18.settings.info_rep = var_0_26.checkbox_info_rep[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.info_rep, var_0_14("Информация о репорте после ответа"))

		if var_0_1.ToggleButton("##Checkbox_autocheckrep", var_0_26.checkbox_autocheckrep) then
			var_0_18.settings.autocheckrep = var_0_26.checkbox_autocheckrep[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.autocheckrep, var_0_14("Автопросмотр репорта"))
		var_0_1.CustomTextQuestion("hint_autocheckrep", var_0_14("Автоматически выбирает пункт \"Просмотреть\" в окне выбора действия с репортом."))

		if var_0_1.ToggleButton("##Checkbox_custom_report_window", var_0_26.checkbox_custom_report_window) then
			var_0_18.settings.custom_report_window = var_0_26.checkbox_custom_report_window[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.custom_report_window, var_0_14("Кастомное окно репорта"))
		var_0_1.CustomTextQuestion("hint_custom_report_window", var_0_14("Включить/Выключить кастомное окно репорта MATools. При выключении другие скрипты смогут открывать своё окно репорта."))
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 22)
		var_0_1.TextNew(var_0_14("Ваши кнопки: "))
		var_0_1.Separator()

		local var_132_21 = {
			"Слежу",
			"Спек за автором",
			"ТП к автору",
			"ЖБ форум"
		}

		for iter_132_24, iter_132_25 in ipairs(var_132_21) do
			if var_0_1.Button(var_0_14(iter_132_25), var_0_1.ImVec2(121, 22)) then
				var_0_82.editRepBtns = 1

				if iter_132_25 == "Слежу" then
					var_0_82.content_repButton = var_0_15.char[2048](var_0_18.rep_btns.btn_1)
				elseif iter_132_25 == "Спек за автором" then
					var_0_82.content_repButton = var_0_15.char[2048](var_0_18.rep_btns.btn_2)
				elseif iter_132_25 == "ТП к автору" then
					var_0_82.content_repButton = var_0_15.char[2048](var_0_18.rep_btns.btn_3)
				elseif iter_132_25 == "ЖБ форум" then
					var_0_82.content_repButton = var_0_15.char[2048](var_0_18.rep_btns.btn_4)
				end

				var_0_82.name_repButton = var_0_15.char[256](var_0_14(iter_132_25))
				var_0_82.deleteBtnName_RepButton = "Удалить кнопку"
				var_0_82.repButton_state = "Редактирование"
				var_0_82.editRepButtonWinState[0] = true
			end

			if iter_132_25 ~= "ЖБ форум" then
				var_0_1.SameLine()
			end
		end

		local var_132_22 = 0

		if #var_0_100 % 4 ~= 0 then
			var_132_22 = #var_0_100 % 4
		end

		for iter_132_26, iter_132_27 in ipairs(var_0_100) do
			if tonumber(iter_132_26) > #var_0_100 - var_132_22 then
				if var_132_22 == 1 then
					ButtonWidth = 499
				elseif var_132_22 == 2 then
					ButtonWidth = 247
				elseif var_132_22 == 3 then
					ButtonWidth = 163
				end
			else
				ButtonWidth = 121
			end

			if var_0_1.Button(iter_132_27.name, var_0_1.ImVec2(ButtonWidth, 22)) then
				var_0_82.editRepBtns = 2
				var_0_82.deleteBtnName_RepButton = "Удалить кнопку"
				var_0_82.name_repButton = var_0_15.char[256](iter_132_27.name or "")
				var_0_82.content_repButton = var_0_15.char[2048](iter_132_27.content or "")
				var_0_82.do_repbtns = var_0_15.char[131072](iter_132_27.deystv or "")
				var_0_82.selectedRepButtonIndex = iter_132_26
				var_0_82.repButton_state = "Редактирование"
				var_0_82.editRepButtonWinState[0] = true
			end

			if tonumber(iter_132_26) % 4 ~= 0 and tonumber(iter_132_26) ~= #var_0_100 then
				var_0_1.SameLine()
			end
		end

		local var_132_23 = {
			"Отправить",
			"Переслать в /a",
			"Удалить",
			"Закрыть"
		}

		for iter_132_28, iter_132_29 in ipairs(var_132_23) do
			if var_0_1.Button(var_0_14(iter_132_29), var_0_1.ImVec2(121, 22)) then
				var_0_108(var_0_14("Эту кнопку нельзя редактировать!"), 1111)
			end

			if iter_132_29 ~= "Закрыть" then
				var_0_1.SameLine()
			end
		end

		var_0_1.Separator()
		var_0_1.SetCursorPosX(505)

		local var_132_24 = 50

		if #var_0_100 ~= 0 then
			if #var_0_100 % 4 ~= 0 then
				var_132_24 = math.floor(#var_0_100 / 4) * 26 + 26 + 50
			else
				var_132_24 = math.floor(#var_0_100 / 4) * 26 + 50
			end
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - var_132_24 - 10)

		if var_0_1.Button(var_0_8("plus"), var_0_1.ImVec2(83, var_132_24)) then
			var_0_82.repButton_state = "Создание"
			var_0_82.name_repButton = var_0_15.char[256]()
			var_0_82.content_repButton = var_0_15.char[2048]()
			var_0_82.do_repbtns = var_0_15.char[131072]()
			var_0_82.editRepButtonWinState[0] = true
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 37)

		if var_0_1.ToggleButton("##Сheckbox_custom_spec", var_0_26.checkbox_custom_spec) then
			var_0_18.settings.custom_spec = var_0_26.checkbox_custom_spec[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.custom_spec, var_0_14("Кастомное окно информации в спеке"))

		if var_0_18.settings.custom_spec then
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_custom_spec", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с окошком и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_specinfo = true
			end
		end

		if var_0_1.ToggleButton("##Сheckbox_help_spec", var_0_26.checkbox_help_spec) then
			var_0_18.settings.help_spec = var_0_26.checkbox_help_spec[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.help_spec, var_0_14("Окно взаимодействия с игроком в спеке"))

		if var_0_18.settings.help_spec then
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_help_spec", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с окошком и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_spec_help = true
			end
		end

		if var_0_1.ToggleButton("##Сheckbox_btns_spec", var_0_26.checkbox_btns_spec) then
			var_0_18.settings.btns_spec = var_0_26.checkbox_btns_spec[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.btns_spec, var_0_14("Кейлоггер игрока"))

		if var_0_18.settings.btns_spec then
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_btns_spec", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с окошком и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_btns_spec = true
			end
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 4 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Оффлайн выдача")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Оффлайн выдача"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab4offline", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
		var_0_1.InputTextMultiline("##offlinepunich", var_0_30.input_offline, 65536, var_0_1.ImVec2(360, 535))
		var_0_1.SetCursorPosX(365)
		var_0_1.SetCursorPosY(5)
		var_0_1.SetNextItemWidth(153)
		var_0_1.InputInt(var_0_14("##wait offline"), var_0_27.wait_offline)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Задержка"))
		var_0_1.SetCursorPosX(365)
		var_0_1.SetCursorPosY(40)

		if var_0_1.Button(var_0_31.offlinePunishClear, var_0_1.ImVec2(223, 23)) then
			if var_0_31.offlinePunishClear == var_0_14("Очистить") then
				local function var_132_25()
					var_0_31.offlinePunishClear = var_0_14("Вы уверены?")

					wait(2000)

					var_0_31.offlinePunishClear = var_0_14("Очистить")
				end

				lua_thread.create(var_132_25)
			elseif var_0_31.offlinePunishClear == var_0_14("Вы уверены?") then
				var_0_1.StrCopy(var_0_30.input_offline, var_0_14(""))

				var_0_31.offlinePunishClear = var_0_14("Очистить")
			end
		end

		var_0_1.SetCursorPosX(365)

		if var_0_1.Button(var_0_14("Начать выдачу"), var_0_1.ImVec2(223, 23)) then
			if var_0_14:decode(var_0_2.string(var_0_30.input_offline)) ~= "" then
				lua_thread.create(function()
					var_0_44.start_give = true

					for iter_136_0 in var_0_14:decode(var_0_2.string(var_0_30.input_offline)):gmatch("[^\n]+") do
						var_0_44.last_forma = iter_136_0

						sampSendChat(iter_136_0, -1)
						wait(var_0_27.wait_offline[0])
					end

					var_0_44.start_give = false
					var_0_30.input_offline = var_0_15.char[65536]()
				end)
			else
				var_0_108(var_0_14("Вы ничего не ввели в поле оффайн выдачи!"), 999)
			end
		end

		var_0_1.SetCursorPosX(365)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 10)

		if var_0_1.Button(var_0_14("Скопировать все ошибки"), var_0_1.ImVec2(223, 23)) then
			lua_thread.create(function()
				setLanguage("00000419")
				wait(111)
				setClipboardText(table.concat(var_0_44.errors_list, "\n"))
				var_0_108(var_0_14("Ошибки успешно скопированы в буфер обмена!"), 1111)

				var_0_44.errors_list = {}
			end)
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 5 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Формы")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Формы"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab6forms", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Сheckbox_offforms", var_0_26.checkbox_offforms) then
			var_0_18.settings.offforms = var_0_26.checkbox_offforms[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
		var_0_1.TextAndDisabled(var_0_18.settings.offforms, var_0_14("Отключить формы"))

		if not var_0_18.settings.offforms then
			if var_0_1.ToggleButton("##Checkbox_autoacceptform", var_0_26.checkbox_autoacceptform) then
				var_0_18.settings.autoacceptform = var_0_26.checkbox_autoacceptform[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.autoacceptform, var_0_14("Автопринятие форм"))
			var_0_1.TextNew(var_0_14("Принятие формы"))
			var_0_1.SameLine(486)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_acceptform_key", var_0_21.bind_acceptform, {}, 100) then
				var_0_18.binds.bind_acceptform = encodeJson(var_0_21.bind_acceptform.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.TextNew(var_0_14("Отклонение формы"))
			var_0_1.SameLine(486)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_rejectform_key", var_0_21.bind_rejectform, {}, 100) then
				var_0_18.binds.bind_rejectform = encodeJson(var_0_21.bind_rejectform.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.TextNew(var_0_14("Повторная отправка последней принятой формы"))
			var_0_1.SameLine(486)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.HotKey("##bind_againform_key", var_0_21.bind_againform, {}, 100) then
				var_0_18.binds.bind_againform = encodeJson(var_0_21.bind_againform.v)

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.TextNew(var_0_14("Информационное окно форм"))
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_forms", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с окошком и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_forms = true
			end

			var_0_1.SetCursorPosY(180)
			var_0_1.TextNew(var_0_14("Автоматическая настройка по уровню Админ-прав: "))
			var_0_1.SameLine(0, 142)

			if var_0_1.Button("1", var_0_1.ImVec2(20, 20)) then
				AutoForm(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
			end

			var_0_1.SameLine()

			if var_0_1.Button("2", var_0_1.ImVec2(20, 20)) then
				AutoForm(1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1)
			end

			var_0_1.SameLine()

			if var_0_1.Button("3", var_0_1.ImVec2(20, 20)) then
				AutoForm(1, 1, 2, 2, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 2, 1, 1, 1, 1)
			end

			var_0_1.SameLine()

			if var_0_1.Button("4", var_0_1.ImVec2(20, 20)) then
				AutoForm(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 1)
			end

			var_0_1.SameLine()

			if var_0_1.Button("5+", var_0_1.ImVec2(21, 20)) then
				AutoForm(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2)
			end

			var_0_1.PushStyleVarFloat(var_0_1.StyleVar.ChildRounding, 1)
			var_0_1.BeginChild("##formssettings", var_0_1.ImVec2(590, 335), true)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 15)
			var_0_1.TextNew(var_0_14("Команда:"))
			var_0_1.SameLine(0, 312)
			var_0_1.TextNew(var_0_14("Действие:"))
			var_0_1.Separator()
			var_0_1.BeginChild("##forms", var_0_1.ImVec2(580, 298), false)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 3)
			var_0_1.TextForm("/msg", "Forms", 221, "forms_msg")
			var_0_1.TextForm("/hc", "Forms", 221, "forms_hc")
			var_0_1.TextForm("/slap", "Forms", 221, "forms_slap")
			var_0_1.TextForm("/spawn", "Forms", 221, "forms_spawn")
			var_0_1.TextForm("/freeze", "Forms", 221, "forms_freeze")
			var_0_1.TextForm("/unfreeze", "Forms", 221, "forms_unfreeze")
			var_0_1.TextForm("/pveh", "Forms", 221, "forms_pveh")
			var_0_1.TextForm("/tempskin", "Forms", 221, "forms_tempskin")
			var_0_1.TextForm("/sethp", "Forms", 221, "forms_sethp")
			var_0_1.TextForm("/areanimate", "Forms", 221, "forms_areanimate")
			var_0_1.TextForm("/kick", "Forms", 221, "forms_kick")
			var_0_1.TextForm("/bgun", "Forms", 221, "forms_bgun")
			var_0_1.TextForm("/unbgun", "Forms", 221, "forms_unbgun")
			var_0_1.TextForm("/ban", "Forms", 221, "forms_ban")
			var_0_1.TextForm("/unban", "Forms", 221, "forms_unban")
			var_0_1.TextForm("/offban", "Forms", 221, "forms_offban")
			var_0_1.TextForm("/mute", "Forms", 221, "forms_mute")
			var_0_1.TextForm("/unmute", "Forms", 221, "forms_unmute")
			var_0_1.TextForm("/offmute", "Forms", 221, "forms_offmute")
			var_0_1.TextForm("/offunmute", "Forms", 221, "forms_offunmute")
			var_0_1.TextForm("/warn", "Forms", 221, "forms_warn")
			var_0_1.TextForm("/unwarn", "Forms", 221, "forms_unwarn")
			var_0_1.TextForm("/offwarn", "Forms", 221, "forms_offwarn")
			var_0_1.TextForm("/offunwarn", "Forms", 221, "forms_offunwarn")
			var_0_1.TextForm("/prison", "Forms", 221, "forms_prison")
			var_0_1.TextForm("/unprison", "Forms", 221, "forms_unprison")
			var_0_1.TextForm("/offprison", "Forms", 221, "forms_offprison")
			var_0_1.TextForm("/offunprison", "Forms", 221, "forms_offunprison")
			var_0_1.TextForm("/givecupon", "Forms", 221, "forms_givecupon")
			var_0_1.TextForm("/auninvite", "Forms", 221, "forms_auninvite")
			var_0_1.TextForm("/vcmute", "Forms", 221, "forms_vcmute")
			var_0_1.TextForm("/vcunmute", "Forms", 221, "forms_vcunmute")
			var_0_1.TextForm("/alldelv", "Forms", 221, "forms_alldelv")
			var_0_1.TextForm("/fuelvehs", "Forms", 221, "forms_fuelvehs")
			var_0_1.TextForm("/jail", "Forms", 221, "forms_jail")
			var_0_1.TextForm("/unjail", "Forms", 221, "forms_unjail")
			var_0_1.TextForm("/offjail", "Forms", 221, "forms_offjail")
			var_0_1.TextForm("/offunjail", "Forms", 221, "forms_offunjail")
			var_0_1.TextForm("/soffban", "Forms", 221, "forms_soffban")
			var_0_1.EndChild()
			var_0_1.EndChild()
			var_0_1.PopStyleVar()
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 6 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Чекер")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Чекер"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab7checker", var_0_1.ImVec2(590, 540), false)

		if var_0_1.ToggleButton("##Checkbox_adminchecker", var_0_26.checkbox_adminchecker) then
			var_0_18.settings.adminchecker = var_0_26.checkbox_adminchecker[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine(0, 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.adminchecker then
			var_0_1.TextNew(var_0_14("Чекер администрации"))
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_adminchecker", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с окошком и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_adminchecker = true
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Размер шрифта чекера администрации:"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderInt("##fontsize_adminchecker", var_0_27.fontsize_checker_admins, 11, 22) then
				var_0_18.settings.fontsize_checker_admins = var_0_27.fontsize_checker_admins[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет надписи \"Администраторы в сети\":"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы онлайн"), var_0_59.clr_admins_online) then
				var_0_18.color_editor.clr_admins_online = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_admins_online[0], var_0_59.clr_admins_online[1], var_0_59.clr_admins_online[2], var_0_59.clr_admins_online[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет надписи \"SPEC\":"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы spec"), var_0_59.spec_clr) then
				var_0_18.color_editor.clr_spec = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.spec_clr[0], var_0_59.spec_clr[1], var_0_59.spec_clr[2], var_0_59.spec_clr[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет надписи \"AFK\":"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы afk"), var_0_59.afk_clr) then
				var_0_18.color_editor.clr_afk = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.afk_clr[0], var_0_59.afk_clr[1], var_0_59.afk_clr[2], var_0_59.afk_clr[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет администраторов 1 уровня:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы 1лвл"), var_0_59.clr_alvl1) then
				var_0_18.color_editor.alvl1 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_alvl1[0], var_0_59.clr_alvl1[1], var_0_59.clr_alvl1[2], var_0_59.clr_alvl1[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет администраторов 2 уровня:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы 2лвл"), var_0_59.clr_alvl2) then
				var_0_18.color_editor.alvl2 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_alvl2[0], var_0_59.clr_alvl2[1], var_0_59.clr_alvl2[2], var_0_59.clr_alvl2[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет администраторов 3 уровня:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы 3лвл"), var_0_59.clr_alvl3) then
				var_0_18.color_editor.alvl3 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_alvl3[0], var_0_59.clr_alvl3[1], var_0_59.clr_alvl3[2], var_0_59.clr_alvl3[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет администраторов 4 уровня:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы 4лвл"), var_0_59.clr_alvl4) then
				var_0_18.color_editor.alvl4 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_alvl4[0], var_0_59.clr_alvl4[1], var_0_59.clr_alvl4[2], var_0_59.clr_alvl4[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет администраторов 5 уровня:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы 5лвл"), var_0_59.clr_alvl5) then
				var_0_18.color_editor.alvl5 = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_alvl5[0], var_0_59.clr_alvl5[1], var_0_59.clr_alvl5[2], var_0_59.clr_alvl5[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет ютуб админки:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет адмы ютлвл"), var_0_59.clr_alvlyt) then
				var_0_18.color_editor.alvlyt = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_alvlyt[0], var_0_59.clr_alvlyt[1], var_0_59.clr_alvlyt[2], var_0_59.clr_alvlyt[3]))

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.PushFont(norm)
			var_0_1.TextDisabled(var_0_14("Чекер администрации"))
			var_0_1.PopFont()
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 30)

		if var_0_1.ToggleButton("##Checkbox_playerchecker", var_0_26.checkbox_playerchecker) then
			var_0_18.settings.playerchecker = var_0_26.checkbox_playerchecker[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine(0, 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.playerchecker then
			var_0_1.TextNew(var_0_14("Чекер игроков"))
			var_0_1.SameLine(0, 5)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_playerchecker", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с окошком и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_playerchecker = true
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Размер шрифта чекера игроков:"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.SetNextItemWidth(150)

			if var_0_1.SliderInt("##fontsize_playerchecker", var_0_27.fontsize_checker_players, 11, 22) then
				var_0_18.settings.fontsize_checker_players = var_0_27.fontsize_checker_players[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.TextNew(var_0_14("Цвет надписи \"Игроки в сети\":"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)

			if var_0_1.ColorEdit4(var_0_14("##Цвет игроки онлайн"), var_0_59.clr_players_online) then
				var_0_18.color_editor.clr_players_online = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_players_online[0], var_0_59.clr_players_online[1], var_0_59.clr_players_online[2], var_0_59.clr_players_online[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 44)
			var_0_1.BeginChild("##checkerplayers", var_0_1.ImVec2(300, 320), true)

			for iter_132_30, iter_132_31 in ipairs(var_0_103) do
				if var_0_1.Button(iter_132_31.nick, var_0_1.ImVec2(290, 22)) then
					-- block empty
				end

				if var_0_1.IsItemHovered() and var_0_1.IsMouseDoubleClicked(0) then
					var_0_108(var_0_14("Игрок с ником ") .. iter_132_31.nick .. var_0_14(" успешно удалён из чекера."), 1111)
					table.remove(var_0_103, iter_132_30)
					saveJsonFile(var_0_96, var_0_103)
				end
			end

			var_0_1.EndChild()
			var_0_1.SetCursorPosX(348)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 325)
			var_0_1.SetNextItemWidth(226)
			var_0_1.InputTextWithHint("##addplayersinchecker", var_0_14("Введите ник игрока"), var_0_55, 256)
			var_0_1.SetCursorPosX(348)

			if var_0_1.Button(var_0_14("Добавить игрока"), var_0_1.ImVec2(226, 23)) then
				if var_0_2.string(var_0_55) == "" then
					var_0_108(var_0_14("Вы не ввели ник игрока!"), 800)
				else
					for iter_132_32, iter_132_33 in ipairs(var_0_103) do
						if var_0_2.string(var_0_55) == iter_132_33.nick then
							var_0_108(var_0_14("У Вас уже есть в чекере игрок с ником ") .. iter_132_33.nick .. "!", 1200)

							var_0_54.showErrorPlayerChecker = true

							break
						end
					end

					if not var_0_54.showErrorPlayerChecker then
						table.insert(var_0_103, {
							nick = var_0_2.string(var_0_55)
						})
						saveJsonFile(var_0_96, var_0_103)
						var_0_108(var_0_14("Игрок с ником ") .. var_0_2.string(var_0_55) .. var_0_14(" успешно добавлен в чекер!"), 1000)

						var_0_55 = var_0_15.char[256]()
					else
						var_0_54.showErrorPlayerChecker = false
					end
				end
			end

			var_0_1.SetCursorPosX(348)
			var_0_1.TextDisabledNew(var_0_14("Сделайте двойной клик по нику,"))
			var_0_1.SetCursorPosX(348)
			var_0_1.TextDisabledNew(var_0_14("чтобы удалить игрока из списка"))
			var_0_1.SetCursorPosX(348)
			var_0_1.TextDisabledNew(var_0_14("чекера."))
			var_0_1.SetCursorPosX(348)

			if var_0_1.ToggleButton("##Checkbox_playerchecker_vhod_uved", var_0_26.checkbox_playerchecker_vhod_uved) then
				var_0_18.settings.playerchecker_vhod_uved = var_0_26.checkbox_playerchecker_vhod_uved[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() - 7)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.playerchecker_vhod_uved, var_0_14("Уведомлять при подключении"))
			var_0_1.SetCursorPosX(348)

			if var_0_1.ToggleButton("##Checkbox_playerchecker_exit_uved", var_0_26.checkbox_playerchecker_exit_uved) then
				var_0_18.settings.playerchecker_exit_uved = var_0_26.checkbox_playerchecker_exit_uved[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() - 7)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.playerchecker_exit_uved, var_0_14("Уведомлять при отключении"))
			var_0_1.SetCursorPosX(348)
			var_0_1.SetCursorPosY(905)

			if var_0_1.Button(var_0_31.nameClearListPlayerChecker, var_0_1.ImVec2(226, 23)) then
				if var_0_31.nameClearListPlayerChecker == var_0_14("Очистить список") then
					local function var_132_26()
						var_0_31.nameClearListPlayerChecker = var_0_14("Вы уверены?")

						wait(2000)

						var_0_31.nameClearListPlayerChecker = var_0_14("Очистить список")
					end

					lua_thread.create(var_132_26)
				elseif var_0_31.nameClearListPlayerChecker == var_0_14("Вы уверены?") then
					var_0_103 = {}

					saveJsonFile(var_0_96, var_0_103)
					var_0_108(var_0_14("Вы успешно очистили весь список чекера игроков!"), 1000)
				end
			end
		else
			var_0_1.TextDisabledNew(var_0_14("Чекер игроков"))
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 7 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Биндер")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Биндер"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab8binder", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
		var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 10)
		var_0_1.Text(var_0_8("power_off"))
		var_0_1.SameLine(41)
		var_0_1.TextNewColor("|")
		var_0_1.SameLine(57)
		var_0_1.TextNew("#")
		var_0_1.SameLine(77)
		var_0_1.TextNewColor("|")
		var_0_1.SameLine(175)
		var_0_1.TextNew(var_0_14("Название"))
		var_0_1.SameLine(330)
		var_0_1.TextNewColor("|")
		var_0_1.SameLine(360)
		var_0_1.TextNew(var_0_14("Активация"))
		var_0_1.SameLine(460)
		var_0_1.TextNewColor("|")
		var_0_1.SameLine(490)
		var_0_1.TextNew(var_0_14("Клавиша"))
		var_0_1.BeginChild("ScrollableAreabinders", var_0_1.ImVec2(590, 480), false)
		var_0_1.PushStyleColor(var_0_1.Col.Button, var_0_1.GetStyle().Colors[var_0_1.Col.WindowBg])
		var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.ImVec4(0, 0, 0, 0))

		for iter_132_34, iter_132_35 in ipairs(var_0_102) do
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

			if var_0_1.ToggleButton("##" .. tostring(iter_132_34), var_0_15.bool(var_0_18.active_binders[iter_132_35.activation])) then
				var_0_18.active_binders[iter_132_35.activation] = not var_0_18.active_binders[iter_132_35.activation]

				var_0_3.save(var_0_18, var_0_17)

				if var_0_18.active_binders[iter_132_35.activation] then
					sampRegisterChatCommand(iter_132_35.activation, function()
						linebinder(iter_132_35)
					end)
				else
					sampUnregisterChatCommand(iter_132_35.activation)
				end
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)

			if var_0_1.Button("##" .. tostring(iter_132_34), var_0_1.ImVec2(527, 25)) then
				-- block empty
			end

			if var_0_1.IsItemHovered() and var_0_1.IsMouseClicked(0) then
				var_0_85.title_binder = var_0_15.char[256](iter_132_35.title or "")
				var_0_85.content_binder = var_0_15.char[131072](iter_132_35.content or "")
				var_0_85.activation_binder = var_0_15.char[256](iter_132_35.activation or "")
				var_0_85.activation_text_binder = var_0_15.char[2048](iter_132_35.activation_text or "")
				var_0_85.selectedBinderIndex = iter_132_34
				var_0_20.v = decodeJson(var_0_18.binds[var_0_102[var_0_85.selectedBinderIndex].activation])
				var_0_85.binder_state = "Редактирование"
				var_0_85.editBinderWinState[0] = true
			end

			var_0_1.SameLine(41 + (36 - var_0_1.CalcTextSize(var_0_14(tostring(iter_132_34))).x) / 2)
			var_0_1.TextNew(tostring(iter_132_34))
			var_0_1.SameLine(85)
			var_0_1.TextNew(iter_132_35.title)
			var_0_1.SameLine(336 + (100 - var_0_1.CalcTextSize(var_0_14(iter_132_35.activation)).x) / 2)
			var_0_1.TextNew("/" .. iter_132_35.activation)

			local var_132_27

			if var_0_18.binds[iter_132_35.activation] ~= "{}" then
				var_0_1.SameLine(470 + (100 - var_0_1.CalcTextSize(table.concat(getKeysName(decodeJson(var_0_18.binds[iter_132_35.activation])))).x) / 2)
				var_0_1.Text(table.concat(getKeysName(decodeJson(var_0_18.binds[iter_132_35.activation]))))
			else
				var_0_1.SameLine(470 + (100 - var_0_1.CalcTextSize(var_0_14("Нет")).x) / 2)
				var_0_1.Text(var_0_14("Нет"))
			end
		end

		var_0_1.PopStyleColor(2)
		var_0_1.SetCursorPosX(45)
		var_0_1.SetCursorPosY(2)
		var_0_1.BinderSeparator()
		var_0_1.SetCursorPosX(81)
		var_0_1.SetCursorPosY(2)
		var_0_1.BinderSeparator()
		var_0_1.SetCursorPosX(334)
		var_0_1.SetCursorPosY(2)
		var_0_1.BinderSeparator()
		var_0_1.SetCursorPosX(464)
		var_0_1.SetCursorPosY(2)
		var_0_1.BinderSeparator()
		var_0_1.EndChild()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 3)

		if var_0_1.Button(var_0_14("Создать новый биндер"), var_0_1.ImVec2(589, 24)) then
			var_0_19.v = decodeJson("[]")
			var_0_85.editBinderWinState[0] = true
			var_0_85.binder_state = "Создание"
			var_0_85.title_binder = var_0_15.char[256]()
			var_0_85.content_binder = var_0_15.char[131072]()
			var_0_85.activation_binder = var_0_15.char[256]()
			var_0_85.activation_text_binder = var_0_15.char[2048]()
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 8 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Мероприятия")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Мероприятия"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab9MP", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
		var_0_1.BeginChild("##Tab9MP1", var_0_1.ImVec2(297.5, 535), true, var_0_1.WindowFlags.NoScrollbar)
		var_0_1.BeginChild("##Tab9MPtp", var_0_1.ImVec2(287.5, 111), true)
		var_0_1.SetCursorPosX((287.5 - var_0_1.CalcTextSize(var_0_14("Телепорт")).x) / 2)
		var_0_1.TextNew(var_0_14("Телепорт"))
		var_0_1.Separator()
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##Количество людей"), var_0_45.kolvo_players)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Количество людей"))
		var_0_1.SetNextItemWidth(276.5)
		var_0_1.Combo("##type_mp", var_0_45.tp_int, var_0_15["const char*"][#var_0_45.type_tp](var_0_45.type_tp), #var_0_45.type_tp)

		if var_0_1.Button(var_0_14("Открыть/Закрыть телепорт"), var_0_1.ImVec2(276.5, 23)) then
			var_0_45.mp_help_skip = 1

			sampSendChat("/amp")
			sampSendDialogResponse(815, 1, 0, _)
			sampSendDialogResponse(819, 1, var_0_45.tp_int[0], _)
		end

		var_0_1.EndChild()

		if var_0_1.Button(var_0_14("Выдать HP"), var_0_1.ImVec2(286.5, 23)) then
			var_0_45.mp_help_skip = 2

			sampSendChat("/amp")
			var_0_108(var_0_14("Вы успешно выдали HP всем участникам мероприятия!"), 999)
		end

		if var_0_1.Button(var_0_14("Выдать броню"), var_0_1.ImVec2(286.5, 23)) then
			var_0_45.mp_help_skip = 3

			sampSendChat("/amp")
			var_0_108(var_0_14("Вы успешно выдали броню всем участникам мероприятия!"), 999)
		end

		if var_0_1.Button(var_0_14("Забрать броню"), var_0_1.ImVec2(286.5, 23)) then
			var_0_45.mp_help_skip = 4

			sampSendChat("/amp")
			var_0_108(var_0_14("Вы успешно забрали броню у всех участников мероприятия!"), 999)
		end

		if var_0_1.Button(var_0_14("Заморозить игроков"), var_0_1.ImVec2(286.5, 23)) then
			var_0_45.mp_help_skip = 5

			sampSendChat("/amp")
			var_0_108(var_0_14("Вы успешно заморозили всех участников мероприятия!"), 999)
		end

		if var_0_1.Button(var_0_14("Разморозить игроков"), var_0_1.ImVec2(286.5, 23)) then
			var_0_45.mp_help_skip = 6

			sampSendChat("/amp")
			var_0_108(var_0_14("Вы успешно разморозили всех участников мероприятия!"), 999)
		end

		var_0_1.BeginChild("##Tab9MPgun", var_0_1.ImVec2(287.5, 165), true)
		var_0_1.SetCursorPosX((287.5 - var_0_1.CalcTextSize(var_0_14("Оружие")).x) / 2)
		var_0_1.TextNew(var_0_14("Оружие"))
		var_0_1.Separator()
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##Радиус выдачиGun"), var_0_45.radius_gun)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Радиус выдачи"))
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##РIdGun"), var_0_45.type_gun)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Айди оружия"))
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##GunPt"), var_0_45.kolvo_gun)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Количество патронов"))

		if var_0_1.Button(var_0_14("Выдать оружие"), var_0_1.ImVec2(276.5, 23)) then
			if var_0_45.kolvo_gun[0] > 0 then
				var_0_45.mp_help_skip = 8

				sampSendChat("/amp")
				sampSendDialogResponse(815, 1, 5, _)
			else
				var_0_108(var_0_14("Введите количество патронов большее, чем 0!"), 1234)
			end
		end

		if var_0_1.Button(var_0_14("Забрать оружие"), var_0_1.ImVec2(276.5, 23)) then
			var_0_45.mp_help_skip = 9

			sampSendChat("/amp")
			var_0_108(var_0_14("Вы успешно забрали оружие у всех участников мероприятия!"), 999)
		end

		var_0_1.EndChild()
		var_0_1.BeginChild("##Tab9MPcar", var_0_1.ImVec2(287.5, 163), true)
		var_0_1.SetCursorPosX((287.5 - var_0_1.CalcTextSize(var_0_14("Выдача транспорта")).x) / 2)
		var_0_1.TextNew(var_0_14("Выдача транспорта"))
		var_0_1.Separator()
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##Радиус выдачиCar"), var_0_45.radius_car)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Радиус выдачи"))
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##РIdCar"), var_0_45.type_car)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Айди транспорта"))
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##1ColorCar"), var_0_45.color1_car)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Цвет транспорта 1"))
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##2ColorCar"), var_0_45.color2_car)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Цвет транспорта 2"))

		if var_0_1.Button(var_0_14("Выдать транспорт"), var_0_1.ImVec2(276.5, 23)) then
			if var_0_45.type_car[0] > 399 and var_0_45.type_car[0] < 612 then
				if var_0_45.type_car[0] ~= 0 then
					local var_132_28 = getPlayersInSphere(var_0_45.radius_car[0])

					if #var_132_28 > 0 then
						for iter_132_36, iter_132_37 in pairs(var_132_28) do
							sampSendChat("/pveh " .. iter_132_37 .. " " .. var_0_45.type_car[0] .. " " .. var_0_45.color1_car[0] .. " " .. var_0_45.color2_car[0])
						end

						var_0_108(var_0_14("Вы успешно выдали транспорт ") .. #var_132_28 .. var_0_14(" игрокам!"), 1234)
					else
						var_0_108(var_0_14("Выдать транспорт не получилось, рядом с Вами нет игроков!"), 1234)
					end
				else
					var_0_108(var_0_14("Запрещено выдавать транспорт с айди ") .. var_0_45.type_car[0] .. "!", 1234)
				end
			else
				var_0_108(var_0_14("Разрешено выдавать тарнспорт только с айди от 400 до 611!"), 1234)
			end
		end

		var_0_1.EndChild()
		var_0_1.BeginChild("##Tab9MPskin", var_0_1.ImVec2(287.5, 111), true)
		var_0_1.SetCursorPosX((287.5 - var_0_1.CalcTextSize(var_0_14("Выдача скина")).x) / 2)
		var_0_1.TextNew(var_0_14("Выдача скина"))
		var_0_1.Separator()
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##Радиус выдачиSkin"), var_0_45.radius_skin)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Радиус выдачи"))
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##РIdSkin"), var_0_45.type_skin)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Айди скина"))

		if var_0_1.Button(var_0_14("Выдать скин"), var_0_1.ImVec2(276.5, 23)) then
			if var_0_45.type_skin[0] > 0 and var_0_45.type_skin[0] < 301 then
				if var_0_45.type_skin[0] ~= 1 then
					var_0_45.mp_help_skip = 7

					sampSendChat("/amp")
					sampSendDialogResponse(815, 1, 9, _)
				else
					var_0_108(var_0_14("Запрещено выдавать скин с айди ") .. var_0_45.type_skin[0] .. "!", 1234)
				end
			else
				var_0_108(var_0_14("Разрешено выдавать скины только с айди от 2 до 300!"), 1234)
			end
		end

		var_0_1.EndChild()
		var_0_1.BeginChild("##Tab9MPtpplayers", var_0_1.ImVec2(287.5, 85), true)
		var_0_1.SetCursorPosX((287.5 - var_0_1.CalcTextSize(var_0_14("ТП игроков")).x) / 2)
		var_0_1.TextNew(var_0_14("ТП игроков"))
		var_0_1.Separator()
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##Радиус tpPlayers"), var_0_45.radius_players)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Радиус телепортации"))

		if var_0_1.Button(var_0_14("ТП к себе"), var_0_1.ImVec2(276.5, 23)) then
			local var_132_29 = getPlayersInSphere(var_0_45.radius_players[0])

			if #var_132_29 > 0 then
				for iter_132_38, iter_132_39 in pairs(var_132_29) do
					sampSendChat("/gethere " .. iter_132_39)
				end

				var_0_108(var_0_14("Вы успешно ТПнули ") .. #var_132_29 .. var_0_14(" игроков!"), 1234)
			else
				var_0_108(var_0_14("ТПнуть игроков не получилось, рядом с Вами нет игроков!"), 1234)
			end
		end

		var_0_1.EndChild()
		var_0_1.BeginChild("##Tab9MPMoney", var_0_1.ImVec2(287.5, 111), true)
		var_0_1.SetCursorPosX((287.5 - var_0_1.CalcTextSize(var_0_14("Выдача денег")).x) / 2)
		var_0_1.TextNew(var_0_14("Выдача денег"))
		var_0_1.Separator()
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##Радиус выдачиMoney"), var_0_45.radius_money)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Радиус выдачи"))
		var_0_1.SetNextItemWidth(130)
		var_0_1.InputInt(var_0_14("##kolvoMoney"), var_0_45.kolvo_money)
		var_0_1.SameLine()
		var_0_1.TextNew(var_0_14("Кол-во денег на 1 чел."))

		if var_0_1.Button(var_0_14("Выдать деньги"), var_0_1.ImVec2(276.5, 23)) then
			if var_0_45.kolvo_money[0] > 0 then
				var_0_45.mp_help_skip = 10

				sampSendChat("/amp")
				sampSendDialogResponse(815, 1, 10, _)
			else
				var_0_108(var_0_14("Введите количество денег большее, чем 0$!"), 1234)
			end
		end

		var_0_1.EndChild()
		var_0_1.EndChild()
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(5)
		var_0_1.BeginChild("##Tab9MPTP2", var_0_1.ImVec2(288.5, 535), true, var_0_1.WindowFlags.NoScrollbar)

		if var_0_1.Button(var_0_14("Добавить новое место"), var_0_1.ImVec2(258, 23)) then
			var_0_45.viewAddPoint[0] = not var_0_45.viewAddPoint[0]
		end

		var_0_1.SameLine()
		var_0_1.CustomTextQuestion("hint_mpcoord", var_0_14("Сделайте двойной клик ПКМ по кнопке из ваших добавленных точек в списке для её удаления."))

		if var_0_45.viewAddPoint[0] then
			var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
			var_0_1.SetNextWindowSize(var_0_1.ImVec2(288, 177), var_0_1.Cond.Always)
			var_0_1.Begin(var_0_14("Добавить координаты нового места"), _, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse)
			var_0_1.SetNextItemWidth(277.5)
			var_0_1.InputTextWithHint("##addNewCoord", var_0_14("Введите название нового места"), var_0_45.custom_coords_tp, 256)

			local var_132_30, var_132_31, var_132_32 = getCharCoordinates(playerPed)
			local var_132_33 = getActiveInterior()

			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)
			var_0_1.Text(var_0_8("map"))
			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextNew(var_0_14("Координаты: "))
			var_0_1.TextNew("X = " .. var_132_30 .. "\nY = " .. var_132_31 .. "\nZ = " .. var_132_32)
			var_0_1.TextNew(var_0_14("Айди интерьера: ") .. var_132_33)
			var_0_1.SetCursorPosX(41.5)

			if var_0_1.Button(var_0_14("Сохранить"), var_0_1.ImVec2(100, 25)) then
				if var_0_2.string(var_0_45.custom_coords_tp) == "" then
					var_0_108(var_0_14("Вы не ввели название нового места!"), 800)
				else
					for iter_132_40, iter_132_41 in ipairs(var_0_104) do
						if var_0_2.string(var_0_45.custom_coords_tp) == iter_132_41.name then
							var_0_108(var_0_14("У Вас уже есть место с названием ") .. iter_132_41.name .. "!", 1200)

							var_0_45.showError = true

							break
						end
					end

					if not var_0_45.showError then
						table.insert(var_0_104, {
							name = var_0_2.string(var_0_45.custom_coords_tp),
							coords = var_132_33 .. ", " .. var_132_30 .. ", " .. var_132_31 .. ", " .. var_132_32
						})
						saveJsonFile(var_0_97, var_0_104)
						var_0_108(var_0_14("Место ") .. var_0_2.string(var_0_45.custom_coords_tp) .. var_0_14(" успешно добавлено в список!"), 1000)

						var_0_45.custom_coords_tp = var_0_15.char[256]()
						var_0_45.viewAddPoint[0] = false
					else
						var_0_45.showError = false
					end
				end
			end

			var_0_1.SameLine()

			if var_0_1.Button(var_0_14("Закрыть"), var_0_1.ImVec2(100, 25)) then
				var_0_45.viewAddPoint[0] = false
			end

			var_0_1.End()
		end

		var_0_1.SetNextItemWidth(211)
		var_0_1.InputTextWithHint("##SearchTp", var_0_14("Поиск места"), var_0_45.search_tp, 256)
		var_0_1.SameLine()

		if var_0_1.Button(var_0_14("Очистить")) then
			var_0_1.StrCopy(var_0_45.search_tp, var_0_14(""))
		end

		for iter_132_42, iter_132_43 in ipairs(var_0_104) do
			if string.rlower(var_0_14:decode(iter_132_43.name)):find(string.rlower(var_0_14:decode(var_0_2.string(var_0_45.search_tp)))) then
				if var_0_1.Button("##" .. var_0_14(iter_132_43.name), var_0_1.ImVec2(277.5, 20)) then
					local var_132_34, var_132_35, var_132_36, var_132_37 = iter_132_43.coords:match("([^, ]+), ([^, ]+), ([^, ]+), ([^, ]+)")

					tp_coord(var_132_34, var_132_35, var_132_36, var_132_37)
				end

				if var_0_1.IsItemHovered() and var_0_1.IsMouseDoubleClicked(1) then
					table.remove(var_0_104, iter_132_42)
					saveJsonFile(var_0_97, var_0_104)
				end

				var_0_1.SameLine(10)
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)
				var_0_1.Text(iter_132_43.name)
			end
		end

		for iter_132_44, iter_132_45 in ipairs(var_0_45.mp_coord) do
			if string.rlower(iter_132_45.name):find(string.rlower(var_0_14:decode(var_0_2.string(var_0_45.search_tp)))) then
				if var_0_1.Button("##" .. iter_132_45.name, var_0_1.ImVec2(277.5, 20)) then
					local var_132_38, var_132_39, var_132_40, var_132_41 = iter_132_45.coords:match("([^, ]+), ([^, ]+), ([^, ]+), ([^, ]+)")

					tp_coord(var_132_38, var_132_39, var_132_40, var_132_41)
				end

				var_0_1.SameLine(10)
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)
				var_0_1.Text(var_0_14(iter_132_45.name))
			end
		end

		for iter_132_46, iter_132_47 in pairs(var_0_46) do
			if string.rlower(var_0_14(iter_132_46)):find(string.rlower(var_0_2.string(var_0_45.search_tp))) then
				if var_0_1.Button("##" .. var_0_14(iter_132_46), var_0_1.ImVec2(277.5, 20)) then
					local var_132_42, var_132_43, var_132_44, var_132_45 = iter_132_47:match("([^, ]+), ([^, ]+), ([^, ]+), ([^, ]+)")

					tp_coord(var_132_42, var_132_43, var_132_44, var_132_45)
				end

				var_0_1.SameLine(10)
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 1)
				var_0_1.Text(var_0_14(iter_132_46))
			end
		end

		var_0_1.EndChild()
		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 9 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Редактор цветов")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Редактор цветов"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab10color_editor", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)

		if var_0_1.ToggleButton("##Checkbox_custom_color_a_chat", var_0_26.checkbox_custom_color_a_chat) then
			var_0_18.settings.custom_color_a_chat = var_0_26.checkbox_custom_color_a_chat[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine(0, 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.custom_color_a_chat then
			var_0_1.TextNew(var_0_14("Кастомный цвет чата администрации:"))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

			if var_0_1.ColorEdit4(var_0_14("##Цвет чата админов"), var_0_76) then
				var_0_18.color_editor.a_chat_color = bit.bor(bit.lshift(math.floor(var_0_76[3] * 255), 24), bit.lshift(math.floor(var_0_76[0] * 255), 16), bit.lshift(math.floor(var_0_76[1] * 255), 8), math.floor(var_0_76[2] * 255))

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.PushFont(norm)
			var_0_1.TextDisabled(var_0_14("Кастомный цвет чата администрации"))
			var_0_1.PopFont()
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Checkbox_custom_color_hc_chat", var_0_26.checkbox_custom_color_hc_chat) then
			var_0_18.settings.custom_color_hc_chat = var_0_26.checkbox_custom_color_hc_chat[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine(0, 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.custom_color_hc_chat then
			var_0_1.PushFont(norm)
			var_0_1.Text(var_0_14("Кастомный цвет чата хелперов:"))
			var_0_1.PopFont()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

			if var_0_1.ColorEdit4(var_0_14("##Цвет чата хелперов"), var_0_77) then
				var_0_18.color_editor.hc_chat_color = bit.bor(bit.lshift(math.floor(var_0_77[3] * 255), 24), bit.lshift(math.floor(var_0_77[0] * 255), 16), bit.lshift(math.floor(var_0_77[1] * 255), 8), math.floor(var_0_77[2] * 255))

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.PushFont(norm)
			var_0_1.TextDisabled(var_0_14("Кастомный цвет чата хелперов"))
			var_0_1.PopFont()
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Checkbox_custom_color_answerask_chat", var_0_26.checkbox_custom_color_answerask_chat) then
			var_0_18.settings.custom_color_answerask_chat = var_0_26.checkbox_custom_color_answerask_chat[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine(0, 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.custom_color_answerask_chat then
			var_0_1.PushFont(norm)
			var_0_1.Text(var_0_14("Кастомный цвет ответов на вопрос(/ask):"))
			var_0_1.PopFont()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

			if var_0_1.ColorEdit4(var_0_14("##Цвет ответов на вопрос"), var_0_80) then
				var_0_18.color_editor.answerask_chat_color = bit.bor(bit.lshift(math.floor(var_0_80[3] * 255), 24), bit.lshift(math.floor(var_0_80[0] * 255), 16), bit.lshift(math.floor(var_0_80[1] * 255), 8), math.floor(var_0_80[2] * 255))

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.PushFont(norm)
			var_0_1.TextDisabled(var_0_14("Кастомный цвет ответов на вопрос(/ask)"))
			var_0_1.PopFont()
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Checkbox_custom_color_answerrep_chat", var_0_26.checkbox_custom_color_answerrep_chat) then
			var_0_18.settings.custom_color_answerrep_chat = var_0_26.checkbox_custom_color_answerrep_chat[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine(0, 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.custom_color_answerrep_chat then
			var_0_1.PushFont(norm)
			var_0_1.Text(var_0_14("Кастомный цвет ответов на репорт:"))
			var_0_1.PopFont()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

			if var_0_1.ColorEdit4(var_0_14("##Цвет ответов на репорт"), var_0_81) then
				var_0_18.color_editor.answerrep_chat_color = bit.bor(bit.lshift(math.floor(var_0_81[3] * 255), 24), bit.lshift(math.floor(var_0_81[0] * 255), 16), bit.lshift(math.floor(var_0_81[1] * 255), 8), math.floor(var_0_81[2] * 255))

				var_0_3.save(var_0_18, var_0_17)
			end
		else
			var_0_1.PushFont(norm)
			var_0_1.TextDisabled(var_0_14("Кастомный цвет ответов на репорт"))
			var_0_1.PopFont()
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

		if var_0_1.ToggleButton("##Checkbox_custom_color_ans_chat", var_0_26.checkbox_custom_color_ans_chat) then
			var_0_18.settings.custom_color_ans_chat = var_0_26.checkbox_custom_color_ans_chat[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine(0, 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.custom_color_ans_chat then
			var_0_1.PushFont(norm)
			var_0_1.Text(var_0_14("Кастомный цвет сообщений в /ans:"))
			var_0_1.PopFont()
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)

			if var_0_1.CustomCheckbox(var_0_14("Кастомный цвет сообщений в /ans от хелперов:"), var_0_26.checkbox_custom_color_ans_chat_helpers, var_0_18.settings.custom_color_ans_chat_helpers) then
				var_0_18.settings.custom_color_ans_chat_helpers = var_0_26.checkbox_custom_color_ans_chat_helpers[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			if var_0_18.settings.custom_color_ans_chat_helpers then
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
				var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)

				if var_0_1.ColorEdit4(var_0_14("##Цвет чата /ans хелперы"), var_0_78) then
					var_0_18.color_editor.ans_chat_color_helpers = bit.bor(bit.lshift(math.floor(var_0_78[3] * 255), 24), bit.lshift(math.floor(var_0_78[0] * 255), 16), bit.lshift(math.floor(var_0_78[1] * 255), 8), math.floor(var_0_78[2] * 255))

					var_0_3.save(var_0_18, var_0_17)
				end
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)

			if var_0_1.CustomCheckbox(var_0_14("Кастомный цвет сообщений в /ans от админов"), var_0_26.checkbox_custom_color_ans_chat_admins, var_0_18.settings.custom_color_ans_chat_admins) then
				var_0_18.settings.custom_color_ans_chat_admins = var_0_26.checkbox_custom_color_ans_chat_admins[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			if var_0_18.settings.custom_color_ans_chat_admins then
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
				var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)

				if var_0_1.ColorEdit4(var_0_14("##Цвет чата /ans админы"), var_0_79) then
					var_0_18.color_editor.ans_chat_color_admins = bit.bor(bit.lshift(math.floor(var_0_79[3] * 255), 24), bit.lshift(math.floor(var_0_79[0] * 255), 16), bit.lshift(math.floor(var_0_79[1] * 255), 8), math.floor(var_0_79[2] * 255))

					var_0_3.save(var_0_18, var_0_17)
				end
			end
		else
			var_0_1.PushFont(norm)
			var_0_1.TextDisabled(var_0_14("Кастомный цвет сообщений в /ans"))
			var_0_1.PopFont()
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 10 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Информационная панель")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Информационная панель"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab11infopanel", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 5)

		if var_0_1.ToggleButton("##InfoPanel", var_0_47) then
			var_0_18.settings.infopanel = var_0_47[0]

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SameLine(0, 2)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

		if var_0_18.settings.infopanel then
			var_0_1.PushFont(norm)
			var_0_1.Text(var_0_14("Информационная панель"))
			var_0_1.PopFont()
			var_0_1.SameLine()

			if var_0_1.Button(var_0_8("arrows_up_down_left_right") .. "##move_infopanel", var_0_1.ImVec2(23, 23)) then
				var_0_108(var_0_14("Перемещайте курсор с окошком и нажмите ЛКМ, чтобы сохранить расположение."), 3000)
				var_0_116.switch()

				var_0_28.move_infopanel = true
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)

			if var_0_1.ColorEdit4(var_0_14("##Цвет инфопанели"), var_0_59.clr_infopanel) then
				var_0_18.color_editor.clr_infopanel = var_0_1.ColorConvertFloat4ToU32(var_0_1.ImVec4(var_0_59.clr_infopanel[0], var_0_59.clr_infopanel[1], var_0_59.clr_infopanel[2], var_0_59.clr_infopanel[3]))

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_obvodka", var_0_26.checkbox_infopanel_obvodka) then
				var_0_18.settings.infopanel_obvodka = var_0_26.checkbox_infopanel_obvodka[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_obvodka, var_0_14("Обводка"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_zone", var_0_26.checkbox_infopanel_zone) then
				var_0_18.settings.infopanel_zone = var_0_26.checkbox_infopanel_zone[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_zone, var_0_14("Район"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_kvadrat", var_0_26.checkbox_infopanel_kvadrat) then
				var_0_18.settings.infopanel_kvadrat = var_0_26.checkbox_infopanel_kvadrat[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_kvadrat, var_0_14("Квадрат"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_direction", var_0_26.checkbox_infopanel_direction) then
				var_0_18.settings.infopanel_direction = var_0_26.checkbox_infopanel_direction[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_direction, var_0_14("Направление"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_active_reps", var_0_26.checkbox_active_reps) then
				var_0_18.settings.infopanel_active_reps = var_0_26.checkbox_active_reps[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_active_reps, var_0_14("Показывать количество активных жалоб в /ar на данный момент"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_answers_session", var_0_26.checkbox_infopanel_answers_session) then
				var_0_18.settings.infopanel_answers_session = var_0_26.checkbox_infopanel_answers_session[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_answers_session, var_0_14("Показывать количество ответов на репорт за сессию"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_answers_day", var_0_26.checkbox_infopanel_answers_day) then
				var_0_18.settings.infopanel_answers_day = var_0_26.checkbox_infopanel_answers_day[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_answers_day, var_0_14("Показывать общее количество ответов на репорт за день"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_online_session", var_0_26.checkbox_infopanel_online_session) then
				var_0_18.settings.infopanel_online_session = var_0_26.checkbox_infopanel_online_session[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_online_session, var_0_14("Показывать онлайн за сессию"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_online_day", var_0_26.checkbox_infopanel_online_day) then
				var_0_18.settings.infopanel_online_day = var_0_26.checkbox_infopanel_online_day[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_online_day, var_0_14("Показывать общий онлайн за день"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_afk_session", var_0_26.checkbox_infopanel_afk_session) then
				var_0_18.settings.infopanel_afk_session = var_0_26.checkbox_infopanel_afk_session[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_afk_session, var_0_14("Показывать АФК за сессию"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_afk_day", var_0_26.checkbox_infopanel_afk_day) then
				var_0_18.settings.infopanel_afk_day = var_0_26.checkbox_infopanel_afk_day[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)
			var_0_1.TextAndDisabled(var_0_18.settings.infopanel_afk_day, var_0_14("Показывать общий АФК за день"))
			var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 43)
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)

			if var_0_1.ToggleButton("##Checkbox_infopanel_showtime_info", var_0_26.checkbox_infopanel_showtime_info) then
				var_0_18.settings.infopanel_showtime_info = var_0_26.checkbox_infopanel_showtime_info[0]

				var_0_3.save(var_0_18, var_0_17)
			end

			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 2)

			if var_0_18.settings.infopanel_showtime_info then
				var_0_1.TextNew(var_0_14("Показывать информацию о времени"))
				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
				var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 90)

				if var_0_1.CustomCheckbox(var_0_14("Показывать день недели"), var_0_26.checkbox_infopanel_showweekday, var_0_18.settings.infopanel_showweekday) then
					var_0_18.settings.infopanel_showweekday = var_0_26.checkbox_infopanel_showweekday[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
				var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 90)

				if var_0_1.CustomCheckbox(var_0_14("Показывать дату"), var_0_26.checkbox_infopanel_showdate, var_0_18.settings.infopanel_showdate) then
					var_0_18.settings.infopanel_showdate = var_0_26.checkbox_infopanel_showdate[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				if var_0_18.settings.infopanel_showdate then
					var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
					var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 122)

					if var_0_1.CustomCheckbox(var_0_14("Показывать дату в формате дня и месяца"), var_0_26.checkbox_infopanel_dateformat_daymounth, var_0_18.settings.infopanel_dateformat_daymounth, true) then
						var_0_18.settings.infopanel_dateformat_daymounth = var_0_26.checkbox_infopanel_dateformat_daymounth[0]

						if var_0_18.settings.infopanel_dateformat_x then
							var_0_18.settings.infopanel_dateformat_x = false
							var_0_26.checkbox_infopanel_dateformat_x = var_0_15.bool(var_0_18.settings.infopanel_dateformat_x)
						end

						var_0_3.save(var_0_18, var_0_17)
					end

					var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
					var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 122)

					if var_0_1.CustomCheckbox(var_0_14("Показывать дату в формате xx.xx.xxxx"), var_0_26.checkbox_infopanel_dateformat_x, var_0_18.settings.infopanel_dateformat_x, true) then
						var_0_18.settings.infopanel_dateformat_x = var_0_26.checkbox_infopanel_dateformat_x[0]

						if var_0_18.settings.infopanel_dateformat_daymounth then
							var_0_18.settings.infopanel_dateformat_daymounth = false
							var_0_26.checkbox_infopanel_dateformat_daymounth[0] = false
						end

						var_0_3.save(var_0_18, var_0_17)
					end
				end

				var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
				var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 90)

				if var_0_1.CustomCheckbox(var_0_14("Показывать время"), var_0_26.checkbox_infopanel_showtime, var_0_18.settings.infopanel_showtime) then
					var_0_18.settings.infopanel_showtime = var_0_26.checkbox_infopanel_showtime[0]

					var_0_3.save(var_0_18, var_0_17)
				end

				if var_0_18.settings.infopanel_showtime then
					var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 2)
					var_0_1.SetCursorPosX(var_0_1.GetCursorPosX() + 122)

					if var_0_1.CustomCheckbox(var_0_14("Показывать секунды"), var_0_26.checkbox_infopanel_showtime_seconds, var_0_18.settings.infopanel_showtime_seconds) then
						var_0_18.settings.infopanel_showtime_seconds = var_0_26.checkbox_infopanel_showtime_seconds[0]

						var_0_3.save(var_0_18, var_0_17)
					end
				end
			else
				var_0_1.TextDisabledNew(var_0_14("Показывать информацию о времени"))
			end
		else
			var_0_1.TextDisabledNew(var_0_14("Информационная панель"))
		end

		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 12 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Дизайн")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Дизайн"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab12design", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.EndChild()
	elseif var_0_113.sel[0] == 13 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("О скрипте")).x) / 2 + 222)
		var_0_1.Text(var_0_14("О скрипте"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##Tab13scriptinfo", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.PushFont(var_0_75[17])
		var_0_1.Text(var_0_14("Установленная версия скрипта: ") .. var_0_88)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 10)
		var_0_1.Text(var_0_14("Автор скрипта и разработчик:"))
		var_0_1.SameLine()

		if var_0_1.Link(var_0_14("deffix"), var_0_14("Нажмите на текст, чтобы перейти в Телеграмм.")) then
			os.execute("explorer.exe \"https://t.me/deffix\"")
		end

		var_0_1.SameLine()
		var_0_1.Text(var_0_14("| Denis_Mansory |"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 1)

		if var_0_1.Link(var_0_14("Денис Гусев"), var_0_14("Нажмите на текст, чтобы перейти в ВК.")) then
			os.execute("explorer.exe \"http://vk.com/deffix_elgar\"")
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 10)
		var_0_1.Text(var_0_14("Пользовательское соглашение MATools:"))
		var_0_1.TextWrapped(var_0_14("1. Используя MATools, вы автоматически соглашаетесь с условиями данного соглашения."))
		var_0_1.TextWrapped(var_0_14("2. Запрещается распространять, продавать, публиковать или иным образом размещать MATools на других платформах без явного указания разработчика."))
		var_0_1.TextWrapped(var_0_14("3. Нельзя присваивать себе авторство, удалять или изменять подписи, а также выдавать MATools за собственный продукт."))
		var_0_1.TextWrapped(var_0_14("4. Автор не несёт ответственности за возможные убытки или последствия, возникающие при неправильном использовании тулса."))
		var_0_1.PopFont()
		var_0_1.EndChild()
		var_0_1.SetCursorPosY(555)
		var_0_1.PushFont(var_0_75[15])
		var_0_1.SetCursorPosX((582 - var_0_1.CalcTextSize("2024-2026, MATools").x) / 2 + 222)
		var_0_1.PopFont()
		var_0_1.Text(var_0_8("COPYRIGHT"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 3)
		var_0_1.PushFont(var_0_75[15])
		var_0_1.Text("2024-2026, MATools")
		var_0_1.PopFont()
	elseif var_0_113.sel[0] == 100 then
		var_0_1.SetCursorPosY(5)
		var_0_1.PushFont(title)
		var_0_1.SetCursorPosX((598 - var_0_1.CalcTextSize(var_0_14("Команды MATools")).x) / 2 + 222)
		var_0_1.Text(var_0_14("Команды MATools"))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.SetCursorPosX(226)
		var_0_1.BeginChild("##helpcmdMAToolschild", var_0_1.ImVec2(590, 540), false)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 7)

		for iter_132_48, iter_132_49 in ipairs(var_0_63) do
			var_0_1.PushFont(var_0_75[17])

			local var_132_46, var_132_47 = iter_132_49:match("^(.+) %- (.+.)$")
			local var_132_48 = ""

			if var_132_47:find("\n") then
				var_132_47, var_132_48 = var_132_47:match("(.+)%\n(.+.)$")
			end

			var_0_1.TextColored(var_0_1.ImVec4(0.7, 0, 1, 1), var_132_46)
			var_0_1.SameLine()
			var_0_1.Text("- " .. var_132_47)

			if var_132_48 ~= "" then
				var_0_1.Text(var_132_48)
			end

			var_0_1.PopFont()
		end

		var_0_1.EndChild()
	end

	var_0_1.SetCursorPosY(63)
	var_0_1.SetCursorPosX(30)
	var_0_1.GorizontalSeparator_max_x(162)
	var_0_1.SetCursorPosX(52)
	var_0_1.SetCursorPosY(72)
	var_0_1.TextColored(var_0_57.code, var_0_8("code"))

	if var_0_1.IsItemHovered() then
		var_0_57.code = var_0_1.ImVec4(0.7, 0, 1, 1)
	else
		var_0_57.code = var_0_1.ImVec4(1, 1, 1, 1)
	end

	if var_0_1.IsItemClicked() then
		var_0_113.sel = var_0_15.int(100)
	end

	var_0_1.Hint("##helpcmdMATools", var_0_14("Показывает список команд, которые добавляет/обновляет MATools."))
	var_0_1.SameLine(0, 17)
	var_0_1.TextColored(var_0_57.reload, var_0_8("arrows_rotate"))

	if var_0_1.IsItemHovered() then
		var_0_57.reload = var_0_1.ImVec4(0.7, 0, 1, 1)
	else
		var_0_57.reload = var_0_1.ImVec4(1, 1, 1, 1)
	end

	if var_0_1.IsItemClicked() then
		sampAddChatMessage(var_0_16 .. "Скрипт успешно перезагружен!", -1)
		thisScript():reload()
	end

	var_0_1.Hint("##reloadMATools", var_0_14("Перезагрузить MATools."))
	var_0_1.SameLine(0, 17)
	var_0_1.TextColored(var_0_57.check_update, var_0_8("download"))

	if var_0_1.IsItemHovered() then
		var_0_57.check_update = var_0_1.ImVec4(0.7, 0, 1, 1)
	else
		var_0_57.check_update = var_0_1.ImVec4(1, 1, 1, 1)
	end

	if var_0_1.IsItemClicked() then
		check_update()
	end

	var_0_1.Hint("##checkupdateMATools", var_0_14("Проверить обновления MATools."))
	var_0_1.SameLine(0, 17)
	var_0_1.TextColored(var_0_57.unload, var_0_8("power_off"))

	if var_0_1.IsItemHovered() then
		var_0_57.unload = var_0_1.ImVec4(0.7, 0, 1, 1)
	else
		var_0_57.unload = var_0_1.ImVec4(1, 1, 1, 1)
	end

	if var_0_1.IsItemClicked() then
		thisScript():unload()
	end

	var_0_1.Hint("##unloadMATools", var_0_14("Выгрузить MATools."))
	var_0_1.SetCursorPosX(785)
	var_0_1.SetCursorPosY(2)
	var_0_1.Image(var_0_25.esc, var_0_1.ImVec2(33, 33))

	if var_0_1.IsItemClicked(0) then
		lua_thread.create(function()
			var_0_83.settingswpos = var_0_1.Cond.Always

			wait(300)

			var_0_83.settingswpos = var_0_1.Cond.FirstUseEver
		end)
		var_0_116.switch()
	end

	var_0_1.PopStyleVar()
	var_0_1.PopStyleColor()
	var_0_1.End()
	var_0_1.PopStyleVar()
end)
var_0_1.OnFrame(function()
	return var_0_85.editBinderWinState[0]
end, function(arg_142_0)
	var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(475, 495), var_0_1.Cond.Always)
	var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.GetStyle().Colors[var_0_1.Col.Separator])
	var_0_1.PushStyleVarFloat(var_0_1.StyleVar.WindowBorderSize, 1)
	var_0_1.Begin(var_0_14("Binders"), nil, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse + var_0_1.WindowFlags.NoTitleBar)
	var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.ImVec4(0, 0, 0, 0))

	if var_0_85.binder_state == "Создание" then
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 8)
		var_0_1.SetCursorPosX((475 - var_0_1.CalcTextSize(var_0_14("Создание биндера")).x) / 2)
		var_0_1.TextNew(var_0_14("Создание биндера"))
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 8)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("gear"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Активация:"))
		var_0_1.SameLine(230)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.Text(var_0_8("gear"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Активания по тексту в чате:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.SetNextItemWidth(210)
		var_0_1.InputTextWithHint("##Activation", var_0_14("Введите команду без '/'"), var_0_85.activation_binder, 256)
		var_0_1.SameLine(230)
		var_0_1.SetNextItemWidth(238)
		var_0_1.InputTextWithHint("##Activation_text", var_0_14("Введите текст"), var_0_85.activation_text_binder, 2048)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("heading"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Название:"))
		var_0_1.SameLine(230)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.Text(var_0_8("gear"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Активация по клавише:"))
		var_0_1.SetNextItemWidth(210)
		var_0_1.SetCursorPosX(7)
		var_0_1.InputTextWithHint("##Title", var_0_14("Введите название биндера"), var_0_85.title_binder, 256)
		var_0_1.SameLine(295)

		if var_0_1.HotKey("##bind_create", var_0_19, {}, 100) then
			var_0_19.v = var_0_19.v
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("plane"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Действия биндера:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.BeginChild("ScrollableArea", var_0_1.ImVec2(461, 309))
		var_0_1.InputTextMultiline("##Content", var_0_85.content_binder, 131072, var_0_1.ImVec2(461, 309))
		var_0_1.EndChild()
		var_0_1.SetCursorPosX(68)

		if var_0_1.Button(var_0_14("Создать Биндер"), var_0_1.ImVec2(150, 22)) then
			for iter_142_0, iter_142_1 in ipairs(var_0_102) do
				if var_0_2.string(var_0_85.activation_binder) == iter_142_1.activation then
					var_0_108(var_0_14("У Вас уже есть биндер с активацией \"/") .. var_0_2.string(var_0_85.activation_binder) .. var_0_14("\", выберите другую команду для активации!"), 4000)

					var_0_85.showErrorBinder = true

					break
				end
			end

			if not var_0_85.showErrorBinder then
				if var_0_2.string(var_0_85.title_binder) ~= "" and var_0_2.string(var_0_85.content_binder) ~= "" then
					if var_0_2.string(var_0_85.activation_binder) ~= "" then
						table.insert(var_0_102, {
							title = var_0_2.string(var_0_85.title_binder),
							activation = var_0_2.string(var_0_85.activation_binder),
							activation_text = var_0_2.string(var_0_85.activation_text_binder),
							content = var_0_2.string(var_0_85.content_binder)
						})
						saveJsonFile(var_0_94, var_0_102, 1)

						var_0_18.active_binders[var_0_2.string(var_0_85.activation_binder)] = true
						var_0_18.binds[var_0_2.string(var_0_85.activation_binder)] = encodeJson(var_0_19.v)

						var_0_3.save(var_0_18, var_0_17)
						var_0_108(var_0_14("Биндер \"") .. var_0_2.string(var_0_85.title_binder) .. var_0_14("\" успешно создан!"), 3500)

						var_0_85.title_binder = var_0_15.char[256]()
						var_0_85.content_binder = var_0_15.char[131072]()
						var_0_85.activation_binder = var_0_15.char[256]()
						var_0_85.activation_text_binder = var_0_15.char[2048]()
						var_0_85.editBinderWinState[0] = false
					else
						var_0_108(var_0_14("Вы не указали активацию биндера!"), 4000)
					end
				elseif var_0_2.string(var_0_85.title_binder) == "" then
					var_0_108(var_0_14("Вы не указали название биндера!"), 4000)
				elseif var_0_2.string(var_0_85.content_binder) == "" then
					var_0_108(var_0_14("Вы не указали действия биндера!"), 4000)
				end
			else
				var_0_85.showErrorBinder = false
			end
		end

		var_0_1.SameLine(0, 34)

		if var_0_1.Button(var_0_14("Теги"), var_0_1.ImVec2(150, 22)) then
			var_0_85.showBinderTagsWinState[0] = true
		end
	elseif var_0_85.binder_state == "Редактирование" then
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 8)
		var_0_1.SetCursorPosX((475 - var_0_1.CalcTextSize(var_0_14("Редактирование биндера")).x) / 2)
		var_0_1.TextNew(var_0_14("Редактирование биндера"))
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 8)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("gear"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Активация:"))
		var_0_1.SameLine(230)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.Text(var_0_8("gear"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Активания по тексту в чате:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.SetNextItemWidth(210)
		var_0_1.InputTextWithHint("##Activation", var_0_14("Введите команду без '/'"), var_0_85.activation_binder, 256)
		var_0_1.SameLine(230)
		var_0_1.SetNextItemWidth(238)
		var_0_1.InputTextWithHint("##Activation_text", var_0_14("Введите текст"), var_0_85.activation_text_binder, 2048)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("heading"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Название:"))
		var_0_1.SameLine(230)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.Text(var_0_8("gear"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Активация по клавише:"))
		var_0_1.SetNextItemWidth(210)
		var_0_1.SetCursorPosX(7)
		var_0_1.InputTextWithHint("##Title", var_0_14("Введите название биндера"), var_0_85.title_binder, 256)
		var_0_1.SameLine(295)

		if var_0_1.HotKey("##bind_edit", var_0_20, {}, 100) then
			var_0_18.binds[var_0_102[var_0_85.selectedBinderIndex].activation] = encodeJson(var_0_20.v)

			var_0_3.save(var_0_18, var_0_17)
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("plane"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Действия биндера:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.BeginChild("ScrollableArea", var_0_1.ImVec2(461, 309))
		var_0_1.InputTextMultiline("##Content", var_0_85.content_binder, 131072, var_0_1.ImVec2(461, 309))
		var_0_1.EndChild()
		var_0_1.SetCursorPosX(13)

		if var_0_1.Button(var_0_14("Сохранить биндер"), var_0_1.ImVec2(150, 22)) then
			for iter_142_2, iter_142_3 in ipairs(var_0_102) do
				if var_0_2.string(var_0_85.activation_binder) == iter_142_3.activation and iter_142_2 ~= var_0_85.selectedBinderIndex then
					var_0_108(var_0_14("У Вас уже есть биндер с активацией \"/") .. var_0_2.string(var_0_85.activation_binder) .. var_0_14("\", выберите другую команду для активации!"), 4000)

					var_0_85.showErrorBinder = true

					break
				end
			end

			if not var_0_85.showErrorBinder then
				if var_0_2.string(var_0_85.title_binder) ~= "" and var_0_2.string(var_0_85.content_binder) ~= "" then
					if var_0_2.string(var_0_85.activation_binder) ~= "" then
						if var_0_85.selectedBinderIndex then
							sampUnregisterChatCommand(var_0_18.active_binders[var_0_102[var_0_85.selectedBinderIndex].activation])

							if var_0_102[var_0_85.selectedBinderIndex].activation ~= var_0_2.string(var_0_85.activation_binder) then
								var_0_18.active_binders[var_0_2.string(var_0_85.activation_binder)] = var_0_18.active_binders[var_0_102[var_0_85.selectedBinderIndex].activation]
								var_0_18.binds[var_0_2.string(var_0_85.activation_binder)] = var_0_18.binds[var_0_102[var_0_85.selectedBinderIndex].activation]
								var_0_18.active_binders[var_0_102[var_0_85.selectedBinderIndex].activation] = nil
								var_0_18.binds[var_0_102[var_0_85.selectedBinderIndex].activation] = nil

								var_0_3.save(var_0_18, var_0_17)
							end

							sampRegisterChatCommand(var_0_102[var_0_85.selectedBinderIndex].activation, function()
								linebinder(var_0_102[var_0_85.selectedBinderIndex])
							end)

							var_0_102[var_0_85.selectedBinderIndex].title = var_0_2.string(var_0_85.title_binder)
							var_0_102[var_0_85.selectedBinderIndex].content = var_0_2.string(var_0_85.content_binder)
							var_0_102[var_0_85.selectedBinderIndex].activation = var_0_2.string(var_0_85.activation_binder)
							var_0_102[var_0_85.selectedBinderIndex].activation_text = var_0_2.string(var_0_85.activation_text_binder)

							saveJsonFile(var_0_94, var_0_102, 1)

							var_0_85.editBinderWinState[0] = false

							var_0_108(var_0_14("Изменения в биндере \"") .. var_0_2.string(var_0_85.title_binder) .. var_0_14("\" успешно сохранены!"), 3500)
						else
							var_0_108(var_0_14("Произошла ошибка в сохранении биндера \"") .. var_0_2.string(var_0_85.title_binder) .. "\"!", 4000)
						end
					else
						var_0_108(var_0_14("Вы не указали активацию биндера!"), 4000)
					end
				elseif var_0_2.string(var_0_85.title_binder) == "" then
					var_0_108(var_0_14("Вы не указали название биндера!"), 4000)
				elseif var_0_2.string(var_0_85.content_binder) == "" then
					var_0_108(var_0_14("Вы не указали действия биндера!"), 4000)
				end
			else
				var_0_85.showErrorBinder = false
			end
		end

		var_0_1.SameLine(0, 13)

		if var_0_1.Button(var_0_14("Теги"), var_0_1.ImVec2(124, 22)) then
			var_0_85.showBinderTagsWinState[0] = true
		end

		var_0_1.SameLine(0, 13)

		if var_0_1.Button(var_0_14("Удалить биндер"), var_0_1.ImVec2(150, 22)) then
			var_0_85.deleteBinderWinState[0] = true
		end
	end

	if var_0_85.deleteBinderWinState[0] then
		var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
		var_0_1.SetNextWindowSize(var_0_1.ImVec2(250, 165), var_0_1.Cond.Always)
		var_0_1.Begin(var_0_14("Удаление биндера"), _, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse)
		var_0_1.TextWrapped(var_0_14(" Вы точно хотите удалить биндер ") .. var_0_2.string(var_0_85.title_binder) .. "?")
		var_0_1.SetCursorPosX(30)
		var_0_1.SetCursorPosY(130)

		if var_0_1.Button(var_0_14("Да"), var_0_1.ImVec2(80, 25)) then
			if var_0_85.selectedBinderIndex and var_0_85.binder_state == "Редактирование" then
				var_0_18.active_binders[var_0_2.string(var_0_85.activation_binder)] = nil
				var_0_18.binds[var_0_2.string(var_0_85.activation_binder)] = nil

				var_0_3.save(var_0_18, var_0_17)
				sampUnregisterChatCommand(var_0_102[var_0_85.selectedBinderIndex].activation)
				table.remove(var_0_102, var_0_85.selectedBinderIndex)
				saveJsonFile(var_0_94, var_0_102, 1)

				var_0_85.binder_state = "Создание"

				var_0_108(var_0_14("Вы успешно удалили биндер \"") .. var_0_2.string(var_0_85.title_binder) .. "\"!", 3500)

				var_0_85.title_binder = var_0_15.char[256]()
				var_0_85.content_binder = var_0_15.char[131072]()
				var_0_85.activation_binder = var_0_15.char[256]()
				var_0_85.activation_text_binder = var_0_15.char[2048]()
				var_0_85.selectedBinderIndex = nil
				var_0_85.deleteBinderWinState[0] = false
				var_0_85.editBinderWinState[0] = false
			else
				var_0_108(var_0_14("Произошла ошибка в удалении биндера!"), 5000)
			end
		end

		var_0_1.SameLine(0, 30)

		if var_0_1.Button(var_0_14("Нет"), var_0_1.ImVec2(80, 25)) then
			var_0_85.deleteBinderWinState[0] = false
		end

		var_0_1.End()
	end

	var_0_1.PopStyleColor()
	var_0_1.PopStyleColor()
	var_0_1.PopStyleVar()
	var_0_1.End()
end)
var_0_1.OnFrame(function()
	return var_0_82.editRepButtonWinState[0]
end, function(arg_145_0)
	local var_145_0 = var_0_14("Создание кнопки ответа на репорт")
	local var_145_1
	local var_145_2 = var_0_82.editRepBtns == 1 and 230 or 479

	var_0_1.SetNextWindowPos(var_0_1.ImVec2(getScreenResolution() / 2, getScreenResolution() / 3.4), var_0_1.Cond.FirstUseEver, var_0_1.ImVec2(0.5, 0.5))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(475, var_145_2), var_0_1.Cond.Always)
	var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.GetStyle().Colors[var_0_1.Col.Separator])
	var_0_1.PushStyleVarFloat(var_0_1.StyleVar.WindowBorderSize, 1)
	var_0_1.Begin(var_145_0, nil, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse)
	var_0_1.PopStyleColor()

	if var_0_82.repButton_state == "Создание" then
		local var_145_3 = var_0_14("Создание кнопки ответа на репорт")

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 8)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("heading"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14("Название:"))
		var_0_1.SetNextItemWidth(121)
		var_0_1.SetCursorPosX(7)
		var_0_1.InputText("##Title", var_0_82.name_repButton, 256)
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("text"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14("Текст:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.SetNextItemWidth(461)
		var_0_1.InputText("##Content_repButton", var_0_82.content_repButton, 2048)
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("Теги:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("<my_name> - заменится на Ваше имя(Пример: ") .. getPlayerName(myNick()) .. ").")
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("<author_name> - заменится на имя автора репорта."))
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("<suspect_name> - заменится на имя нарушителя."))
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 10)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("code"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14("Действия после ответа:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.InputTextMultiline("##действия_реп", var_0_82.do_repbtns, 131072, var_0_1.ImVec2(461, 111))
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("Теги:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("<my_id> - заменится на Ваш ID(Пример: ") .. myId() .. ").")
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("<author_id> - заменится на ID автора репорта."))
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("<suspect_id> - заменится на ID нарушителя."))
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabledNew(var_0_14("<wait:(число в мс)> - задержка скрипта."))
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 10)
		var_0_1.SetCursorPosX(162.5)

		if var_0_1.Button(var_0_14("Создать кнопку"), var_0_1.ImVec2(150, 22)) then
			for iter_145_0, iter_145_1 in ipairs(var_0_100) do
				if var_0_2.string(var_0_82.name_repButton) == iter_145_1.name then
					var_0_108(var_0_14("У Вас уже есть кнопка с названием \"") .. var_0_2.string(var_0_82.name_repButton) .. var_0_14("\", выберите другое название!"), 4000)

					var_0_82.showErrorrepButton = true

					break
				end
			end

			if not var_0_82.showErrorrepButton then
				if var_0_2.string(var_0_82.name_repButton) ~= "" and var_0_2.string(var_0_82.content_repButton) ~= "" then
					table.insert(var_0_100, {
						name = var_0_2.string(var_0_82.name_repButton),
						content = var_0_2.string(var_0_82.content_repButton),
						deystv = var_0_2.string(var_0_82.do_repbtns)
					})
					saveJsonFile(var_0_93, var_0_100)
					var_0_108(var_0_14("Кнопка \"") .. var_0_2.string(var_0_82.name_repButton) .. var_0_14("\" успешно создана!"), 3500)

					var_0_82.name_repButton = var_0_15.char[256]()
					var_0_82.content_repButton = var_0_15.char[2048]()
					var_0_82.do_repbtns = var_0_15.char[131072]()
					var_0_82.editRepButtonWinState[0] = false
				elseif var_0_2.string(var_0_82.name_repButton) == "" then
					var_0_108(var_0_14("Вы не указали название кнопки!"), 4000)
				elseif var_0_2.string(var_0_82.content_repButton) == "" then
					var_0_108(var_0_14("Вы не указали действия кнопки!"), 4000)
				end
			else
				var_0_82.showErrorrepButton = false
			end
		end
	elseif var_0_82.repButton_state == "Редактирование" then
		local var_145_4 = var_0_14("Редактирование кнопки ответа на репорт")

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 8)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("heading"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Название:"))
		var_0_1.SetCursorPosX(7)

		if var_0_82.editRepBtns == 2 then
			var_0_1.SetNextItemWidth(121)
			var_0_1.InputText("##Title", var_0_82.name_repButton, 256)
		elseif var_0_82.editRepBtns == 1 then
			var_0_1.TextNew(var_0_2.string(var_0_82.name_repButton))
		end

		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 4)
		var_0_1.SetCursorPosX(7)
		var_0_1.Text(var_0_8("text"))
		var_0_1.SameLine()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
		var_0_1.TextNew(var_0_14(" Текст:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.SetNextItemWidth(461)
		var_0_1.InputText("##Content_repButton", var_0_82.content_repButton, 2048)
		var_0_1.PushFont(norm)
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabled(var_0_14("Теги:"))
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabled(var_0_14("<my_name> - заменится на Ваше имя(Пример: ") .. getPlayerName(myNick()) .. ").")
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabled(var_0_14("<author_name> - заменится на имя автора репорта."))
		var_0_1.SetCursorPosX(7)
		var_0_1.TextDisabled(var_0_14("<suspect_name> - заменится на имя нарушителя."))
		var_0_1.PopFont()
		var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 10)

		if var_0_82.editRepBtns == 2 then
			var_0_1.SetCursorPosX(7)
			var_0_1.Text(var_0_8("code"))
			var_0_1.SameLine()
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 4)
			var_0_1.TextNew(var_0_14("Действия после ответа:"))
			var_0_1.SetCursorPosX(7)
			var_0_1.InputTextMultiline("##действия_реп", var_0_82.do_repbtns, 131072, var_0_1.ImVec2(461, 111))
			var_0_1.SetCursorPosX(7)
			var_0_1.TextDisabledNew(var_0_14("Теги:"))
			var_0_1.SetCursorPosX(7)
			var_0_1.TextDisabledNew(var_0_14("<my_id> - заменится на Ваш ID(Пример: ") .. myId() .. ").")
			var_0_1.SetCursorPosX(7)
			var_0_1.TextDisabledNew(var_0_14("<author_id> - заменится на ID автора репорта."))
			var_0_1.SetCursorPosX(7)
			var_0_1.TextDisabledNew(var_0_14("<suspect_id> - заменится на ID нарушителя."))
			var_0_1.SetCursorPosX(7)
			var_0_1.TextDisabledNew(var_0_14("<wait:(число в мс)> - задержка скрипта."))
			var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 10)
		end

		if var_0_82.editRepBtns == 2 then
			var_0_1.SetCursorPosX(100)
		elseif var_0_82.editRepBtns == 1 then
			var_0_1.SetCursorPosX(162.5)
		end

		if var_0_82.editRepBtns == 1 and var_0_1.Button(var_0_14("Сохранить кнопку"), var_0_1.ImVec2(150, 22)) then
			if var_0_2.string(var_0_82.content_repButton) ~= "" then
				if var_0_2.string(var_0_82.name_repButton) == var_0_14("Слежу") then
					var_0_18.rep_btns.btn_1 = var_0_2.string(var_0_82.content_repButton)
				elseif var_0_2.string(var_0_82.name_repButton) == var_0_14("Спек за автором") then
					var_0_18.rep_btns.btn_2 = var_0_2.string(var_0_82.content_repButton)
				elseif var_0_2.string(var_0_82.name_repButton) == var_0_14("ТП к автору") then
					var_0_18.rep_btns.btn_3 = var_0_2.string(var_0_82.content_repButton)
				elseif var_0_2.string(var_0_82.name_repButton) == var_0_14("ЖБ форум") then
					var_0_18.rep_btns.btn_4 = var_0_2.string(var_0_82.content_repButton)
				end

				var_0_3.save(var_0_18, var_0_17)

				var_0_82.editRepButtonWinState[0] = false

				var_0_108(var_0_14("Изменения в кнопке \"") .. var_0_2.string(var_0_82.name_repButton) .. var_0_14("\" успешно сохранены!"), 3500)
			else
				var_0_108(var_0_14("Вы не указали действия кнопки!"), 4000)
			end
		end

		if var_0_82.editRepBtns == 2 then
			if var_0_1.Button(var_0_14("Сохранить кнопку"), var_0_1.ImVec2(150, 22)) then
				for iter_145_2, iter_145_3 in ipairs(var_0_100) do
					if var_0_2.string(var_0_82.name_repButton) == iter_145_3.name and iter_145_2 ~= var_0_82.selectedRepButtonIndex then
						var_0_108(var_0_14("У Вас уже есть кнопка с названием \"") .. var_0_2.string(var_0_82.name_repButton) .. var_0_14("\", выберите другое название!"), 4000)

						var_0_82.showErrorrepButton = true

						break
					end
				end

				if not var_0_82.showErrorrepButton then
					if var_0_2.string(var_0_82.name_repButton) ~= "" and var_0_2.string(var_0_82.content_repButton) ~= "" then
						if var_0_82.selectedRepButtonIndex then
							var_0_100[var_0_82.selectedRepButtonIndex].name = var_0_2.string(var_0_82.name_repButton)
							var_0_100[var_0_82.selectedRepButtonIndex].content = var_0_2.string(var_0_82.content_repButton)
							var_0_100[var_0_82.selectedRepButtonIndex].deystv = var_0_2.string(var_0_82.do_repbtns)

							saveJsonFile(var_0_93, var_0_100)

							var_0_82.editRepButtonWinState[0] = false

							var_0_108(var_0_14("Изменения в кнопке \"") .. var_0_2.string(var_0_82.name_repButton) .. var_0_14("\" успешно сохранены!"), 3500)
						else
							var_0_108(var_0_14("Произошла ошибка в сохранении кнопки \"") .. var_0_100[var_0_82.selectedRepButtonIndex].name .. "\"!", 4000)
						end
					elseif var_0_2.string(var_0_82.name_repButton) == "" then
						var_0_108(var_0_14("Вы не указали название кнопки!"), 4000)
					elseif var_0_2.string(var_0_82.content_repButton) == "" then
						var_0_108(var_0_14("Вы не указали действия кнопки!"), 4000)
					end
				else
					var_0_82.showErrorrepButton = false
				end
			end

			var_0_1.SameLine(0, 15)

			if var_0_1.Button(var_0_14(var_0_82.deleteBtnName_RepButton), var_0_1.ImVec2(121, 22)) then
				if var_0_82.deleteBtnName_RepButton == "Удалить кнопку" then
					var_0_82.deleteBtnName_RepButton = "Вы уверены?"
				elseif var_0_82.deleteBtnName_RepButton == "Вы уверены?" then
					if var_0_82.selectedRepButtonIndex and var_0_82.repButton_state == "Редактирование" then
						table.remove(var_0_100, var_0_82.selectedRepButtonIndex)
						saveJsonFile(var_0_93, var_0_100)

						var_0_82.repButton_state = "Создание"

						var_0_108(var_0_14("Вы успешно удалили кнопку \"") .. var_0_2.string(var_0_82.name_repButton) .. "\"!", 3500)

						var_0_82.name_repButton = var_0_15.char[256]()
						var_0_82.content_repButton = var_0_15.char[2048]()
						var_0_82.do_repbtns = var_0_15.char[131072]()
						var_0_82.selectedRepButtonIndex = nil
						var_0_82.editRepButtonWinState[0] = false
					else
						var_0_108(var_0_14("Произошла ошибка в удалении кнопки!"), 5000)
					end

					var_0_82.deleteBtnName_RepButton = "Удалить кнопку"
				end
			end
		end
	end

	var_0_1.PopStyleVar()
	var_0_1.End()
end)
var_0_1.OnFrame(function()
	return var_0_18.settings.adminchecker or var_0_18.settings.playerchecker and sampGetGamestate() == 3 and not isGamePaused() and not isPauseMenuActive()
end, function(arg_147_0)
	arg_147_0.HideCursor = true

	if var_0_18.settings.adminchecker and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_adminchecker) then
		local var_147_0 = {}
		local var_147_1 = {}
		local var_147_2 = {
			["(Администратор)"] = 2,
			["(Модератор)"] = 4,
			["(Мл.Администратор)"] = 3,
			["(Ст.Администратор)"] = 1,
			["(Мл.Модератор)"] = 5
		}
		local var_147_3 = {
			{},
			{},
			{},
			{},
			{}
		}

		for iter_147_0 in var_0_52:gmatch("[^\n]+") do
			local var_147_4
			local var_147_5
			local var_147_6
			local var_147_7
			local var_147_8

			if iter_147_0:match("AFK") and iter_147_0:match("SPEC") then
				var_147_4, var_147_5, var_147_6, var_147_7, var_147_8 = iter_147_0:match("{.+}(.+) {.+}%w+_%w+%[(%d+)%] (%d+)/3{.+} | {.+}SPEC: (%d+) {.+} | {.+}AFK: (%d+)")
			elseif iter_147_0:match("AFK") and not iter_147_0:match("SPEC") then
				var_147_4, var_147_5, var_147_6, var_147_8 = iter_147_0:match("{.+}(.+) {.+}%w+_%w+%[(%d+)%] (%d+)/3{.+}{.+} | {.+}AFK: (%d+)")
				var_147_7 = -1
			elseif not iter_147_0:match("AFK") and iter_147_0:match("SPEC") then
				var_147_4, var_147_5, var_147_6, var_147_7 = iter_147_0:match("{.+}(.+) {.+}%w+_%w+%[(%d+)%] (%d+)/3{.+} | {.+}SPEC: (%d+)")
				var_147_8 = -1
			elseif not iter_147_0:match("AFK") and not iter_147_0:match("SPEC") then
				var_147_4, var_147_5, var_147_6 = iter_147_0:match("{.+}(.+) {.+}%w+_%w+%[(%d+)%] (%d+)/3{.+}{.+}")
				var_147_7 = -1
				var_147_8 = -1
			end

			local var_147_9 = var_147_2[var_147_4]

			if var_147_9 and not var_147_1[tonumber(var_147_5)] then
				table.insert(var_147_3[var_147_9], {
					role = var_147_4,
					id = tonumber(var_147_5),
					warns = tonumber(var_147_6),
					afk = tonumber(var_147_8),
					spec = tonumber(var_147_7)
				})

				var_147_1[tonumber(var_147_5)] = true
			end
		end

		for iter_147_1, iter_147_2 in ipairs({
			1,
			2,
			3,
			4,
			5
		}) do
			for iter_147_3, iter_147_4 in ipairs(var_147_3[iter_147_2]) do
				table.insert(var_147_0, iter_147_4)
			end
		end

		local var_147_10 = var_0_1.GetBackgroundDrawList()
		local var_147_11 = var_0_18.settings.fontsize_checker_admins

		for iter_147_5, iter_147_6 in ipairs(var_0_53) do
			local var_147_12 = var_0_1.ImVec2(var_0_18.posXY.adminchecker_x + iter_147_6.x, var_0_18.posXY.adminchecker_y - var_147_11 + iter_147_6.y)

			var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_12, 4278190080, var_0_14("Администраторы в сети[Всего: ") .. #var_147_0 .. "]:")
		end

		var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_0_1.ImVec2(var_0_18.posXY.adminchecker_x, var_0_18.posXY.adminchecker_y - var_147_11), tonumber(var_0_18.color_editor.clr_admins_online), var_0_14("Администраторы в сети[Всего: ") .. #var_147_0 .. "]:")

		for iter_147_7, iter_147_8 in ipairs(var_147_0) do
			if var_0_14(getPlayerNicknameById(iter_147_8.id)) ~= var_0_14("Игрок с таким ID не подключен.") then
				local var_147_13 = var_0_1.ImVec2(var_0_18.posXY.adminchecker_x, var_0_18.posXY.adminchecker_y)

				for iter_147_9 = 2, iter_147_7 do
					var_147_13.y = var_147_13.y + var_147_11 + 1
				end

				for iter_147_10, iter_147_11 in ipairs(var_0_53) do
					local var_147_14 = var_0_1.ImVec2(var_147_13.x + iter_147_11.x, var_147_13.y + iter_147_11.y)

					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_14, 4278190080, var_0_14(iter_147_8.role))
				end

				local var_147_15

				var_0_1.PushFont(var_0_75[var_147_11])

				if iter_147_8.role == "(Мл.Модератор)" then
					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_13, tonumber(var_0_18.color_editor.alvl1), var_0_14(iter_147_8.role))

					var_147_15 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role)).x
				elseif iter_147_8.role == "(Модератор)" then
					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_13, tonumber(var_0_18.color_editor.alvl2), var_0_14(iter_147_8.role))

					var_147_15 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role)).x
				elseif iter_147_8.role == "(Мл.Администратор)" then
					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_13, tonumber(var_0_18.color_editor.alvl3), var_0_14(iter_147_8.role))

					var_147_15 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role)).x
				elseif iter_147_8.role == "(Администратор)" then
					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_13, tonumber(var_0_18.color_editor.alvl4), var_0_14(iter_147_8.role))

					var_147_15 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role)).x
				elseif iter_147_8.role == "(Ст.Администратор)" then
					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_13, tonumber(var_0_18.color_editor.alvl5), var_0_14(iter_147_8.role))

					var_147_15 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role)).x
				elseif iter_147_8.role == "(YouTube)" then
					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_13, tonumber(var_0_18.color_editor.alvlyt), var_0_14(iter_147_8.role))

					var_147_15 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role)).x
				else
					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_13, 4294967295, var_0_14(iter_147_8.role))

					var_147_15 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role)).x
				end

				var_0_1.PopFont()

				for iter_147_12, iter_147_13 in ipairs(var_0_53) do
					local var_147_16 = var_0_1.ImVec2(var_147_13.x + iter_147_13.x + var_147_15 + var_147_11 / 4, var_147_13.y + iter_147_13.y)

					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_16, 4278190080, getPlayerNicknameById(iter_147_8.id) .. "[" .. iter_147_8.id .. "]" .. " " .. iter_147_8.warns .. "/3")
				end

				var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_0_1.ImVec2(var_147_13.x + var_147_15 + var_147_11 / 4, var_147_13.y), 4294967295, getPlayerNicknameById(iter_147_8.id) .. "[" .. iter_147_8.id .. "]" .. " " .. iter_147_8.warns .. "/3")

				if iter_147_8.spec ~= -1 then
					var_0_1.PushFont(var_0_75[var_147_11])

					local var_147_17 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role) .. getPlayerNicknameById(iter_147_8.id) .. "[" .. iter_147_8.id .. "]" .. " " .. iter_147_8.warns .. "/3").x + var_147_11 / 4

					var_0_1.PopFont()

					for iter_147_14, iter_147_15 in ipairs(var_0_53) do
						local var_147_18 = var_0_1.ImVec2(var_147_13.x + iter_147_15.x + var_147_17, var_147_13.y + iter_147_15.y)

						var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_18, 4278190080, var_0_14(" | SPEC: " .. iter_147_8.spec))
					end

					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_0_1.ImVec2(var_147_13.x + var_147_17, var_147_13.y), tonumber(var_0_18.color_editor.clr_spec), var_0_14(" | SPEC: " .. iter_147_8.spec))
				end

				if iter_147_8.afk ~= -1 then
					var_0_1.PushFont(var_0_75[var_147_11])

					local var_147_19

					if iter_147_8.spec ~= -1 then
						var_147_19 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role) .. getPlayerNicknameById(iter_147_8.id) .. "[" .. iter_147_8.id .. "]" .. " " .. iter_147_8.warns .. "/3" .. var_0_14(" | SPEC: " .. iter_147_8.spec)).x + var_147_11 / 4
					else
						var_147_19 = var_0_1.CalcTextSize(var_0_14(iter_147_8.role) .. getPlayerNicknameById(iter_147_8.id) .. "[" .. iter_147_8.id .. "]" .. " " .. iter_147_8.warns .. "/3").x + var_147_11 / 4
					end

					var_0_1.PopFont()

					for iter_147_16, iter_147_17 in ipairs(var_0_53) do
						local var_147_20 = var_0_1.ImVec2(var_147_13.x + iter_147_17.x + var_147_19, var_147_13.y + iter_147_17.y)

						var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_147_20, 4278190080, var_0_14(" | AFK: " .. iter_147_8.afk))
					end

					var_147_10:AddTextFontPtr(var_0_75[var_147_11], var_147_11, var_0_1.ImVec2(var_147_13.x + var_147_19, var_147_13.y), tonumber(var_0_18.color_editor.clr_afk), var_0_14(" | AFK: " .. iter_147_8.afk))
				end
			end
		end
	end

	if var_0_18.settings.playerchecker and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_playerchecker) then
		local var_147_21 = var_0_1.GetBackgroundDrawList()
		local var_147_22 = var_0_18.settings.fontsize_checker_players
		local var_147_23 = {}

		if var_0_70.sampLoaded then
			for iter_147_18 = 0, sampGetMaxPlayerId(false) do
				if sampIsPlayerConnected(iter_147_18) then
					for iter_147_19, iter_147_20 in ipairs(var_0_103) do
						if var_0_103[iter_147_19].nick == sampGetPlayerNickname(iter_147_18):gsub("%[.+%]", "") then
							table.insert(var_147_23, {
								id = iter_147_18
							})
						end
					end
				end
			end
		end

		for iter_147_21, iter_147_22 in ipairs(var_0_53) do
			local var_147_24 = var_0_1.ImVec2(var_0_18.posXY.playerchecker_x + iter_147_22.x, var_0_18.posXY.playerchecker_y - var_147_22 + iter_147_22.y)

			var_147_21:AddTextFontPtr(var_0_75[var_147_22], var_147_22, var_147_24, 4278190080, var_0_14("Игроки в сети[Всего: ") .. #var_147_23 .. "]:")
		end

		var_147_21:AddTextFontPtr(var_0_75[var_147_22], var_147_22, var_0_1.ImVec2(var_0_18.posXY.playerchecker_x, var_0_18.posXY.playerchecker_y - var_147_22), tonumber(var_0_18.color_editor.clr_players_online), var_0_14("Игроки в сети[Всего: ") .. #var_147_23 .. "]:")

		for iter_147_23, iter_147_24 in ipairs(var_147_23) do
			local var_147_25 = var_0_1.ImVec2(var_0_18.posXY.playerchecker_x, var_0_18.posXY.playerchecker_y)

			for iter_147_25 = 2, iter_147_23 do
				var_147_25.y = var_147_25.y + var_147_22 + 1
			end

			for iter_147_26, iter_147_27 in ipairs(var_0_53) do
				local var_147_26 = var_0_1.ImVec2(var_147_25.x + iter_147_27.x, var_147_25.y + iter_147_27.y)

				var_147_21:AddTextFontPtr(var_0_75[var_147_22], var_147_22, var_147_26, 4278190080, string.format("%s[%d]", getPlayerNicknameById(iter_147_24.id) or "error", iter_147_24.id or -1))
			end

			var_147_21:AddTextFontPtr(var_0_75[var_147_22], var_147_22, var_147_25, 4294967295, string.format("%s[%d]", getPlayerNicknameById(iter_147_24.id) or "error", iter_147_24.id or -1))
		end
	end
end)

local var_0_120 = var_0_1.OnFrame(function()
	return #var_0_60 ~= 0 and not isPauseMenuActive() and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_traisers)
end, function(arg_149_0)
	arg_149_0.HideCursor = true

	local var_149_0 = var_0_1.GetBackgroundDrawList()

	for iter_149_0 = #var_0_60, 1, -1 do
		local var_149_1 = {
			x = bringFloatTo(var_0_60[iter_149_0].origin.x, var_0_60[iter_149_0].target.x, var_0_60[iter_149_0].clock, var_0_60[iter_149_0].transition),
			y = bringFloatTo(var_0_60[iter_149_0].origin.y, var_0_60[iter_149_0].target.y, var_0_60[iter_149_0].clock, var_0_60[iter_149_0].transition),
			z = bringFloatTo(var_0_60[iter_149_0].origin.z, var_0_60[iter_149_0].target.z, var_0_60[iter_149_0].clock, var_0_60[iter_149_0].transition)
		}
		local var_149_2, var_149_3, var_149_4, var_149_5, var_149_6, var_149_7 = convert3DCoordsToScreenEx(var_0_60[iter_149_0].origin.x, var_0_60[iter_149_0].origin.y, var_0_60[iter_149_0].origin.z, false, false)
		local var_149_8, var_149_9, var_149_10, var_149_11, var_149_12, var_149_13 = convert3DCoordsToScreenEx(var_149_1.x, var_149_1.y, var_149_1.z, false, false)
		local var_149_14 = var_0_1.ImVec4(var_0_60[iter_149_0].col4[0], var_0_60[iter_149_0].col4[1], var_0_60[iter_149_0].col4[2], var_0_60[iter_149_0].alpha)

		if var_149_5 > 0 and var_149_11 > 0 then
			var_149_0:AddLine(var_0_1.ImVec2(var_149_3, var_149_4), var_0_1.ImVec2(var_149_9, var_149_10), var_0_1.GetColorU32Vec4(var_149_14), var_0_60[iter_149_0].thickness)

			if var_0_60[iter_149_0].draw_polygon then
				var_149_0:AddCircleFilled(var_0_1.ImVec2(var_149_9, var_149_10), var_0_60[iter_149_0].circle_radius, var_0_1.GetColorU32Vec4(var_149_14), var_0_60[iter_149_0].degree_polygon)
			end
		elseif var_149_5 <= 0 and var_149_11 > 0 then
			local var_149_15 = getFixScreenPos(var_149_1, var_0_60[iter_149_0].origin, var_149_11)
			local var_149_16, var_149_17, var_149_18

			var_149_16, var_149_3, var_149_4, var_149_5, var_149_17, var_149_18 = convert3DCoordsToScreenEx(var_149_15.x, var_149_15.y, var_149_15.z, false, false)

			var_149_0:AddLine(var_0_1.ImVec2(var_149_3, var_149_4), var_0_1.ImVec2(var_149_9, var_149_10), var_0_1.GetColorU32Vec4(var_149_14), var_0_60[iter_149_0].thickness)

			if var_0_60[iter_149_0].draw_polygon then
				var_149_0:AddCircleFilled(var_0_1.ImVec2(var_149_9, var_149_10), var_0_60[iter_149_0].circle_radius, var_0_1.GetColorU32Vec4(var_149_14), var_0_60[iter_149_0].degree_polygon)
			end
		elseif var_149_5 > 0 and var_149_11 <= 0 then
			local var_149_19 = getFixScreenPos(var_0_60[iter_149_0].origin, var_149_1, var_149_5)
			local var_149_20, var_149_21, var_149_22, var_149_23, var_149_24, var_149_25 = convert3DCoordsToScreenEx(var_149_19.x, var_149_19.y, var_149_19.z, false, false)

			var_149_0:AddLine(var_0_1.ImVec2(var_149_3, var_149_4), var_0_1.ImVec2(var_149_21, var_149_22), var_0_1.GetColorU32Vec4(var_149_14), var_0_60[iter_149_0].thickness)
		end

		if os.clock() - var_0_60[iter_149_0].clock > var_0_60[iter_149_0].timer and var_0_60[iter_149_0].alpha > 0 then
			var_0_60[iter_149_0].alpha = var_0_60[iter_149_0].alpha - var_0_60[iter_149_0].step_alpha
		end

		if var_0_60[iter_149_0].alpha <= 0 then
			table.remove(var_0_60, iter_149_0)

			if #var_0_60 == 0 then
				break
			end
		end
	end
end)

function getFixScreenPos(arg_150_0, arg_150_1, arg_150_2)
	arg_150_2 = math.abs(arg_150_2)

	local var_150_0 = {
		x = arg_150_1.x - arg_150_0.x,
		y = arg_150_1.y - arg_150_0.y,
		z = arg_150_1.z - arg_150_0.z
	}
	local var_150_1 = math.sqrt(var_150_0.x * var_150_0.x + var_150_0.y * var_150_0.y + var_150_0.z * var_150_0.z)
	local var_150_2 = {
		x = var_150_0.x / var_150_1,
		y = var_150_0.y / var_150_1,
		z = var_150_0.z / var_150_1
	}

	return {
		x = arg_150_0.x + var_150_2.x * arg_150_2,
		y = arg_150_0.y + var_150_2.y * arg_150_2,
		z = arg_150_0.z + var_150_2.z * arg_150_2
	}
end

local function var_0_121(arg_151_0, arg_151_1)
	if arg_151_1 == 1 then
		if arg_151_0 == 0 then
			return var_0_61.my_bullets.col_vec4.stats
		elseif arg_151_0 == 1 then
			return var_0_61.my_bullets.col_vec4.ped
		elseif arg_151_0 == 2 then
			return var_0_61.my_bullets.col_vec4.car
		elseif arg_151_0 == 3 then
			return var_0_61.my_bullets.col_vec4.dynam
		elseif arg_151_0 == 4 then
			return var_0_61.my_bullets.col_vec4.dynam
		else
			return var_0_61.my_bullets.col_vec4.unknown
		end
	elseif arg_151_1 == 2 then
		if arg_151_0 == 0 then
			return var_0_61.other_bullets.col_vec4.stats
		elseif arg_151_0 == 1 then
			return var_0_61.other_bullets.col_vec4.ped
		elseif arg_151_0 == 2 then
			return var_0_61.other_bullets.col_vec4.car
		elseif arg_151_0 == 3 then
			return var_0_61.other_bullets.col_vec4.dynam
		elseif arg_151_0 == 4 then
			return var_0_61.other_bullets.col_vec4.dynam
		else
			return var_0_61.other_bullets.col_vec4.unknown
		end
	end
end

function var_0_9.onSendBulletSync(arg_152_0)
	if var_0_18.settings.traisers and var_0_18.my_bullets.draw and arg_152_0.center.x ~= 0 and arg_152_0.center.y ~= 0 and arg_152_0.center.z ~= 0 then
		local var_152_0 = var_0_121(arg_152_0.targetType, 1)

		var_0_60[#var_0_60 + 1] = {
			clock = os.clock(),
			timer = var_0_61.my_bullets.timer[0],
			col4 = var_152_0,
			alpha = var_152_0[3],
			origin = {
				x = arg_152_0.origin.x,
				y = arg_152_0.origin.y,
				z = arg_152_0.origin.z
			},
			target = {
				x = arg_152_0.target.x,
				y = arg_152_0.target.y,
				z = arg_152_0.target.z
			},
			transition = var_0_61.my_bullets.transition[0],
			thickness = var_0_61.my_bullets.thickness[0],
			circle_radius = var_0_61.my_bullets.circle_radius[0],
			step_alpha = var_0_61.my_bullets.step_alpha[0],
			degree_polygon = var_0_61.my_bullets.degree_polygon[0],
			draw_polygon = var_0_61.my_bullets.draw_polygon[0]
		}
	end
end

function var_0_9.onBulletSync(arg_153_0, arg_153_1)
	if var_0_18.settings.traisers and var_0_18.other_bullets.draw and arg_153_1.center.x ~= 0 and arg_153_1.center.y ~= 0 and arg_153_1.center.z ~= 0 then
		local var_153_0 = var_0_121(arg_153_1.targetType, 2)

		var_0_60[#var_0_60 + 1] = {
			clock = os.clock(),
			timer = var_0_61.other_bullets.timer[0],
			col4 = var_153_0,
			alpha = var_153_0[3],
			origin = {
				x = arg_153_1.origin.x,
				y = arg_153_1.origin.y,
				z = arg_153_1.origin.z
			},
			target = {
				x = arg_153_1.target.x,
				y = arg_153_1.target.y,
				z = arg_153_1.target.z
			},
			transition = var_0_61.other_bullets.transition[0],
			thickness = var_0_61.other_bullets.thickness[0],
			circle_radius = var_0_61.other_bullets.circle_radius[0],
			step_alpha = var_0_61.other_bullets.step_alpha[0],
			degree_polygon = var_0_61.other_bullets.degree_polygon[0],
			draw_polygon = var_0_61.other_bullets.draw_polygon[0]
		}
	end
end

function var_0_9.onPlayerChatBubble(arg_154_0, arg_154_1, arg_154_2, arg_154_3, arg_154_4)
	if arg_154_1 ~= -65281 then
		while #var_0_34.far_chat_messages >= var_0_18.settings.far_chat_lines do
			table.remove(var_0_34.far_chat_messages, 1)
		end

		local var_154_0, var_154_1 = sampGetCharHandleBySampPlayerId(arg_154_0)

		if var_154_0 then
			local var_154_2, var_154_3, var_154_4 = getCharCoordinates(PLAYER_PED)
			local var_154_5, var_154_6, var_154_7 = getCharCoordinates(var_154_1)

			if arg_154_2 < getDistanceBetweenCoords3d(var_154_2, var_154_3, var_154_4, var_154_5, var_154_6, var_154_7) then
				table.insert(var_0_34.far_chat_messages, {
					nick = sampGetPlayerNickname(arg_154_0),
					id = arg_154_0,
					text = arg_154_4,
					clr = arg_154_1,
					dist = arg_154_2,
					timestamp = os.date("%H:%M:%S")
				})
			end
		end
	end
end

var_0_1.OnFrame(function()
	return var_0_18.settings.far_chat and sampGetGamestate() == 3 and not isGamePaused() and not isPauseMenuActive() and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_far_chat)
end, function(arg_156_0)
	arg_156_0.HideCursor = true

	local var_156_0 = var_0_1.GetBackgroundDrawList()
	local var_156_1 = var_0_18.settings.far_chat_fontsize
	local var_156_2 = var_0_1.ImVec2(var_0_18.posXY.far_chat_x, var_0_18.posXY.far_chat_y)

	for iter_156_0, iter_156_1 in ipairs(var_0_53) do
		local var_156_3 = var_0_1.ImVec2(var_156_2.x + iter_156_1.x, var_156_2.y + iter_156_1.y)

		var_156_0:AddTextFontPtr(var_0_75[var_156_1], var_156_1, var_156_3, 4278190080, var_0_14("MATools | Дальний чат:"))
	end

	var_156_0:AddTextFontPtr(var_0_75[var_156_1], var_156_1, var_156_2, tonumber(var_0_18.color_editor.clr_far_chat), var_0_14("MATools | Дальний чат:"))

	for iter_156_2, iter_156_3 in ipairs(var_0_34.far_chat_messages) do
		local var_156_4 = var_0_1.ImVec2(var_0_18.posXY.far_chat_x, var_0_18.posXY.far_chat_y)

		for iter_156_4 = 1, iter_156_2 do
			var_156_4.y = var_156_4.y + var_156_1
		end

		local var_156_5
		local var_156_6
		local var_156_8

		if iter_156_3.clr == -859006465 then
			local var_156_7 = iter_156_3.text:match("%(%( (.+) %)%)")

			var_156_5 = "(( " .. iter_156_3.nick .. "[" .. iter_156_3.id .. "]: " .. var_0_14(var_156_7) .. " ))"
			var_156_8 = -259006505
		elseif iter_156_3.clr == -577699926 then
			var_156_5 = iter_156_3.nick .. "[" .. iter_156_3.id .. "] " .. var_0_14(iter_156_3.text)
			var_156_8 = -22529
		elseif iter_156_3.clr == -4881153 then
			var_156_5 = iter_156_3.nick .. "[" .. iter_156_3.id .. var_0_14("] кричит: ") .. var_0_14(iter_156_3.text)
			var_156_8 = -611859713
		elseif tonumber(iter_156_3.dist) < 2 then
			var_156_5 = iter_156_3.nick .. "[" .. iter_156_3.id .. var_0_14("] шепчет: ") .. var_0_14(iter_156_3.text)
			var_156_8 = -259006512
		else
			var_156_5 = iter_156_3.nick .. "[" .. iter_156_3.id .. "]: " .. var_0_14(iter_156_3.text)
			var_156_8 = 4294967295
		end

		local var_156_9

		if var_0_18.settings.far_chat_timestamp then
			var_156_9 = "[" .. iter_156_3.timestamp .. "] " .. var_156_5
		else
			var_156_9 = var_156_5
		end

		for iter_156_5, iter_156_6 in ipairs(var_0_53) do
			local var_156_10 = var_0_1.ImVec2(var_156_4.x + iter_156_6.x, var_156_4.y + iter_156_6.y)

			var_156_0:AddTextFontPtr(var_0_75[var_156_1], var_156_1, var_156_10, 4278190080, var_156_9)
		end

		var_156_0:AddTextFontPtr(var_0_75[var_156_1], var_156_1, var_156_4, var_156_8, var_156_9)
	end
end)
var_0_1.OnFrame(function()
	return var_0_18.settings.monitoring and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_monitoring)
end, function(arg_158_0)
	arg_158_0.HideCursor = true

	local var_158_0 = var_0_1.GetBackgroundDrawList()
	local var_158_1 = var_0_18.settings.monitoring_fontsize
	local var_158_2 = var_0_1.ImVec2(var_0_18.posXY.monitoring_x, var_0_18.posXY.monitoring_y)

	for iter_158_0, iter_158_1 in ipairs(var_0_53) do
		local var_158_3 = var_0_1.ImVec2(var_158_2.x + iter_158_1.x, var_158_2.y + iter_158_1.y)

		var_158_0:AddTextFontPtr(var_0_75[var_158_1], var_158_1, var_158_3, 4278190080, var_0_14("MATools | Мониторинг:"))
	end

	var_158_0:AddTextFontPtr(var_0_75[var_158_1], var_158_1, var_158_2, tonumber(var_0_18.color_editor.clr_monitoring), var_0_14("MATools | Мониторинг:"))

	for iter_158_2, iter_158_3 in ipairs(var_0_34.monitoring_log) do
		local var_158_4 = var_0_1.ImVec2(var_0_18.posXY.monitoring_x, var_0_18.posXY.monitoring_y)

		for iter_158_4 = 1, iter_158_2 do
			var_158_4.y = var_158_4.y + var_158_1
		end

		local var_158_5

		if var_0_18.settings.monitoring_timestamp then
			var_158_5 = "[" .. iter_158_3.timestamp .. "] " .. iter_158_3.nick .. "[" .. iter_158_3.id .. "]"
		else
			var_158_5 = iter_158_3.nick .. "[" .. iter_158_3.id .. "]"
		end

		local var_158_6

		if iter_158_3.type == "join" then
			var_158_6 = tonumber(var_0_18.color_editor.clr_monitoring_join)
		elseif iter_158_3.type == "quit" then
			if iter_158_3.reason == 0 then
				var_158_6 = tonumber(var_0_18.color_editor.clr_monitoring_quit0)
			elseif iter_158_3.reason == 2 then
				var_158_6 = tonumber(var_0_18.color_editor.clr_monitoring_quit2)
			else
				var_158_6 = tonumber(var_0_18.color_editor.clr_monitoring_quit1)
			end
		end

		for iter_158_5, iter_158_6 in ipairs(var_0_53) do
			local var_158_7 = var_0_1.ImVec2(var_158_4.x + iter_158_6.x, var_158_4.y + iter_158_6.y)

			var_158_0:AddTextFontPtr(var_0_75[var_158_1], var_158_1, var_158_7, 4278190080, var_158_5)
		end

		var_158_0:AddTextFontPtr(var_0_75[var_158_1], var_158_1, var_158_4, var_158_6, var_158_5)

		local var_158_8, var_158_9 = getCursorPos()

		var_0_1.PushFont(var_0_75[var_158_1])

		if var_158_8 > var_158_4.x and var_158_8 < var_158_4.x + var_0_1.CalcTextSize(var_158_5).x and var_158_9 > var_158_4.y and var_158_9 < var_158_4.y + var_158_1 then
			var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))
			var_0_1.BeginTooltip()
			var_0_1.Text(var_0_14("ID: ") .. iter_158_3.id)
			var_0_1.Text(var_0_14("Ник: ") .. iter_158_3.nick)

			if iter_158_3.type == "join" then
				var_0_1.Text(var_0_14("Событие: Подключился"))
			else
				var_0_1.Text(var_0_14("Событие: Отключился"))

				local var_158_10 = iter_158_3.reason == 0 and var_0_14("Краш/Потеря связи") or iter_158_3.reason == 2 and var_0_14("Кик/Бан") or iter_158_3.reason == 1 and var_0_14("Вышел сам(/quit)")

				var_0_1.Text(var_0_14("Причина: ") .. var_158_10)
			end

			var_0_1.EndTooltip()
			var_0_1.PopStyleVar()

			if var_0_1.IsMouseClicked(1) then
				local var_158_11 = iter_158_3.nick:match("([^%[%]]+)") or iter_158_3.nick

				lua_thread.create(function()
					setLanguage("00000419")
					wait(111)
					setClipboardText(var_158_11)
					var_0_108(var_0_14("Вы успешно скопировали: \"") .. var_0_14(var_158_11) .. "\"!", 1111)
				end)
			elseif var_0_1.IsMouseClicked(0) and sampIsPlayerConnected(iter_158_3.id) then
				if isCharInAnyCar(PLAYER_PED) then
					local function var_158_12()
						local var_160_0, var_160_1, var_160_2 = getCarCoordinates(storeCarCharIsInNoSave(PLAYER_PED))

						warpCharFromCarToCoord(PLAYER_PED, var_160_0, var_160_1, var_160_2)
						wait(370)
						sampSendChat("/sp " .. iter_158_3.id)
					end

					lua_thread.create(var_158_12)
				else
					sampSendChat("/sp " .. iter_158_3.id)
				end
			end
		end

		var_0_1.PopFont()
	end
end)
var_0_1.OnFrame(function()
	return var_0_29.wh and sampGetGamestate() == 3 and not isGamePaused() and not isPauseMenuActive() and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_cheats)
end, function(arg_162_0)
	arg_162_0.HideCursor = true

	local var_162_0 = var_0_1.GetBackgroundDrawList()

	for iter_162_0 = 0, sampGetMaxPlayerId(false) do
		if sampIsPlayerConnected(iter_162_0) then
			local var_162_1, var_162_2 = sampGetCharHandleBySampPlayerId(iter_162_0)

			if var_162_1 and doesCharExist(var_162_2) then
				local var_162_3 = getCharModel(var_162_2)
				local var_162_4, var_162_5, var_162_6 = getCharCoordinates(var_162_2)
				local var_162_7, var_162_8 = convert3DCoordsToScreen(var_162_4, var_162_5, var_162_6)
				local var_162_9, var_162_10, var_162_11 = getCharCoordinates(playerPed)
				local var_162_12, var_162_13 = convert3DCoordsToScreen(var_162_9, var_162_10, var_162_11)
				local var_162_14 = getDistanceBetweenCoords3d(var_162_4, var_162_5, var_162_6, var_162_9, var_162_10, var_162_11)

				if isPointOnScreen(var_162_4, var_162_5, var_162_6, 0) then
					if var_0_18.settings.wallhack_kvadrat then
						local var_162_15 = {}
						local var_162_16, var_162_17, var_162_18 = getModelDimensions(var_162_3)
						local var_162_19, var_162_20, var_162_21 = getOffsetFromCharInWorldCoords(var_162_2, var_162_16, -var_162_17, var_162_18)
						local var_162_22, var_162_23 = convert3DCoordsToScreen(var_162_19, var_162_20, var_162_21)

						table.insert(var_162_15, var_0_1.ImVec2(var_162_22, var_162_23))

						local var_162_24, var_162_25, var_162_26 = getModelDimensions(var_162_3)
						local var_162_27, var_162_28, var_162_29 = getOffsetFromCharInWorldCoords(var_162_2, -var_162_24, -var_162_25, var_162_26)
						local var_162_30, var_162_31 = convert3DCoordsToScreen(var_162_27, var_162_28, var_162_29)

						table.insert(var_162_15, var_0_1.ImVec2(var_162_30, var_162_31))

						local var_162_32, var_162_33, var_162_34 = getModelDimensions(var_162_3)
						local var_162_35, var_162_36, var_162_37 = getOffsetFromCharInWorldCoords(var_162_2, -var_162_32, var_162_33, var_162_34)
						local var_162_38, var_162_39 = convert3DCoordsToScreen(var_162_35, var_162_36, var_162_37)

						table.insert(var_162_15, var_0_1.ImVec2(var_162_38, var_162_39))

						local var_162_40, var_162_41, var_162_42 = getModelDimensions(var_162_3)
						local var_162_43, var_162_44, var_162_45 = getOffsetFromCharInWorldCoords(var_162_2, var_162_40, var_162_41, var_162_42)
						local var_162_46, var_162_47 = convert3DCoordsToScreen(var_162_43, var_162_44, var_162_45)

						table.insert(var_162_15, var_0_1.ImVec2(var_162_46, var_162_47))

						local var_162_48 = var_0_2.new("ImVec2[?]", #var_162_15)

						for iter_162_1 = 0, #var_162_15 - 1 do
							var_162_48[iter_162_1] = var_162_15[iter_162_1 + 1]
						end

						var_162_0:AddPolyline(var_162_48, #var_162_15, var_0_18.color_editor.wh_kvadrat_color, true, 1)
					end

					if var_0_18.settings.wallhack_line then
						var_162_0:AddLine(var_0_1.ImVec2(var_162_12, var_162_13), var_0_1.ImVec2(var_162_7, var_162_8), var_0_18.color_editor.wh_line_color, 1)
						var_162_0:AddCircleFilled(var_0_1.ImVec2(var_162_7, var_162_8), 2.5, var_0_18.color_editor.wh_line_color)
					end

					if var_0_18.settings.wallhack_skelet then
						local var_162_49 = {
							3,
							4,
							5,
							51,
							52,
							41,
							42,
							31,
							32,
							33,
							21,
							22,
							23,
							2
						}

						for iter_162_2 = 1, #var_162_49 do
							pos1X, pos1Y, pos1Z = getBodyPartCoordinates(var_162_49[iter_162_2], var_162_2)
							pos2X, pos2Y, pos2Z = getBodyPartCoordinates(var_162_49[iter_162_2] + 1, var_162_2)
							pos1, pos2 = convert3DCoordsToScreen(pos1X, pos1Y, pos1Z)
							pos3, pos4 = convert3DCoordsToScreen(pos2X, pos2Y, pos2Z)

							var_162_0:AddLine(var_0_1.ImVec2(pos1, pos2), var_0_1.ImVec2(pos3, pos4), var_0_18.color_editor.wh_skelet_color, 2)
						end

						for iter_162_3 = 4, 5 do
							pos2X, pos2Y, pos2Z = getBodyPartCoordinates(iter_162_3 * 10 + 1, var_162_2)
							pos3, pos4 = convert3DCoordsToScreen(pos2X, pos2Y, pos2Z)

							var_162_0:AddLine(var_0_1.ImVec2(pos1, pos2), var_0_1.ImVec2(pos3, pos4), var_0_18.color_editor.wh_skelet_color, 2)
						end

						local var_162_50 = {
							53,
							43,
							24,
							34,
							6
						}

						for iter_162_4 = 1, #var_162_50 do
							posX, posY, posZ = getBodyPartCoordinates(var_162_50[iter_162_4], var_162_2)
							pos1, pos2 = convert3DCoordsToScreen(posX, posY, posZ)
						end
					end
				end
			end
		end
	end
end)
var_0_1.OnFrame(function()
	return var_0_18.settings.obj_wh and var_0_29.obj_wh and sampGetGamestate() == 3 and not isGamePaused() and not isPauseMenuActive() and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_cheats)
end, function(arg_164_0)
	arg_164_0.HideCursor = true

	local var_164_0 = var_0_1.GetBackgroundDrawList()
	local var_164_1 = 999

	if var_0_18.settings.obj_wh_radius then
		var_164_1 = var_0_27.radius_obj_wh[0]
	end

	for iter_164_0, iter_164_1 in pairs(getAllObjects()) do
		local var_164_2

		if sampGetObjectSampIdByHandle(iter_164_1) ~= -1 then
			var_164_2 = sampGetObjectSampIdByHandle(iter_164_1)
		end

		if isObjectOnScreen(iter_164_1) then
			local var_164_3, var_164_4, var_164_5, var_164_6 = getObjectCoordinates(iter_164_1)
			local var_164_7, var_164_8 = convert3DCoordsToScreen(var_164_4, var_164_5, var_164_6)
			local var_164_9 = getObjectModel(iter_164_1)
			local var_164_10, var_164_11, var_164_12 = getCharCoordinates(PLAYER_PED)
			local var_164_13, var_164_14 = convert3DCoordsToScreen(var_164_10, var_164_11, var_164_12)
			local var_164_15 = string.format("%.1f", getDistanceBetweenCoords3d(var_164_4, var_164_5, var_164_6, var_164_10, var_164_11, var_164_12))

			if isPointOnScreen(var_164_4, var_164_5, var_164_6, 0) and var_164_1 >= tonumber(var_164_15) then
				if var_0_18.settings.obj_wh_all and (not var_0_18.settings.obj_wh_all_ignore or var_0_18.settings.obj_wh_all_ignore and not var_0_18.ignore_objects["model" .. var_164_9]) then
					local var_164_16 = (var_164_2 and "id: " .. var_164_2 .. "; model: " .. var_164_9 or "model: " .. var_164_9) .. "; distance: " .. var_164_15

					var_164_0:AddText(var_0_1.ImVec2(var_164_7 - 20, var_164_8), var_0_18.color_editor.obj_wh_text_color, var_164_16)

					if var_0_18.settings.obj_wh_line then
						var_164_0:AddLine(var_0_1.ImVec2(var_164_13, var_164_14), var_0_1.ImVec2(var_164_7, var_164_8), var_0_18.color_editor.obj_wh_line_color, 1.2)
						var_164_0:AddCircleFilled(var_0_1.ImVec2(var_164_7, var_164_8), 3, var_0_18.color_editor.obj_wh_line_color)
					end
				elseif var_0_18.settings.obj_wh_conditions then
					for iter_164_2, iter_164_3 in ipairs(var_0_105) do
						if tonumber(iter_164_3.model) == var_164_9 and var_0_18.active_objects["model" .. iter_164_3.model] then
							local var_164_17 = (var_164_2 and "id: " .. var_164_2 .. "; model: " .. var_164_9 or "model: " .. var_164_9) .. "; distance: " .. var_164_15

							var_164_0:AddText(var_0_1.ImVec2(var_164_7 - 20, var_164_8), var_0_18.color_editor.obj_wh_text_color, var_164_17)

							if var_0_18.settings.obj_wh_conditions_show_name and iter_164_3.name ~= "" then
								var_164_0:AddText(var_0_1.ImVec2(var_164_7 - 20, var_164_8 + 18), var_0_18.color_editor.obj_wh_text_color, iter_164_3.name)
							end

							if var_0_18.settings.obj_wh_line then
								var_164_0:AddLine(var_0_1.ImVec2(var_164_13, var_164_14), var_0_1.ImVec2(var_164_7, var_164_8), var_0_18.color_editor.obj_wh_line_color, 1.2)
								var_164_0:AddCircleFilled(var_0_1.ImVec2(var_164_7, var_164_8), 3, var_0_18.color_editor.obj_wh_line_color)
							end
						end
					end
				end
			end
		end
	end
end)
var_0_1.OnFrame(function()
	return var_0_47[0] and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_infpanel)
end, function(arg_166_0)
	arg_166_0.HideCursor = true

	if var_0_47[0] then
		var_0_1.SetNextWindowPos(var_0_1.ImVec2(var_0_18.posXY.infopanel_x, var_0_18.posXY.infopanel_y), var_0_1.Cond.Always, var_0_1.ImVec2(1, 1))
		var_0_1.SetNextWindowSize(var_0_1.ImVec2(200, 200), var_0_1.Cond.FirstUseEver)
		var_0_1.PushStyleColor(var_0_1.Col.Separator, var_0_1.ImVec4(var_0_59.clr_infopanel[0], var_0_59.clr_infopanel[1], var_0_59.clr_infopanel[2], var_0_59.clr_infopanel[3]))
		var_0_1.PushStyleColor(var_0_1.Col.WindowBg, var_0_1.ImVec4(0, 0, 0, 0.3))
		var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))

		if var_0_18.settings.infopanel_obvodka then
			var_0_1.PushStyleVarFloat(var_0_1.StyleVar.WindowBorderSize, 0.5)
			var_0_1.PushStyleColor(var_0_1.Col.Border, var_0_1.ImVec4(var_0_59.clr_infopanel[0], var_0_59.clr_infopanel[1], var_0_59.clr_infopanel[2], var_0_59.clr_infopanel[3]))
		end

		var_0_1.Begin("MATools | InfoPanel", _, var_0_1.WindowFlags.NoTitleBar + var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.AlwaysAutoResize)

		if var_0_18.settings.infopanel_obvodka then
			var_0_1.PopStyleVar()
			var_0_1.PopStyleColor()
		end

		var_0_1.PushFont(norm)
		var_0_1.SetCursorPosX((var_0_1.GetWindowSize().x - var_0_1.CalcTextSize("MATools").x) / 2)
		var_0_1.Text("MATools")
		var_0_1.PopFont()
		var_0_1.Separator()

		if var_0_18.settings.infopanel_zone then
			var_0_1.Text(var_0_14("Район: ") .. my_zone())
		end

		if var_0_18.settings.infopanel_kvadrat then
			var_0_1.Text(var_0_14("Квадрат: " .. my_kvadrat()))
		end

		if var_0_18.settings.infopanel_direction then
			var_0_1.PushStyleColor(var_0_1.Col.Text, var_0_1.ImVec4(1, 1, 1, 0))
			var_0_1.Text(var_0_14("Направление: Северо-Восток"))
			var_0_1.PopStyleColor()
			var_0_1.SameLine(5)
			var_0_1.Text(var_0_14("Направление: " .. my_direction()))
		end

		if var_0_18.settings.infopanel_zone or var_0_18.settings.infopanel_kvadrat or var_0_18.settings.infopanel_direction then
			var_0_1.Spacing()
		end

		if var_0_18.settings.infopanel_active_reps then
			var_0_1.Text(var_0_14("Активных жалоб: ") .. var_0_36.last_report_count)
			var_0_1.Spacing()
		end

		if var_0_18.settings.infopanel_answers_session then
			if var_0_48.gotoNextDay then
				var_0_1.Text(var_0_14("Ответов за сессию: ") .. var_0_48.answers_session + var_0_48.answers_session_NextDay)
			else
				var_0_1.Text(var_0_14("Ответов за сессию: ") .. var_0_48.answers_session)
			end
		end

		if var_0_18.settings.infopanel_answers_day then
			if var_0_48.gotoNextDay then
				var_0_1.Text(var_0_14("Ответов за день: ") .. var_0_18.online_info.answers_day + var_0_48.answers_session_NextDay)
			else
				var_0_1.Text(var_0_14("Ответов за день: ") .. var_0_18.online_info.answers_day + var_0_48.answers_session)
			end
		end

		if var_0_18.settings.infopanel_online_session then
			if var_0_48.gotoNextDay then
				var_0_1.Text(var_0_14("Онлайн за сессию: ") .. secondsToTimeString(var_0_48.session_duration + var_0_48.session_duration_NextDay))
			else
				var_0_1.Text(var_0_14("Онлайн за сессию: ") .. secondsToTimeString(var_0_48.session_duration))
			end
		end

		if var_0_18.settings.infopanel_online_day then
			if var_0_48.gotoNextDay then
				var_0_1.Text(var_0_14("Онлайн за день: ") .. secondsToTimeString(var_0_18.online_info.day_online + var_0_48.session_duration_NextDay))
			else
				var_0_1.Text(var_0_14("Онлайн за день: ") .. secondsToTimeString(var_0_18.online_info.day_online + var_0_48.session_duration))
			end
		end

		if var_0_18.settings.infopanel_afk_session or var_0_18.settings.infopanel_afk_day then
			if var_0_18.settings.infopanel_afk_session then
				if var_0_48.gotoNextDay then
					var_0_1.Text(var_0_14("АФК за сессию: ") .. secondsToTimeString(var_0_48.afk_duration + var_0_48.afk_duration_NextDay))
				else
					var_0_1.Text(var_0_14("АФК за сессию: ") .. secondsToTimeString(var_0_48.afk_duration))
				end
			end

			if var_0_18.settings.infopanel_afk_day then
				if var_0_48.gotoNextDay then
					var_0_1.Text(var_0_14("АФК за день: ") .. secondsToTimeString(var_0_18.online_info.day_afk + var_0_48.afk_duration_NextDay))
				else
					var_0_1.Text(var_0_14("АФК за день: ") .. secondsToTimeString(var_0_18.online_info.day_afk + var_0_48.afk_duration))
				end
			end
		end

		if var_0_18.settings.infopanel_showtime_info then
			local var_166_0 = ""

			var_0_1.Spacing()

			if var_0_18.settings.infopanel_showweekday then
				var_166_0 = var_0_14(nowWeekday())
			end

			if var_0_18.settings.infopanel_showweekday and var_0_18.settings.infopanel_showdate then
				var_166_0 = var_166_0 .. ", "
			end

			if var_0_18.settings.infopanel_showdate then
				if var_0_18.settings.infopanel_dateformat_daymounth then
					var_166_0 = var_166_0 .. var_0_14(nowDate())
				elseif var_0_18.settings.infopanel_dateformat_x then
					var_166_0 = var_166_0 .. os.date("%d.%m.%Y")
				else
					var_166_0 = var_166_0 .. os.date("%d.%m")
				end
			end

			if var_0_18.settings.infopanel_showtime and (var_0_18.settings.infopanel_showweekday or var_0_18.settings.infopanel_showdate) then
				var_166_0 = var_166_0 .. " | "
			end

			if var_0_18.settings.infopanel_showtime then
				if var_0_18.settings.infopanel_showtime_seconds then
					var_166_0 = var_166_0 .. var_0_14(os.date("%H:%M:%S"))
				else
					var_166_0 = var_166_0 .. var_0_14(os.date("%H:%M"))
				end
			end

			var_0_1.PushStyleColor(var_0_1.Col.Text, var_0_1.ImVec4(0, 0, 0, 0))
			var_0_1.Text(var_166_0)
			var_0_1.PopStyleColor()
			var_0_1.SameLine((var_0_1.GetWindowSize().x - var_0_1.CalcTextSize(var_166_0).x) / 2)
			var_0_1.Text(var_166_0)
		end

		var_0_1.End()
		var_0_1.PopStyleColor(2)
		var_0_1.PopStyleVar()
	end
end)

function forma(arg_167_0, arg_167_1)
	local var_167_0 = formatNickname(arg_167_0)

	table.insert(var_0_65, 1, {
		adm = arg_167_0,
		text = arg_167_1
	})

	if var_0_66.forma_text == "" then
		var_0_66.forma_text = arg_167_1 .. " | " .. arg_167_0
	end

	if string.rlower(arg_167_1):match("/alldelv") then
		var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
	end

	if string.rlower(arg_167_1):match("/fuelvehs") then
		var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
	end

	if string.rlower(arg_167_1):match("/msg") then
		if string.rlower(arg_167_1):match("/msg .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /msg [Text] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/hc") then
		if string.rlower(arg_167_1):match("/hc .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /hc [Text] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/kick") then
		if string.rlower(arg_167_1):match("/kick %d+ .+") or string.rlower(arg_167_1):match("/kick %w+_%w+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /kick [Id/Nick] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/prison") then
		if string.rlower(arg_167_1):match("/prison %d+ %d+ .+") or string.rlower(arg_167_1):match("/prison %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /prison [Id/Nick] [Minutes] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/unprison") then
		if string.rlower(arg_167_1):match("/unprison %d+") or string.rlower(arg_167_1):match("/unprison %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /unprison [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offprison") then
		if string.rlower(arg_167_1):match("/offprison %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offprison [Nick] [Minutes] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offunprison") then
		if string.rlower(arg_167_1):match("/offunprison %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offunprison [Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/jail") then
		if string.rlower(arg_167_1):match("/jail %d+ %d+ .+") or string.rlower(arg_167_1):match("/jail %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /jail [Id/Nick] [Minutes] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/unjail") then
		if string.rlower(arg_167_1):match("/unjail %d+") or string.rlower(arg_167_1):match("/unjail %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /unjail [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offjail") then
		if string.rlower(arg_167_1):match("/offjail %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offjail [Nick] [Minutes] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offunjail") then
		if string.rlower(arg_167_1):match("/offunjail %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offunjail [Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/vcmute") then
		if string.rlower(arg_167_1):match("/vcmute %d+ %d+ .+") or string.rlower(arg_167_1):match("/vcmute %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /vcmute [Id/Nick] [Minutes] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/vcunmute") then
		if string.rlower(arg_167_1):match("/vcunmute %d+") or string.rlower(arg_167_1):match("/vcunmute %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /vcunmute [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/mute") then
		if string.rlower(arg_167_1):match("/mute %d+ %d+ .+") or string.rlower(arg_167_1):match("/mute %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /mute [Id/Nick] [Minutes] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/unmute") then
		if string.rlower(arg_167_1):match("/unmute %d+") or string.rlower(arg_167_1):match("/unmute %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /unmute [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offmute") then
		if string.rlower(arg_167_1):match("/offmute %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offmute [Nick] [Minutes] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offunmute") then
		if string.rlower(arg_167_1):match("/offunmute %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offunmute [Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/warn") then
		if string.rlower(arg_167_1):match("/warn %d+ .+") or string.rlower(arg_167_1):match("/warn %w+_%w+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /warn [Id/Nick] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/unwarn") then
		if string.rlower(arg_167_1):match("/unwarn %d+") or string.rlower(arg_167_1):match("/unwarn %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /unwarn [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offwarn") then
		if string.rlower(arg_167_1):match("/offwarn %w+_%w+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offwarn [Nick] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offunwarn") then
		if string.rlower(arg_167_1):match("/offunwarn %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offunwarn [Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/bgun") then
		if string.rlower(arg_167_1):match("/bgun %d+ %d+ .+") or string.rlower(arg_167_1):match("/bgun %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /bgun [Id/Nick] [Minutes] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/unbgun") then
		if string.rlower(arg_167_1):match("/unbgun %w+_%w+") or string.rlower(arg_167_1):match("/unbgun %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /unbgun [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/ban") then
		if string.rlower(arg_167_1):match("/ban %d+ %d+ .+") or string.rlower(arg_167_1):match("/ban %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /ban [Id/Nick] [Days] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/unban") then
		if string.rlower(arg_167_1):match("/unban %w+_%w+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /unban [Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/offban") then
		if string.rlower(arg_167_1):match("/offban %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /offban [Nick] [Days] [Reason] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/slap") then
		if string.rlower(arg_167_1):match("/slap %w+_%w+") or string.rlower(arg_167_1):match("/slap %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /slap [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/freeze") then
		if string.rlower(arg_167_1):match("/freeze %w+_%w+") or string.rlower(arg_167_1):match("/freeze %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /freeze [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/unfreeze") then
		if string.rlower(arg_167_1):match("/unfreeze %w+_%w+") or string.rlower(arg_167_1):match("/unfreeze %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /unfreeze [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/spawn") then
		if string.rlower(arg_167_1):match("/spawn %w+_%w+") or string.rlower(arg_167_1):match("/spawn %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /spawn [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/auninvite") then
		if string.rlower(arg_167_1):match("/auninvite %w+_%w+") or string.rlower(arg_167_1):match("/auninvite %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /auninvite [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/tempskin") then
		if string.rlower(arg_167_1):match("/tempskin %w+_%w+ %d+") or string.rlower(arg_167_1):match("/tempskin %d+ %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /tempskin [Id/Nick] [Id skin] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/sethp") then
		if string.rlower(arg_167_1):match("/sethp %w+_%w+ %d+") or string.rlower(arg_167_1):match("/sethp %d+ %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /sethp [Id/Nick] [HP] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/areanimate") then
		if string.rlower(arg_167_1):match("/areanimate %w+_%w+") or string.rlower(arg_167_1):match("/areanimate %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /areanimate [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/givecupon") then
		if string.rlower(arg_167_1):match("/givecupon %w+_%w+") or string.rlower(arg_167_1):match("/givecupon %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /givecupon [Id/Nick] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/pveh") then
		if string.rlower(arg_167_1):match("/pveh %w+_%w+ %d+ %d+ %d+") or string.rlower(arg_167_1):match("/pveh %d+ %d+ %d+ %d+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /pveh [Id/Nick] [Id car] [color1] [color2] | MATools"
		end
	end

	if string.rlower(arg_167_1):match("/soffban") then
		if string.rlower(arg_167_1):match("/soffban %w+_%w+ %d+ .+") then
			var_0_66.done_forma = arg_167_1 .. " | " .. var_167_0
		else
			var_0_66.done_forma = "/a " .. var_167_0 .. ", пиши: /soffban [Nick] [Days] [Reason] | MATools"
		end
	end
end

function forma_accept_reject(arg_168_0)
	if not var_0_66.active_forma then
		return
	end

	lua_thread.create(function()
		local var_169_0 = os.time()
		local var_169_1 = 0
		local var_169_2 = 7

		while var_169_1 < var_169_2 do
			var_169_1 = os.time() - var_169_0

			wait(0)

			if var_0_18.settings.autoacceptform and var_0_66.active_forma and not sampIsDialogActive() and not var_0_115.state then
				AcceptForm()

				break
			end

			if var_169_2 <= var_169_1 and var_0_66.active_forma then
				TimeoutForm()

				break
			end
		end
	end)
end

function TimeoutForm()
	var_0_66.done_forma = ""
	var_0_66.active_forma = false

	var_0_108(var_0_14("Вы пропустили форму: " .. var_0_65[#var_0_65].text .. " | " .. var_0_65[#var_0_65].adm), 1111)

	if #var_0_65 > 1 then
		var_0_66.forma_text = var_0_65[#var_0_65 - 1].text .. " | " .. var_0_65[#var_0_65 - 1].adm
	else
		var_0_66.forma_text = ""
	end

	table.remove(var_0_65, #var_0_65)

	var_0_39 = false
end

function AcceptForm()
	var_0_38.lastForma = os.time()

	var_0_108(var_0_14("Вы приняли форму: " .. var_0_65[#var_0_65].text .. " | " .. var_0_65[#var_0_65].adm), 1111)

	if #var_0_65 > 1 then
		var_0_66.forma_text = var_0_65[#var_0_65 - 1].text .. " | " .. var_0_65[#var_0_65 - 1].adm
	else
		var_0_66.forma_text = ""
	end

	sampSendChat(var_0_66.done_forma)

	var_0_66.active_forma = false
	var_0_66.last_forma = var_0_66.done_forma
	var_0_66.done_forma = ""

	table.remove(var_0_65, #var_0_65)

	var_0_39 = false
end

function RejectForm()
	var_0_108(var_0_14("Вы отклонили форму: " .. var_0_65[#var_0_65].text .. " | " .. var_0_65[#var_0_65].adm), 1111)

	if #var_0_65 > 1 then
		var_0_66.forma_text = var_0_65[#var_0_65 - 1].text .. " | " .. var_0_65[#var_0_65 - 1].adm
	else
		var_0_66.forma_text = ""
	end

	var_0_66.done_forma = ""

	table.remove(var_0_65, #var_0_65)

	var_0_66.active_forma = false
	var_0_39 = false
end

var_0_1.OnFrame(function()
	return (#var_0_65 > 0 and var_0_66.active_forma and not var_0_18.settings.autoacceptform or var_0_28.move_forms) and sampGetGamestate() == 3 and not isGamePaused() and not isPauseMenuActive() and not isCursorActive()
end, function(arg_174_0)
	arg_174_0.HideCursor = true

	var_0_1.SetNextWindowPos(var_0_1.ImVec2(var_0_18.posXY.forms_x, var_0_18.posXY.forms_y), var_0_1.Cond.Always, var_0_1.ImVec2(1, 1))
	var_0_1.SetNextWindowSize(var_0_1.ImVec2(285, 77), var_0_1.Cond.FirstUseEver)
	var_0_1.PushStyleVarVec2(var_0_1.StyleVar.WindowPadding, var_0_1.ImVec2(5, 5))
	var_0_1.SetNextWindowBgAlpha(0.65)
	var_0_1.PushStyleColor(var_0_1.Col.TitleBgActive, var_0_1.ImVec4(0.4, 0, 0.8, 0.6))
	var_0_1.Begin(var_0_14(var_0_66.forma_text), nil, var_0_1.WindowFlags.NoResize + var_0_1.WindowFlags.NoCollapse)
	var_0_1.PopStyleColor()
	var_0_1.Button(table.concat(getKeysName(var_0_21.bind_acceptform.v)), var_0_1.ImVec2(50, 20))
	var_0_1.SameLine(0, 5)
	var_0_1.Text(var_0_14("Принять форму"))
	var_0_1.Button(table.concat(getKeysName(var_0_21.bind_rejectform.v)), var_0_1.ImVec2(50, 20))
	var_0_1.SameLine(0, 5)
	var_0_1.Text(var_0_14("Отклонить форму"))

	local var_174_0 = 7
	local var_174_1 = os.time()
	local var_174_2 = os.difftime(var_174_1, var_0_66.formStartTime)
	local var_174_3 = math.max(0, var_174_0 - var_174_2)

	drawCircularTimer(var_0_1.GetWindowDrawList(), var_0_1.GetCursorScreenPos().x + 230, var_0_1.GetCursorScreenPos().y - 27, 20, var_174_3, var_174_0)
	var_0_1.PopStyleVar()
	var_0_1.End()
end)

function drawCircularTimer(arg_175_0, arg_175_1, arg_175_2, arg_175_3, arg_175_4, arg_175_5)
	local var_175_0 = var_0_1
	local var_175_1 = 3 * math.pi / 2
	local var_175_2 = var_175_1 + 2 * math.pi * (arg_175_4 / arg_175_5)
	local var_175_3 = var_175_0.ColorConvertFloat4ToU32(var_175_0.ImVec4(0.4, 0, 0.8, 1))
	local var_175_4 = var_175_0.ColorConvertFloat4ToU32(var_175_0.ImVec4(0.2, 0.2, 0.2, 0.7))

	arg_175_0:AddCircleFilled(var_175_0.ImVec2(arg_175_1, arg_175_2), arg_175_3, var_175_4, 64)

	if arg_175_4 > 0 then
		arg_175_0:PathArcTo(var_175_0.ImVec2(arg_175_1, arg_175_2), arg_175_3 - 1, var_175_1, var_175_2, 64)
		arg_175_0:PathStroke(var_175_3, false, 2)
	end

	local var_175_5 = string.format("%.2f", arg_175_4)
	local var_175_6 = var_175_0.CalcTextSize(var_175_5)

	arg_175_0:AddText(var_175_0.ImVec2(arg_175_1 - var_175_6.x / 2, arg_175_2 - var_175_6.y / 2), var_175_0.ColorConvertFloat4ToU32(var_175_0.ImVec4(1, 1, 1, 1)), var_175_5)
end

function set_player_skin(arg_176_0, arg_176_1)
	local var_176_0 = raknetNewBitStream()

	raknetBitStreamWriteInt32(var_176_0, arg_176_0)
	raknetBitStreamWriteInt32(var_176_0, arg_176_1)
	raknetEmulRpcReceiveBitStream(153, var_176_0)
	raknetDeleteBitStream(var_176_0)
end

function explode_argb(arg_177_0)
	local var_177_0 = bit.band(bit.rshift(arg_177_0, 24), 255)
	local var_177_1 = bit.band(bit.rshift(arg_177_0, 16), 255)
	local var_177_2 = bit.band(bit.rshift(arg_177_0, 8), 255)
	local var_177_3 = bit.band(arg_177_0, 255)

	return var_177_0, var_177_1, var_177_2, var_177_3
end

function join_argb(arg_178_0, arg_178_1, arg_178_2, arg_178_3)
	local var_178_0 = arg_178_3
	local var_178_1 = bit.bor(var_178_0, bit.lshift(arg_178_2, 8))
	local var_178_2 = bit.bor(var_178_1, bit.lshift(arg_178_1, 16))

	return (bit.bor(var_178_2, bit.lshift(arg_178_0, 24)))
end

function imgui_nick_color(arg_179_0, arg_179_1, arg_179_2)
	return bit.band(bit.band(bit.rshift(arg_179_0, arg_179_1), bit.rshift(4294967295, 32 - arg_179_2)), 4294967295)
end

function getBodyPartCoordinates(arg_180_0, arg_180_1)
	local var_180_0 = getCharPointer(arg_180_1)
	local var_180_1 = var_0_2.new("float[3]")

	var_0_69(var_0_2.cast("void*", var_180_0), var_180_1, arg_180_0, true)

	return var_180_1[0], var_180_1[1], var_180_1[2]
end

function asyncHttpRequest(arg_181_0, arg_181_1, arg_181_2, arg_181_3, arg_181_4)
	local var_181_0 = var_0_12.thread(function(arg_182_0, arg_182_1, arg_182_2)
		local var_182_0 = require("requests")
		local var_182_1, var_182_2 = pcall(var_182_0.request, arg_182_0, arg_182_1, arg_182_2)

		if var_182_1 then
			var_182_2.json, var_182_2.xml = nil

			return true, var_182_2
		else
			return false, var_182_2
		end
	end)(arg_181_0, arg_181_1, arg_181_2)

	arg_181_3 = arg_181_3 or function()
		return
	end
	arg_181_4 = arg_181_4 or function()
		return
	end

	lua_thread.create(function()
		local var_185_0 = var_181_0

		while true do
			local var_185_1, var_185_2 = var_185_0:status()

			if not var_185_2 then
				if var_185_1 == "completed" then
					local var_185_3, var_185_4 = var_185_0:get()

					if var_185_3 then
						arg_181_3(var_185_4)
					else
						arg_181_4(var_185_4)
					end

					return
				elseif var_185_1 == "canceled" then
					return arg_181_4(var_185_1)
				end
			else
				return arg_181_4(var_185_2)
			end

			wait(0)
		end
	end)
end

function distance_cord(arg_186_0, arg_186_1, arg_186_2, arg_186_3)
	if arg_186_0 == nil or arg_186_1 == nil or arg_186_2 == nil or arg_186_3 == nil or arg_186_0 == "" or arg_186_1 == "" or arg_186_2 == "" or arg_186_3 == "" then
		return 0
	end

	local var_186_0 = math.sin(math.rad(arg_186_2 - arg_186_0) / 2)
	local var_186_1 = math.sin(math.rad(arg_186_3 - arg_186_1) / 2)
	local var_186_2 = var_186_0 * var_186_0 + math.cos(math.rad(arg_186_0)) * math.cos(math.rad(arg_186_2)) * var_186_1 * var_186_1

	return 6378 * (2 * math.atan2(math.sqrt(var_186_2), math.sqrt(1 - var_186_2)))
end

function info_ip(arg_187_0, arg_187_1)
	asyncHttpRequest("POST", "http://ip-api.com/batch?fields=25305&lang=ru", {
		data = encodeJson({
			{
				query = arg_187_0
			},
			{
				query = arg_187_1
			}
		})
	}, function(arg_188_0)
		local var_188_0 = decodeJson(var_0_14:decode(arg_188_0.text))

		if var_188_0[1].status == "success" and var_188_0[2].status == "success" then
			var_0_49.regIP_country = var_188_0[1].country
			var_0_49.regIP_city = var_188_0[1].city
			var_0_49.regIP_isp = var_188_0[1].isp
			var_0_49.regIP = arg_187_1
			var_0_49.lastIP_country = var_188_0[2].country
			var_0_49.lastIP_city = var_188_0[2].city
			var_0_49.lastIP_isp = var_188_0[2].isp
			var_0_49.lastIP = arg_187_0
			var_0_49.distance = math.floor(distance_cord(var_188_0[1].lat, var_188_0[1].lon, var_188_0[2].lat, var_188_0[2].lon))
			var_0_43.ipWinState[0] = true
		else
			var_0_108(var_0_14("Произошла ошибка в определении информации об IP адресе!"), 3000)
			sampAddChatMessage(var_0_16 .. "RegIP: " .. arg_187_1 .. " | LastIP: " .. arg_187_0, -1)
		end
	end, function(arg_189_0)
		var_0_108(var_0_14("Произошла ошибка в определении информации об IP адресе!"), 3000)
		sampAddChatMessage(var_0_16 .. "RegIP: " .. arg_187_1 .. " | LastIP: " .. arg_187_0, -1)
	end)
end

local var_0_122 = {
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	"Ё",
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	"ё",
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	"А",
	"Б",
	"В",
	"Г",
	"Д",
	"Е",
	"Ж",
	"З",
	"И",
	"Й",
	"К",
	"Л",
	"М",
	"Н",
	"О",
	"П",
	"Р",
	"С",
	"Т",
	"У",
	"Ф",
	"Х",
	"Ц",
	"Ч",
	"Ш",
	"Щ",
	"Ъ",
	"Ы",
	"Ь",
	"Э",
	"Ю",
	"Я",
	"а",
	"б",
	"в",
	"г",
	"д",
	"е",
	"ж",
	"з",
	"и",
	"й",
	"к",
	"л",
	"м",
	"н",
	"о",
	"п",
	"р",
	"с",
	"т",
	"у",
	"ф",
	"х",
	"ц",
	"ч",
	"ш",
	"щ",
	"ъ",
	"ы",
	"ь",
	"э",
	"ю",
	"я"
}

function string.rlower(arg_190_0)
	arg_190_0 = arg_190_0:lower()

	local var_190_0 = arg_190_0:len()

	if var_190_0 == 0 then
		return arg_190_0
	end

	arg_190_0 = arg_190_0:lower()

	local var_190_1 = ""

	for iter_190_0 = 1, var_190_0 do
		local var_190_2 = arg_190_0:byte(iter_190_0)

		if var_190_2 >= 192 and var_190_2 <= 223 then
			var_190_1 = var_190_1 .. var_0_122[var_190_2 + 32]
		elseif var_190_2 == 168 then
			var_190_1 = var_190_1 .. var_0_122[184]
		else
			var_190_1 = var_190_1 .. string.char(var_190_2)
		end
	end

	return var_190_1
end

function string.rupper(arg_191_0)
	arg_191_0 = arg_191_0:upper()

	local var_191_0 = arg_191_0:len()

	if var_191_0 == 0 then
		return arg_191_0
	end

	arg_191_0 = arg_191_0:upper()

	local var_191_1 = ""

	for iter_191_0 = 1, var_191_0 do
		local var_191_2 = arg_191_0:byte(iter_191_0)

		if var_191_2 >= 224 and var_191_2 <= 255 then
			var_191_1 = var_191_1 .. var_0_122[var_191_2 - 32]
		elseif var_191_2 == 184 then
			var_191_1 = var_191_1 .. var_0_122[168]
		else
			var_191_1 = var_191_1 .. string.char(var_191_2)
		end
	end

	return var_191_1
end

function bringVec2To(arg_192_0, arg_192_1, arg_192_2, arg_192_3)
	local var_192_0 = os.clock() - arg_192_2

	if var_192_0 >= 0 and var_192_0 <= arg_192_3 then
		local var_192_1 = var_192_0 / (arg_192_3 / 100)

		return var_0_1.ImVec2(arg_192_0.x + var_192_1 * (arg_192_1.x - arg_192_0.x) / 100, arg_192_0.y + var_192_1 * (arg_192_1.y - arg_192_0.y) / 100), true
	end

	return arg_192_3 < var_192_0 and arg_192_1 or arg_192_0, false
end

function bringVec4To(arg_193_0, arg_193_1, arg_193_2, arg_193_3)
	local var_193_0 = os.clock() - arg_193_2

	if var_193_0 >= 0 and var_193_0 <= arg_193_3 then
		local var_193_1 = var_193_0 / (arg_193_3 / 100)

		return var_0_1.ImVec4(arg_193_0.x + var_193_1 * (arg_193_1.x - arg_193_0.x) / 100, arg_193_0.y + var_193_1 * (arg_193_1.y - arg_193_0.y) / 100, arg_193_0.z + var_193_1 * (arg_193_1.z - arg_193_0.z) / 100, arg_193_0.w + var_193_1 * (arg_193_1.w - arg_193_0.w) / 100), true
	end

	return arg_193_3 < var_193_0 and arg_193_1 or arg_193_0, false
end

function bringFloatTo(arg_194_0, arg_194_1, arg_194_2, arg_194_3)
	local var_194_0 = os.clock() - arg_194_2

	if var_194_0 >= 0 and var_194_0 <= arg_194_3 then
		return arg_194_0 + var_194_0 / (arg_194_3 / 100) * (arg_194_1 - arg_194_0) / 100
	end

	return arg_194_3 < var_194_0 and arg_194_1 or arg_194_0
end

function getPlayerIDByName(arg_195_0)
	if arg_195_0 == nil or arg_195_0 == "" then
		return "[ERROR] Игрок отключен от сервера"
	end

	if arg_195_0 == myNick() then
		return myId()
	end

	local var_195_0 = sampGetMaxPlayerId()

	for iter_195_0 = 0, var_195_0 do
		if sampIsPlayerConnected(iter_195_0) and (sampGetPlayerNickname(iter_195_0) == arg_195_0 .. "[M]" or sampGetPlayerNickname(iter_195_0) == arg_195_0 .. "[PC]") then
			return iter_195_0
		end
	end

	return var_0_14("Игрок не в сети")
end

function getPlayerNicknameById(arg_196_0)
	if arg_196_0 == myId() then
		return myNick() .. "[PC]"
	end

	if sampIsPlayerConnected(arg_196_0) then
		return sampGetPlayerNickname(arg_196_0)
	else
		return "Игрок с таким ID не подключен."
	end
end

function getPlayerName(arg_197_0)
	local var_197_0 = string.find(arg_197_0, "_")

	if var_197_0 then
		return string.sub(arg_197_0, 1, var_197_0 - 1)
	else
		return arg_197_0
	end
end

function formatNickname(arg_198_0)
	local var_198_0, var_198_1 = arg_198_0:match("([^_]+)_([^_]+)")

	if var_198_0 and var_198_1 then
		return var_198_0:sub(1, 1) .. "." .. var_198_1
	else
		return arg_198_0
	end
end

var_0_1.OnInitialize(function()
	local var_199_0 = var_0_1.ImVec4

	var_0_1.SwitchContext()

	var_0_1.GetStyle().Colors[var_0_1.Col.FrameBg] = var_199_0(0.2, 0.2, 0.3, 0.54)
	var_0_1.GetStyle().Colors[var_0_1.Col.FrameBgHovered] = var_199_0(0.4, 0.4, 0.76, 0.4)
	var_0_1.GetStyle().Colors[var_0_1.Col.FrameBgActive] = var_199_0(0.55, 0.3, 0.8, 0.67)
	var_0_1.GetStyle().Colors[var_0_1.Col.TitleBg] = var_199_0(0.4, 0, 0.8, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.TitleBgActive] = var_199_0(0.4, 0, 0.8, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.TitleBgCollapsed] = var_199_0(0, 0, 0, 0.51)
	var_0_1.GetStyle().Colors[var_0_1.Col.CheckMark] = var_199_0(0.5, 0.3, 0.8, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.SliderGrab] = var_199_0(0.75, 0.2, 0.95, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.SliderGrabActive] = var_199_0(0.85, 0.3, 0.8, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.Button] = var_199_0(0.4, 0, 0.8, 0.6)
	var_0_1.GetStyle().Colors[var_0_1.Col.ButtonHovered] = var_199_0(0.6, 0, 0.9, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.ButtonActive] = var_199_0(0.7, 0.1, 0.9, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.Header] = var_199_0(0.4, 0.3, 0.8, 0.31)
	var_0_1.GetStyle().Colors[var_0_1.Col.HeaderHovered] = var_199_0(0.6, 0.4, 0.9, 0.8)
	var_0_1.GetStyle().Colors[var_0_1.Col.HeaderActive] = var_199_0(0.6, 0.4, 0.9, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.Separator] = var_199_0(0.4, 0, 0.8, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.SeparatorHovered] = var_199_0(0.6, 0.4, 0.9, 0.78)
	var_0_1.GetStyle().Colors[var_0_1.Col.SeparatorActive] = var_199_0(0.6, 0.5, 0.95, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.ResizeGrip] = var_199_0(0.5, 0.3, 0.8, 0.25)
	var_0_1.GetStyle().Colors[var_0_1.Col.ResizeGripHovered] = var_199_0(0.6, 0.4, 0.9, 0.67)
	var_0_1.GetStyle().Colors[var_0_1.Col.ResizeGripActive] = var_199_0(0.8, 0.5, 0.95, 0.95)
	var_0_1.GetStyle().Colors[var_0_1.Col.TextSelectedBg] = var_199_0(0.6, 0.3, 0.8, 0.35)
	var_0_1.GetStyle().Colors[var_0_1.Col.Text] = var_199_0(1, 1, 1, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.TextDisabled] = var_199_0(0.5, 0.5, 0.5, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.WindowBg] = var_199_0(0.1, 0.1, 0.1, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.ChildBg] = var_199_0(0.1, 0.1, 0.1, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.PopupBg] = var_199_0(0.08, 0.08, 0.08, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.Border] = var_199_0(0.4, 0, 0.8, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.BorderShadow] = var_199_0(0, 0, 0, 0)
	var_0_1.GetStyle().Colors[var_0_1.Col.MenuBarBg] = var_199_0(0.2, 0.2, 0.3, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.ScrollbarBg] = var_199_0(0.02, 0.02, 0.02, 0.53)
	var_0_1.GetStyle().Colors[var_0_1.Col.ScrollbarGrab] = var_199_0(0.4, 0, 0.7, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.ScrollbarGrabHovered] = var_199_0(0.5, 0, 0.8, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.ScrollbarGrabActive] = var_199_0(0.6, 0, 0.9, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.PlotLines] = var_199_0(0.8, 0.8, 0.8, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.PlotLinesHovered] = var_199_0(1, 0.4, 0.7, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.PlotHistogram] = var_199_0(0.9, 0.7, 0, 1)
	var_0_1.GetStyle().Colors[var_0_1.Col.PlotHistogramHovered] = var_199_0(1, 0.6, 0, 1)
	var_0_1.GetStyle().WindowPadding = var_0_1.ImVec2(0, 0)
	var_0_1.GetStyle().FramePadding = var_0_1.ImVec2(3.5, 3.9)
	var_0_1.GetStyle().ItemSpacing = var_0_1.ImVec2(5, 5)
	var_0_1.GetStyle().ItemInnerSpacing = var_0_1.ImVec2(2, 2)
	var_0_1.GetStyle().TouchExtraPadding = var_0_1.ImVec2(0, 0)
	var_0_1.GetStyle().WindowTitleAlign = var_0_1.ImVec2(0.5, 0.5)
	var_0_1.GetStyle().IndentSpacing = 0
	var_0_1.GetStyle().ScrollbarSize = 12
	var_0_1.GetStyle().GrabMinSize = 10
	var_0_1.GetStyle().WindowBorderSize = 0
	var_0_1.GetStyle().ChildBorderSize = 1
	var_0_1.GetStyle().PopupBorderSize = 1
	var_0_1.GetStyle().FrameBorderSize = 1
	var_0_1.GetStyle().TabBorderSize = 1
	var_0_1.GetStyle().WindowRounding = 7
	var_0_1.GetStyle().ChildRounding = 2
	var_0_1.GetStyle().FrameRounding = 2
	var_0_1.GetStyle().PopupRounding = 2
	var_0_1.GetStyle().ScrollbarRounding = 1
	var_0_1.GetStyle().GrabRounding = 1
	var_0_1.GetStyle().TabRounding = 1
	var_0_1.GetIO().IniFilename = nil

	local var_199_1 = var_0_1.ImFontConfig()

	var_199_1.MergeMode = true
	var_199_1.PixelSnapH = true
	iconRanges = var_0_1.new.ImWchar[3](var_0_8.min_range, var_0_8.max_range, 0)

	var_0_1.GetIO().Fonts:AddFontFromMemoryCompressedBase85TTF(var_0_8.get_font_data_base85("solid"), 16, var_199_1, iconRanges)

	local var_199_2 = var_0_1.GetIO().Fonts:GetGlyphRangesCyrillic()

	var_0_1.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(20) .. "\\trebucbd.ttf", 15, nil, var_199_2)

	rep_font = var_0_1.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(20) .. "\\trebucbd.ttf", 16.5, _, var_199_2)
	norm = var_0_1.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(20) .. "\\trebucbd.ttf", 15, _, var_199_2)
	title = var_0_1.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(20) .. "\\trebucbd.ttf", 30, _, var_199_2)
	matools = var_0_1.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(20) .. "\\trebucbd.ttf", 42, _, var_199_2)

	for iter_199_0 = 11, 22 do
		var_0_75[iter_199_0] = var_0_1.GetIO().Fonts:AddFontFromFileTTF(getFolderPath(20) .. "\\trebucbd.ttf", iter_199_0, _, var_199_2)
	end

	for iter_199_1, iter_199_2 in ipairs(var_0_24) do
		if doesFileExist(iter_199_2.file) then
			var_0_25[iter_199_2.name] = var_0_1.CreateTextureFromFile(iter_199_2.file)
		else
			local var_199_3 = iter_199_2.file:match(".+%\\(.+)%.png")

			downloadUrlToFile("https://raw.githubusercontent.com/deffix-def/MATools/main/" .. var_199_3 .. ".png", iter_199_2.file, function(arg_200_0)
				if arg_200_0 then
					var_0_25[iter_199_2.name] = var_0_1.CreateTextureFromFile(iter_199_2.file)
				else
					sampAddChatMessage(var_0_16 .. "Ошибка при скачивании иконки: " .. iter_199_2.name .. "!", -1)
				end
			end)
		end
	end
end)

function var_0_1.VerticalSeparator()
	local var_201_0 = var_0_1.GetCursorScreenPos()

	var_0_1.GetWindowDrawList():AddLine(var_0_1.ImVec2(var_201_0.x, var_201_0.y), var_0_1.ImVec2(var_201_0.x, var_201_0.y + var_0_1.GetContentRegionMax().y), var_0_1.ColorConvertFloat4ToU32(var_0_1.GetStyle().Colors[var_0_1.Col.Separator]))
end

function var_0_1.BinderSeparator()
	local var_202_0 = var_0_1.GetCursorScreenPos()

	var_0_1.GetWindowDrawList():AddLine(var_0_1.ImVec2(var_202_0.x, var_202_0.y), var_0_1.ImVec2(var_202_0.x, var_202_0.y + #var_0_102 * 32.5), var_0_1.ColorConvertFloat4ToU32(var_0_1.GetStyle().Colors[var_0_1.Col.Separator]))
end

function var_0_1.GorizontalSeparator()
	local var_203_0 = var_0_1.GetCursorScreenPos()

	var_0_1.GetWindowDrawList():AddLine(var_0_1.ImVec2(var_203_0.x, var_203_0.y), var_0_1.ImVec2(var_203_0.x + var_0_1.GetContentRegionMax().x, var_203_0.y), var_0_1.ColorConvertFloat4ToU32(var_0_1.GetStyle().Colors[var_0_1.Col.Separator]))
end

function var_0_1.GorizontalSeparator_max_x(arg_204_0)
	local var_204_0 = var_0_1.GetCursorScreenPos()

	var_0_1.GetWindowDrawList():AddLine(var_0_1.ImVec2(var_204_0.x, var_204_0.y), var_0_1.ImVec2(var_204_0.x + arg_204_0, var_204_0.y), var_0_1.ColorConvertFloat4ToU32(var_0_1.GetStyle().Colors[var_0_1.Col.Text]))
end

function var_0_1.TextAndDisabled(arg_205_0, arg_205_1)
	var_0_1.PushFont(norm)

	if arg_205_0 then
		var_0_1.Text(arg_205_1)
	else
		var_0_1.TextDisabled(arg_205_1)
	end

	var_0_1.PopFont()
end

function var_0_1.CustomTextQuestion(arg_206_0, arg_206_1)
	var_0_1.SameLine()
	var_0_1.PushFont(norm)
	var_0_1.TextDisabled("(?)")
	var_0_1.PopFont()
	var_0_1.Hint(arg_206_0, arg_206_1)
end

function var_0_1.TextNew(arg_207_0)
	var_0_1.PushFont(norm)
	var_0_1.Text(arg_207_0)
	var_0_1.PopFont()
end

function var_0_1.TextDisabledNew(arg_208_0)
	var_0_1.PushFont(norm)
	var_0_1.TextDisabled(arg_208_0)
	var_0_1.PopFont()
end

function var_0_1.TextNewColor(arg_209_0)
	var_0_1.PushFont(norm)
	var_0_1.PushStyleColor(var_0_1.Col.Text, var_0_1.GetStyle().Colors[var_0_1.Col.Separator])
	var_0_1.Text(arg_209_0)
	var_0_1.PopFont()
	var_0_1.PopStyleColor()
end

function var_0_1.TextWithCopy(arg_210_0)
	var_0_1.TextNew(var_0_14(arg_210_0))
	var_0_1.Hint("help_cupyip_hint" .. arg_210_0, var_0_14("Кликните на текст, чтобы скопировать: \"") .. var_0_14(arg_210_0) .. "\"!")

	if var_0_1.IsItemClicked() then
		lua_thread.create(function()
			setLanguage("00000419")
			wait(111)
			setClipboardText(arg_210_0)
			var_0_108(var_0_14("Вы успешно скопировали: \"") .. var_0_14(arg_210_0) .. "\"!", 1111)
		end)
	end
end

function var_0_1.Link(arg_212_0, arg_212_1)
	local var_212_0 = var_0_1.CalcTextSize(arg_212_0)
	local var_212_1 = var_0_1.GetCursorScreenPos()
	local var_212_2 = var_0_1.GetCursorPos()
	local var_212_3 = var_0_1.InvisibleButton(arg_212_0, var_212_0)

	var_0_1.SetCursorPos(var_212_2)

	if var_0_1.IsItemHovered() then
		if arg_212_1 then
			var_0_1.Hint(arg_212_0, arg_212_1)
		end

		var_0_1.TextColored(var_0_1.GetStyle().Colors[var_0_1.Col.ButtonHovered], arg_212_0)
		var_0_1.GetWindowDrawList():AddLine(var_0_1.ImVec2(var_212_1.x, var_212_1.y + var_212_0.y + 3), var_0_1.ImVec2(var_212_1.x + var_212_0.x, var_212_1.y + var_212_0.y + 3), var_0_1.GetColorU32Vec4(var_0_1.GetStyle().Colors[var_0_1.Col.ButtonHovered]))
	else
		var_0_1.TextColored(var_0_1.GetStyle().Colors[var_0_1.Col.ButtonHovered], arg_212_0)
	end

	return var_212_3
end

function sendInfoRep()
	sampAddChatMessage("________ Информация о репорте | MATools ________", -177821232)
	sampAddChatMessage("Время ответа: {FFFFFF}" .. os.time() - var_0_36.start_time .. " сек.", -177821232)
	sampAddChatMessage("Жалоба: {FFFFFF}" .. var_0_36.Text, -177821232)
	sampAddChatMessage("Ответ: {FFFFFF}" .. var_0_14:decode(var_0_2.string(var_0_35)), -177821232)
	sampAddChatMessage("Автор: {FFFFFF}" .. var_0_36.AuthorNick .. "[" .. var_0_36.AuthorId .. "]", -177821232)
	sampAddChatMessage("Нарушитель: {FFFFFF}" .. var_0_36.SuspectNick .. "[" .. var_0_36.SuspectId .. "]", -177821232)
	sampAddChatMessage("________________________________________________", -177821232)
end

function var_0_1.TextForm(arg_214_0, arg_214_1, arg_214_2, arg_214_3)
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() + 3)
	var_0_1.Text(var_0_8("angle_right"))
	var_0_1.SameLine()
	var_0_1.SetCursorPosY(var_0_1.GetCursorPosY() - 3)
	customArrowCombo(arg_214_0, arg_214_1, arg_214_2, arg_214_3)
end

function AutoForm(arg_215_0, arg_215_1, arg_215_2, arg_215_3, arg_215_4, arg_215_5, arg_215_6, arg_215_7, arg_215_8, arg_215_9, arg_215_10, arg_215_11, arg_215_12, arg_215_13, arg_215_14, arg_215_15, arg_215_16, arg_215_17, arg_215_18, arg_215_19, arg_215_20, arg_215_21, arg_215_22, arg_215_23, arg_215_24, arg_215_25, arg_215_26, arg_215_27, arg_215_28, arg_215_29, arg_215_30, arg_215_31, arg_215_32, arg_215_33, arg_215_34, arg_215_35, arg_215_36, arg_215_37, arg_215_38)
	var_0_18.forms.forms_msg = arg_215_0
	var_0_18.forms.forms_hc = arg_215_1
	var_0_18.forms.forms_slap = arg_215_2
	var_0_18.forms.forms_spawn = arg_215_3
	var_0_18.forms.forms_freeze = arg_215_4
	var_0_18.forms.forms_unfreeze = arg_215_5
	var_0_18.forms.forms_pveh = arg_215_6
	var_0_18.forms.forms_tempskin = arg_215_7
	var_0_18.forms.forms_sethp = arg_215_8
	var_0_18.forms.forms_areanimate = arg_215_9
	var_0_18.forms.forms_kick = arg_215_10
	var_0_18.forms.forms_bgun = arg_215_11
	var_0_18.forms.forms_unbgun = arg_215_12
	var_0_18.forms.forms_ban = arg_215_13
	var_0_18.forms.forms_unban = arg_215_14
	var_0_18.forms.forms_offban = arg_215_15
	var_0_18.forms.forms_mute = arg_215_16
	var_0_18.forms.forms_unmute = arg_215_17
	var_0_18.forms.forms_offmute = arg_215_18
	var_0_18.forms.forms_offunmute = arg_215_19
	var_0_18.forms.forms_warn = arg_215_20
	var_0_18.forms.forms_unwarn = arg_215_21
	var_0_18.forms.forms_offwarn = arg_215_22
	var_0_18.forms.forms_offunwarn = arg_215_23
	var_0_18.forms.forms_prison = arg_215_24
	var_0_18.forms.forms_unprison = arg_215_25
	var_0_18.forms.forms_offprison = arg_215_26
	var_0_18.forms.forms_offunprison = arg_215_27
	var_0_18.forms.forms_givecupon = arg_215_28
	var_0_18.forms.forms_auninvite = arg_215_29
	var_0_18.forms.forms_vcmute = arg_215_30
	var_0_18.forms.forms_vcunmute = arg_215_31
	var_0_18.forms.forms_alldelv = arg_215_32
	var_0_18.forms.forms_fuelvehs = arg_215_33
	var_0_18.forms.forms_jail = arg_215_34
	var_0_18.forms.forms_unjail = arg_215_35
	var_0_18.forms.forms_offjail = arg_215_36
	var_0_18.forms.forms_offunjail = arg_215_37
	var_0_18.forms.forms_soffban = arg_215_38

	var_0_3.save(var_0_18, var_0_17)

	var_0_110.Forms.forms_msg = arg_215_0
	var_0_110.Forms.forms_hc = arg_215_1
	var_0_110.Forms.forms_slap = arg_215_2
	var_0_110.Forms.forms_spawn = arg_215_3
	var_0_110.Forms.forms_freeze = arg_215_4
	var_0_110.Forms.forms_unfreeze = arg_215_5
	var_0_110.Forms.forms_pveh = arg_215_6
	var_0_110.Forms.forms_tempskin = arg_215_7
	var_0_110.Forms.forms_sethp = arg_215_8
	var_0_110.Forms.forms_areanimate = arg_215_9
	var_0_110.Forms.forms_kick = arg_215_10
	var_0_110.Forms.forms_bgun = arg_215_11
	var_0_110.Forms.forms_unbgun = arg_215_12
	var_0_110.Forms.forms_ban = arg_215_13
	var_0_110.Forms.forms_unban = arg_215_14
	var_0_110.Forms.forms_offban = arg_215_15
	var_0_110.Forms.forms_mute = arg_215_16
	var_0_110.Forms.forms_unmute = arg_215_17
	var_0_110.Forms.forms_offmute = arg_215_18
	var_0_110.Forms.forms_offunmute = arg_215_19
	var_0_110.Forms.forms_warn = arg_215_20
	var_0_110.Forms.forms_unwarn = arg_215_21
	var_0_110.Forms.forms_offwarn = arg_215_22
	var_0_110.Forms.forms_offunwarn = arg_215_23
	var_0_110.Forms.forms_prison = arg_215_24
	var_0_110.Forms.forms_unprison = arg_215_25
	var_0_110.Forms.forms_offprison = arg_215_26
	var_0_110.Forms.forms_offunprison = arg_215_27
	var_0_110.Forms.forms_givecupon = arg_215_28
	var_0_110.Forms.forms_auninvite = arg_215_29
	var_0_110.Forms.forms_vcmute = arg_215_30
	var_0_110.Forms.forms_vcunmute = arg_215_31
	var_0_110.Forms.forms_alldelv = arg_215_32
	var_0_110.Forms.forms_fuelvehs = arg_215_33
	var_0_110.Forms.forms_jail = arg_215_34
	var_0_110.Forms.forms_unjail = arg_215_35
	var_0_110.Forms.forms_offjail = arg_215_36
	var_0_110.Forms.forms_offunjail = arg_215_37
	var_0_110.Forms.forms_soffban = arg_215_38
end

function off_mat_func()
	local var_216_0 = var_0_26.off_mat[0] and var_0_14("Функционал тулса успешно отключен!") or var_0_14("Функционал тулса успешно включен!")

	var_0_108(var_216_0, 1111)

	if var_0_29.active_clickwarp then
		var_0_29.active_clickwarp = false

		sampToggleCursor(false)
	end

	var_0_5.setfloat(9252452, 0.95999997854233)
	var_0_5.write(9867640, 0, 1, true)
	setCharProofs(playerPed, false, false, false, false, false)
	writeMemory(9867630, 1, 0, false)
end

function saveJsonFile(arg_217_0, arg_217_1, arg_217_2)
	arg_217_2 = arg_217_2 or 0

	local var_217_0, var_217_1 = var_0_4.encode(arg_217_1, {
		indent = true
	})

	if not var_217_0 then
		sampAddChatMessage(var_0_16 .. "Ошибка сериализации: " .. var_217_1, -1)

		return
	end

	local var_217_2, var_217_3 = io.open(arg_217_0, "w")

	if not var_217_2 then
		sampAddChatMessage(var_0_16 .. "Ошибка открытия файла: " .. var_217_3, -1)

		return
	end

	var_217_2:write(var_217_0)
	var_217_2:close()

	if arg_217_2 == 1 then
		for iter_217_0, iter_217_1 in ipairs(var_0_102) do
			sampRegisterChatCommand(iter_217_1.activation, function()
				linebinder(iter_217_1)
			end)
		end
	end

	arg_217_1 = loadJsonFile(arg_217_0)
end

function var_0_9.onRemovePlayerFromVehicle()
	if var_0_18.settings.anti_eject then
		return false
	end
end

function rotateCarAroundUpAxis(arg_220_0, arg_220_1)
	local var_220_0 = var_0_6(getVehicleRotationMatrix(arg_220_0))
	local var_220_1 = var_0_7(var_220_0.up:get())

	arg_220_1:normalize()
	var_220_1:normalize()

	local var_220_2 = math.acos(var_220_1:dotProduct(arg_220_1))

	if var_220_2 ~= 0 then
		var_220_1:crossProduct(arg_220_1)
		var_220_1:normalize()
		var_220_1:zeroNearZero()

		var_220_0 = var_220_0:rotate(var_220_1, -var_220_2)
	end

	setVehicleRotationMatrix(arg_220_0, var_220_0:get())
end

function readFloatArray(arg_221_0, arg_221_1)
	return representIntAsFloat(readMemory(arg_221_0 + arg_221_1 * 4, 4, false))
end

function writeFloatArray(arg_222_0, arg_222_1, arg_222_2)
	writeMemory(arg_222_0 + arg_222_1 * 4, 4, representFloatAsInt(arg_222_2), false)
end

function getVehicleRotationMatrix(arg_223_0)
	local var_223_0 = getCarPointer(arg_223_0)

	if var_223_0 ~= 0 then
		local var_223_1 = readMemory(var_223_0 + 20, 4, false)

		if var_223_1 ~= 0 then
			local var_223_2
			local var_223_3
			local var_223_4
			local var_223_5
			local var_223_6
			local var_223_7
			local var_223_8
			local var_223_9
			local var_223_10
			local var_223_11 = readFloatArray(var_223_1, 0)
			local var_223_12 = readFloatArray(var_223_1, 1)
			local var_223_13 = readFloatArray(var_223_1, 2)
			local var_223_14 = readFloatArray(var_223_1, 4)
			local var_223_15 = readFloatArray(var_223_1, 5)
			local var_223_16 = readFloatArray(var_223_1, 6)
			local var_223_17 = readFloatArray(var_223_1, 8)
			local var_223_18 = readFloatArray(var_223_1, 9)
			local var_223_19 = readFloatArray(var_223_1, 10)

			return var_223_11, var_223_12, var_223_13, var_223_14, var_223_15, var_223_16, var_223_17, var_223_18, var_223_19
		end
	end
end

function setVehicleRotationMatrix(arg_224_0, arg_224_1, arg_224_2, arg_224_3, arg_224_4, arg_224_5, arg_224_6, arg_224_7, arg_224_8, arg_224_9)
	local var_224_0 = getCarPointer(arg_224_0)

	if var_224_0 ~= 0 then
		local var_224_1 = readMemory(var_224_0 + 20, 4, false)

		if var_224_1 ~= 0 then
			writeFloatArray(var_224_1, 0, arg_224_1)
			writeFloatArray(var_224_1, 1, arg_224_2)
			writeFloatArray(var_224_1, 2, arg_224_3)
			writeFloatArray(var_224_1, 4, arg_224_4)
			writeFloatArray(var_224_1, 5, arg_224_5)
			writeFloatArray(var_224_1, 6, arg_224_6)
			writeFloatArray(var_224_1, 8, arg_224_7)
			writeFloatArray(var_224_1, 9, arg_224_8)
			writeFloatArray(var_224_1, 10, arg_224_9)
		end
	end
end

function displayVehicleName(arg_225_0, arg_225_1, arg_225_2)
	arg_225_0, arg_225_1 = convertWindowScreenCoordsToGameScreenCoords(arg_225_0, arg_225_1)

	useRenderCommands(true)
	setTextWrapx(640)
	setTextProportional(true)
	setTextJustify(false)
	setTextScale(0.33, 0.8)
	setTextDropshadow(0, 0, 0, 0, 0)
	setTextColour(255, 255, 255, 230)
	setTextEdge(1, 0, 0, 0, 100)
	setTextFont(1)
	displayText(arg_225_0, arg_225_1, arg_225_2)
end

function teleportPlayer(arg_226_0, arg_226_1, arg_226_2)
	if isCharInAnyCar(playerPed) then
		setCharCoordinates(playerPed, arg_226_0, arg_226_1, arg_226_2)
	end

	setCharCoordinatesDontResetAnim(playerPed, arg_226_0, arg_226_1, arg_226_2)
end

function setCharCoordinatesDontResetAnim(arg_227_0, arg_227_1, arg_227_2, arg_227_3)
	if doesCharExist(arg_227_0) then
		local var_227_0 = getCharPointer(arg_227_0)

		setEntityCoordinates(var_227_0, arg_227_1, arg_227_2, arg_227_3)
	end
end

function setEntityCoordinates(arg_228_0, arg_228_1, arg_228_2, arg_228_3)
	if arg_228_0 ~= 0 then
		local var_228_0 = readMemory(arg_228_0 + 20, 4, false)

		if var_228_0 ~= 0 then
			local var_228_1 = var_228_0 + 48

			writeMemory(var_228_1 + 0, 4, representFloatAsInt(arg_228_1), false)
			writeMemory(var_228_1 + 4, 4, representFloatAsInt(arg_228_2), false)
			writeMemory(var_228_1 + 8, 4, representFloatAsInt(arg_228_3), false)
		end
	end
end

function airbrake()
	if not var_0_29.active_airbrake then
		return
	end

	while var_0_29.active_airbrake and (not var_0_26.off_mat[0] or var_0_26.off_mat[0] and not var_0_18.settings.off_mat_cheats) do
		wait(0)

		if isCharInAnyCar(PLAYER_PED) then
			setCarHeading(getCarCharIsUsing(PLAYER_PED), getHeadingFromVector2d(select(1, getActiveCameraPointAt()) - select(1, getActiveCameraCoordinates()), select(2, getActiveCameraPointAt()) - select(2, getActiveCameraCoordinates())))

			if getDriverOfCar(getCarCharIsUsing(PLAYER_PED)) == -1 then
				speed = getFullSpeed(1.5, 0, 0)
			else
				speed = getFullSpeed(var_0_18.cheats.airbrake_speed, 0, 0)
			end
		else
			speed = getFullSpeed(var_0_18.cheats.airbrake_speed, 0, 0)

			setCharHeading(PLAYER_PED, getHeadingFromVector2d(select(1, getActiveCameraPointAt()) - select(1, getActiveCameraCoordinates()), select(2, getActiveCameraPointAt()) - select(2, getActiveCameraCoordinates())))
		end

		if not sampIsDialogActive() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() then
			if not isKeyDown(VK_RBUTTON) then
				if isKeyDown(VK_SPACE) then
					airBrkCoords[3] = airBrkCoords[3] + speed / 2
				elseif isKeyDown(VK_LSHIFT) and airBrkCoords[3] > -95 then
					airBrkCoords[3] = airBrkCoords[3] - speed / 2
				end
			end

			if isKeyDown(VK_W) then
				airBrkCoords[1] = airBrkCoords[1] + speed * math.sin(-math.rad(getCharHeading(PLAYER_PED)))
				airBrkCoords[2] = airBrkCoords[2] + speed * math.cos(-math.rad(getCharHeading(PLAYER_PED)))
			elseif isKeyDown(VK_S) then
				airBrkCoords[1] = airBrkCoords[1] - speed * math.sin(-math.rad(getCharHeading(PLAYER_PED)))
				airBrkCoords[2] = airBrkCoords[2] - speed * math.cos(-math.rad(getCharHeading(PLAYER_PED)))
			end

			if isKeyDown(VK_A) then
				airBrkCoords[1] = airBrkCoords[1] - speed * math.sin(-math.rad(getCharHeading(PLAYER_PED) - 90))
				airBrkCoords[2] = airBrkCoords[2] - speed * math.cos(-math.rad(getCharHeading(PLAYER_PED) - 90))
			elseif isKeyDown(VK_D) then
				airBrkCoords[1] = airBrkCoords[1] + speed * math.sin(-math.rad(getCharHeading(PLAYER_PED) - 90))
				airBrkCoords[2] = airBrkCoords[2] + speed * math.cos(-math.rad(getCharHeading(PLAYER_PED) - 90))
			end
		end

		if isCharInAnyCar(PLAYER_PED) then
			setCharCoordinates(PLAYER_PED, airBrkCoords[1], airBrkCoords[2], airBrkCoords[3])
		else
			setCharCoordinates(PLAYER_PED, airBrkCoords[1], airBrkCoords[2], airBrkCoords[3] + 0.33)
			setCharVelocity(PLAYER_PED, 0, 0, 0)
		end
	end
end

function var_0_9.onSendPlayerSync(arg_230_0)
	if var_0_18.settings.nosurf and not var_0_29.active_airbrake then
		arg_230_0.surfingVehicleId = -1
	end

	if var_0_29.active_invis and not var_0_37.specWinState[0] then
		local var_230_0, var_230_1, var_230_2 = getCharCoordinates(PLAYER_PED)
		local var_230_3 = getGroundZFor3dCoord(var_230_0, var_230_1, var_230_2)

		arg_230_0.position.z = var_230_3 - 10
	end

	if var_0_29.active_airbrake then
		local var_230_4 = getMoveSpeed(getCharHeading(PLAYER_PED), 0.5)

		arg_230_0.moveSpeed = {
			var_230_4.x,
			var_230_4.y,
			arg_230_0.moveSpeed.z
		}

		return arg_230_0
	end
end

function var_0_9.onSendVehicleSync(arg_231_0)
	if var_0_29.flycar_active then
		var_0_29.fc = {
			arg_231_0.vehicleId
		}

		local var_231_0, var_231_1 = sampGetCarHandleBySampVehicleId(arg_231_0.vehicleId)
		local var_231_2 = getCarHeading(var_231_1)

		arg_231_0.moveSpeed = getMoveSpeed(var_231_2, 0.5)

		return arg_231_0
	end

	if var_0_29.active_invis and not var_0_37.specWinState[0] then
		local var_231_3, var_231_4, var_231_5 = getCharCoordinates(PLAYER_PED)
		local var_231_6 = getGroundZFor3dCoord(var_231_3, var_231_4, var_231_5)

		arg_231_0.position.z = var_231_6 - 10
	end

	if var_0_29.active_airbrake then
		local var_231_7 = getMoveSpeed(getCharHeading(PLAYER_PED), 0.5)

		arg_231_0.moveSpeed = {
			var_231_7.x,
			var_231_7.y,
			arg_231_0.moveSpeed.z
		}

		return arg_231_0
	end
end

function var_0_9.onSendUnoccupiedSync(arg_232_0)
	if var_0_29.flycar_active then
		local var_232_0, var_232_1 = sampGetCarHandleBySampVehicleId(arg_232_0.vehicleId)
		local var_232_2 = getCarHeading(var_232_1)

		arg_232_0.moveSpeed = getMoveSpeed(var_232_2, 0.2)

		return arg_232_0
	end

	if var_0_29.active_airbrake then
		local var_232_3 = getMoveSpeed(getCharHeading(PLAYER_PED), 0.3)

		arg_232_0.moveSpeed = {
			var_232_3.x,
			var_232_3.y,
			arg_232_0.moveSpeed.z
		}

		return arg_232_0
	end
end

function var_0_9.onSendPassengerSync(arg_233_0)
	if var_0_29.flycar_active then
		var_0_29.fc = {
			arg_233_0.vehicleId,
			arg_233_0.seatId
		}
	end

	if var_0_29.active_airbrake then
		pcall(onSendUnoccupiedSync, arg_233_0.vehicleId, arg_233_0.seatId)

		arg_233_0.position = {
			getCharCoordinates(PLAYER_PED)
		}

		return arg_233_0
	end
end

function getMoveSpeed(arg_234_0, arg_234_1)
	moveSpeed = {
		z = 0,
		x = math.sin(-math.rad(arg_234_0)) * (arg_234_1 / 10),
		y = math.cos(-math.rad(arg_234_0)) * (arg_234_1 / 10)
	}

	return moveSpeed
end

function getFullSpeed(arg_235_0, arg_235_1, arg_235_2)
	local var_235_0 = arg_235_0 / (var_0_5.getfloat(12045136, true) / 15)

	if arg_235_1 == 1 then
		local var_235_1 = sampGetPlayerPing(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))

		if arg_235_2 < var_235_1 then
			var_235_0 = var_235_0 / (arg_235_2 / var_235_1)
		end
	end

	return var_235_0
end