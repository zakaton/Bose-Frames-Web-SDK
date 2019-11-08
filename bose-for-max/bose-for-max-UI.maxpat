{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 51.0, 84.0, 840.0, 680.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 4,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-142",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1356.0, 357.333343505859375, 150.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 8.875000953674316, 49.333335876464844, 150.0, 47.0 ],
					"text" : "To start: Click \"Launch Browser\" and connect Frames",
					"textcolor" : [ 0.996078431606293, 0.996078431606293, 0.996078431606293, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 24.0,
					"id" : "obj-140",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1334.666748046875, 217.333343505859375, 305.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.875000953674316, 9.333337783813477, 167.0, 33.0 ],
					"text" : "Bose For Live",
					"textcolor" : [ 0.996078431606293, 0.996078431606293, 0.996078431606293, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 575.12493896484375, 1396.0001220703125, 78.0, 22.0 ],
					"text" : "s game_data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.125, 1364.0001220703125, 81.0, 22.0 ],
					"text" : "pak 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 887.83331298828125, 926.66668701171875, 76.0, 22.0 ],
					"text" : "r game_data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.666671752929688, 1099.666748046875, 68.0, 22.0 ],
					"text" : "pak 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.666671752929688, 1132.0, 71.0, 22.0 ],
					"text" : "s gyro_data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 895.70831298828125, 1148.0, 69.0, 22.0 ],
					"text" : "r gyro_data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1250.791748046875, 926.66668701171875, 74.0, 22.0 ],
					"text" : "r accel_data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.875, 1099.666748046875, 68.0, 22.0 ],
					"text" : "pak 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.875, 1137.3333740234375, 76.0, 22.0 ],
					"text" : "s accel_data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 406.041656494140625, 1393.3333740234375, 88.0, 22.0 ],
					"text" : "s rotation_data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 406.041656494140625, 1364.0001220703125, 81.0, 22.0 ],
					"text" : "pak 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1250.666748046875, 1140.0001220703125, 86.0, 22.0 ],
					"text" : "r rotation_data"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"candycane" : 4,
					"id" : "obj-124",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 887.83331298828125, 954.3333740234375, 325.333343505859375, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 655.125, 603.73956298828125, 428.0, 281.739471435546875 ],
					"setstyle" : 1,
					"size" : 4,
					"spacing" : 5
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"candycane" : 4,
					"id" : "obj-123",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 895.70831298828125, 1185.3333740234375, 325.333343505859375, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.125007629394531, 609.07293701171875, 428.0, 276.4061279296875 ],
					"setstyle" : 1,
					"size" : 3,
					"spacing" : 5
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"candycane" : 4,
					"id" : "obj-122",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1250.791748046875, 954.3333740234375, 325.333343505859375, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.125007629394531, 317.0, 424.0, 284.739593505859375 ],
					"setstyle" : 1,
					"size" : 3,
					"spacing" : 5
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"candycane" : 4,
					"id" : "obj-120",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1250.666748046875, 1178.0, 325.333343505859375, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 655.125, 322.333343505859375, 428.0, 279.40625 ],
					"setstyle" : 1,
					"size" : 4,
					"spacing" : 5
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1007.875, 672.83331298828125, 101.0, 25.0 ],
					"text" : "turn on audio"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 956.875, 663.33331298828125, 44.0, 44.0 ],
					"prototypename" : "helpfile"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1250.791748046875, 755.33331298828125, 77.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 611.20819091796875, 162.187515258789062, 77.0, 20.0 ],
					"text" : "Head Shake"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1103.791748046875, 755.33331298828125, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.208221435546875, 162.187515258789062, 65.0, 20.0 ],
					"text" : "Head Nod"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 936.791748046875, 755.33331298828125, 73.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.208251953125, 162.187515258789062, 73.0, 20.0 ],
					"text" : "Double Tap"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 992.0, 932.3333740234375, 94.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 617.7760009765625, 94.0, 20.0 ],
					"text" : "Game Rotation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1384.8333740234375, 1156.0, 57.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 569.125, 331.927093505859375, 57.0, 20.0 ],
					"text" : "Rotation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1373.2083740234375, 932.3333740234375, 103.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.875000953674316, 326.59375, 92.0, 20.0 ],
					"text" : "Accelerometer"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1015.0, 1161.3333740234375, 71.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.125003814697266, 617.7760009765625, 71.0, 20.0 ],
					"text" : "Gyroscope"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.916667938232422, 204.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 684.16668701171875, 101.0, 49.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 147.499984741210938, 137.593765258789062, 63.0, 18.0 ],
					"suppressinlet" : 1,
					"text" : "Device #",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 956.0, 29.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 136.593765258789062, 100.0, 20.0 ],
					"text" : "Launch Browser",
					"texton" : "Launch Browser"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 1192.0, 116.0, 51.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.500007629394531, 173.593765258789062, 54.0, 18.0 ],
					"suppressinlet" : 1,
					"text" : "rate (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1070.75, 373.0, 92.0, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.999984741210938, 242.406265258789062, 79.916641235351562, 21.40625 ],
					"text" : "Head Shake",
					"texton" : "Head Shake"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 925.5, 373.0, 92.0, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.999984741210938, 219.0, 79.916641235351562, 21.40625 ],
					"text" : "Head Nod",
					"texton" : "Head Nod"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 766.75, 373.0, 92.0, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.999984741210938, 195.59375, 79.916641235351562, 21.40625 ],
					"text" : "Double Tap",
					"texton" : "Double Tap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 568.0, 373.0, 92.0, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 265.8125, 92.0, 21.40625 ],
					"text" : "Game Rotation",
					"texton" : "Game Rotation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 398.0, 373.0, 92.0, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 242.406265258789062, 92.0, 21.40625 ],
					"text" : "Rotation",
					"texton" : "Rotation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 218.0, 374.0, 92.0, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 219.0, 92.0, 21.40625 ],
					"text" : "Gyroscope",
					"texton" : "Gyroscope"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 20.0, 374.0, 92.0, 21.40625 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 195.59375, 92.0, 21.40625 ],
					"text" : "Accelerometer",
					"texton" : "Accelerometer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1098.333333671092987, 285.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 946.416667103767395, 281.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 797.833333671092987, 281.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 656.375000238418579, 309.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.000000238418579, 309.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 662.250000238418579, 277.33333420753479, 33.25, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 618.750000238418579, 280.33333420753479, 22.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 597.000000238418579, 250.33333420753479, 100.0, 22.0 ],
					"text" : "select \"0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.000000238418579, 280.33333420753479, 20.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 477.375000238418579, 309.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 418.000000238418579, 309.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 483.250000238418579, 277.33333420753479, 33.25, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 439.750000238418579, 280.33333420753479, 22.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 418.000000238418579, 250.33333420753479, 100.0, 22.0 ],
					"text" : "select \"0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 418.000000238418579, 280.33333420753479, 20.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 297.375000238418579, 313.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 238.000000238418579, 313.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 303.250000238418579, 281.33333420753479, 33.25, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 259.750000238418579, 284.33333420753479, 22.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 238.000000238418579, 254.33333420753479, 100.0, 22.0 ],
					"text" : "select \"0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 238.000000238418579, 284.33333420753479, 20.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.625000238418579, 313.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 61.250000238418579, 313.33333420753479, 43.333333134651213, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.6666659116745, 563.0, 50.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"fontface" : 1,
					"id" : "obj-60",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 735.16668701171875, 99.0, 28.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 209.499984741210938, 134.333343505859375, 28.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 126.500000238418579, 281.33333420753479, 33.25, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 83.000000238418579, 284.33333420753479, 22.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 61.250000238418579, 254.33333420753479, 100.0, 22.0 ],
					"text" : "select \"0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 61.250000238418579, 284.33333420753479, 20.0, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 832.500000238418579, 204.0, 269.0, 22.0 ],
					"text" : "route singleTap doubleTap headNod headShake"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 147.500000238418579, 204.0, 298.0, 22.0 ],
					"text" : "route accelerometer gyroscope rotation gameRotation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 521.875000238418579, 190.0, 174.0, 22.0 ],
					"text" : "route sensorInput gestureInput"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 521.875, 143.0, 100.0, 22.0 ],
					"text" : "route 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 542.875, 101.0, 132.0, 22.0 ],
					"text" : "receive bose-ar-output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-776",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 650.375000238418579, 755.33333420753479, 269.0, 22.0 ],
					"text" : "route singleTap doubleTap headNod headShake"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-772",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 336.375000238418579, 755.33333420753479, 299.0, 22.0 ],
					"text" : "route accelerometer gyroscope rotation gameRotation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-769",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 550.625000238418579, 721.333339691162109, 171.0, 22.0 ],
					"text" : "route sensorData gestureData"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-767",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 550.625000238418579, 692.33333420753479, 100.0, 22.0 ],
					"text" : "route 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-766",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.625000238418579, 663.33333420753479, 130.0, 22.0 ],
					"text" : "receive bose-ar-output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-765",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 436.500000238418579, 60.5, 116.0, 22.0 ],
					"text" : "send bose-ar-output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-764",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 691.000000238418579, 435.0, 35.0, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-763",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 503.000000238418579, 435.0, 35.0, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-762",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 329.500000238418579, 435.0, 35.0, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-761",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 140.500000238418579, 435.0, 35.0, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-760",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.500000238418579, 10.5, 123.0, 22.0 ],
					"text" : "receive bose-ar-input"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-757",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1235.791748046875, 801.3333740234375, 105.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 611.20819091796875, 210.1875, 105.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-758",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1275.541748046875, 842.3333740234375, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 690.20819091796875, 160.187515258789062, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-759",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 1236.791748046875, 775.3333740234375, 103.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 611.20819091796875, 188.1875, 91.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-754",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1082.791748046875, 803.3333740234375, 105.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.208221435546875, 210.1875, 105.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-755",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1122.541748046875, 844.3333740234375, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 532.29156494140625, 160.187515258789062, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-756",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 1083.791748046875, 777.3333740234375, 103.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 464.208221435546875, 188.1875, 91.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-732",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 587.625000238418579, 1318.000010132789612, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 801.442626953125, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-733",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 587.625000238418579, 1294.000010132789612, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 802.4423828125, 25.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "roll",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-734",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 587.625000238418579, 1251.000008583068848, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 777.442626953125, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-735",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 587.625000238418579, 1227.000008583068848, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 777.442626953125, 34.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "pitch",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-736",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 587.625000238418579, 1185.333340406417847, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 752.7760009765625, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-737",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 587.625000238418579, 1161.333340406417847, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 752.7760009765625, 30.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "yaw",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-738",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 587.625000238418579, 1114.333338737487793, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 718.7760009765625, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-739",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 587.625000238418579, 1090.333338737487793, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 718.7760009765625, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "w",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-740",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 587.625000238418579, 1047.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 691.7760009765625, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-741",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 587.625000238418579, 1023.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 692.7760009765625, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "z",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-742",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 587.625000238418579, 986.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 666.7760009765625, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-743",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 587.625000238418579, 962.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 667.7760009765625, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "y",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-744",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 587.625000238418579, 793.333337187767029, 106.0, 35.0 ],
					"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-745",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 587.625000238418579, 859.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 849.77587890625, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-746",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 587.625000238418579, 835.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 827.77587890625, 91.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-747",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 587.625000238418579, 922.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 641.7760009765625, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-748",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 587.625000238418579, 898.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 641.7760009765625, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "x",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-729",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.375000238418579, 1318.000010132789612, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 514.7396240234375, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-730",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.375000238418579, 1294.000010132789612, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 513.7396240234375, 25.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "roll",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-727",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.375000238418579, 1251.000008583068848, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 489.406219482421875, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-728",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.375000238418579, 1227.000008583068848, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 488.406219482421875, 34.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "pitch",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-725",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.375000238418579, 1185.333340406417847, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 463.406219482421875, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-726",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.375000238418579, 1161.333340406417847, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 463.406219482421875, 30.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "yaw",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-723",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.375000238418579, 1114.333338737487793, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 431.739593505859375, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-724",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.375000238418579, 1090.333338737487793, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 431.739593505859375, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "w",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-714",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.375000238418579, 1047.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 407.739593505859375, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-715",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.375000238418579, 1023.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 407.739593505859375, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "z",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-716",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.375000238418579, 986.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 381.927093505859375, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-717",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.375000238418579, 962.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 381.927093505859375, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "y",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-718",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float" ],
					"patching_rect" : [ 415.375000238418579, 793.333337187767029, 106.0, 35.0 ],
					"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-719",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.375000238418579, 859.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 564.07293701171875, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-720",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.375000238418579, 835.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 542.07293701171875, 91.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-721",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 415.375000238418579, 922.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 584.125, 357.927093505859375, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-722",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 415.375000238418579, 898.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 552.125, 357.927093505859375, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "x",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-705",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 235.375000238418579, 1047.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.625003814697266, 687.7760009765625, 58.5, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-706",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 235.375000238418579, 1023.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.125, 689.7760009765625, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "z",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.0 ],
					"format" : 6,
					"id" : "obj-707",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 235.375000238418579, 986.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.750003814697266, 665.7760009765625, 56.375, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-708",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 235.375000238418579, 962.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.125, 665.7760009765625, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "y",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-709",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "float", "float", "float" ],
					"patching_rect" : [ 235.375000238418579, 793.333337187767029, 106.0, 22.0 ],
					"text" : "unpack 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-710",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 235.375000238418579, 859.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.125, 737.7760009765625, 106.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-711",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 235.375000238418579, 835.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.125, 715.7760009765625, 91.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-712",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 235.375000238418579, 922.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.625003814697266, 641.7760009765625, 59.5, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-713",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 235.375000238418579, 898.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.125, 641.7760009765625, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "x",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-703",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 25.875000238418579, 1047.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.875003814697266, 402.40625, 66.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-704",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 25.875000238418579, 1023.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.875000953674316, 402.40625, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "z",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-701",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 25.875000238418579, 986.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.875003814697266, 376.59375, 67.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-702",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 25.875000238418579, 962.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.875000953674316, 378.0, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "y",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.000002980232239, 42.49999988079071, 129.0, 35.0 ],
					"text" : ";\rmax launchbrowser $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 811.000002980232239, 11.49999988079071, 116.0, 22.0 ],
					"text" : "http://localhost:3000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-700",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 727.625, 11.5, 66.0, 66.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-695",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.5, 23.5, 213.0, 49.0 ],
					"text" : "0 sensorData gameRotation 45993 0.431 -0.18 0.164 -0.869 0.463 2.18 -0.174"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 24.500000238418579, 10.5, 67.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 102.500000238418579, 10.5, 71.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 102.500000238418579, 37.5, 111.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node" : "",
						"npm" : "",
						"watch" : 0
					}
,
					"text" : "node.script app.js",
					"varname" : "nodeScript"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-665",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "float", "float", "float" ],
					"patching_rect" : [ 25.875000238418579, 793.333337187767029, 106.0, 22.0 ],
					"text" : "unpack 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-587",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 25.875000238418579, 859.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.875000953674316, 452.40625, 91.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-588",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 25.875000238418579, 835.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.875000953674316, 430.40625, 91.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-558",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 25.875000238418579, 922.333337187767029, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.875003814697266, 352.59375, 67.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"format" : 6,
					"id" : "obj-551",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 935.791748046875, 803.3333740234375, 105.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.208251953125, 210.1875, 105.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-548",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 975.541748046875, 844.3333740234375, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.208221435546875, 160.187515258789062, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-543",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 936.791748046875, 777.3333740234375, 103.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.208251953125, 188.1875, 91.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-539",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 25.875000238418579, 898.333337187767029, 106.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.875000953674316, 352.59375, 18.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "x",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-530",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.000000238418579, 589.0, 119.25, 22.0 ],
					"text" : "send bose-ar-input",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-526",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1053.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-521",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1053.000000238418579, 524.0, 134.0, 22.0 ],
					"text" : "$1-gesture headShake"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-522",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1053.000000238418579, 496.0, 134.0, 22.0 ],
					"text" : "pack enable",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-523",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1104.750000238418579, 401.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-524",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1053.000000238418579, 435.0, 134.0, 22.0 ],
					"text" : "select 1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-525",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1137.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "disable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-514",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 903.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-515",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 903.000000238418579, 524.0, 128.0, 22.0 ],
					"text" : "$1-gesture headNod",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-516",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 903.000000238418579, 496.0, 128.0, 22.0 ],
					"text" : "pack enable",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-517",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 954.750000238418579, 401.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-518",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 903.000000238418579, 435.0, 127.5, 22.0 ],
					"text" : "select 1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-519",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 981.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "disable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-503",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 756.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-504",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 756.000000238418579, 524.0, 128.0, 22.0 ],
					"text" : "$1-gesture doubleTap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-505",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 756.000000238418579, 496.0, 128.0, 22.0 ],
					"text" : "pack enable",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-506",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 807.750000238418579, 401.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-507",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 756.000000238418579, 435.0, 127.5, 22.0 ],
					"text" : "select 1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-508",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 834.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "disable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-494",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 556.000000238418579, 563.0, 119.25, 22.0 ],
					"text" : "append 0",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-493",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 662.250000238418579, 407.0, 58.0, 20.0 ],
					"text" : "rate (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-492",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 477.375000238418579, 407.0, 58.0, 20.0 ],
					"text" : "rate (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-491",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 303.250000238418579, 403.0, 58.0, 20.0 ],
					"text" : "rate (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-490",
					"items" : [ 20, ",", 40, ",", 80, ",", 160, ",", 320 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 662.25, 373.0, 48.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.000007629394531, 265.8125, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "20", "40", "80", "160", "320" ],
							"parameter_type" : 2,
							"parameter_longname" : "umenu[7]",
							"parameter_mmax" : 4.0,
							"parameter_shortname" : "umenu"
						}

					}
,
					"varname" : "umenu[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-489",
					"items" : [ 20, ",", 40, ",", 80, ",", 160, ",", 320 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 496.5, 373.0, 48.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.000007629394531, 242.406265258789062, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "20", "40", "80", "160", "320" ],
							"parameter_type" : 2,
							"parameter_longname" : "umenu[11]",
							"parameter_mmax" : 4.0,
							"parameter_shortname" : "umenu"
						}

					}
,
					"varname" : "umenu[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-488",
					"items" : [ 20, ",", 40, ",", 80, ",", 160, ",", 320 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 313.25, 373.0, 48.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.000007629394531, 219.0, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "20", "40", "80", "160", "320" ],
							"parameter_type" : 2,
							"parameter_longname" : "umenu[10]",
							"parameter_mmax" : 4.0,
							"parameter_shortname" : "umenu"
						}

					}
,
					"varname" : "umenu[10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-482",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.625000238418579, 407.0, 58.0, 20.0 ],
					"text" : "rate (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-481",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-474",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.000000238418579, 524.0, 158.0, 22.0 ],
					"text" : "$1-sensor gameRotation $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-476",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.000000238418579, 496.0, 158.0, 22.0 ],
					"text" : "pack enable 20",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-477",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 568.000000238418579, 403.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-478",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 568.000000238418579, 435.0, 103.5, 22.0 ],
					"text" : "select 1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-479",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 622.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "disable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-466",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 398.000000238418579, 524.0, 140.0, 22.0 ],
					"text" : "$1-sensor rotation $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-468",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 398.000000238418579, 496.0, 140.0, 22.0 ],
					"text" : "pack enable 20",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-469",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 398.000000238418579, 403.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-470",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 412.750000238418579, 435.0, 80.5, 22.0 ],
					"text" : "select 1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-471",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.500000238418579, 464.0, 50.0, 22.0 ],
					"text" : "disable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-472",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 398.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-459",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 218.000000238418579, 524.0, 140.0, 22.0 ],
					"text" : "$1-sensor gyroscope $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-461",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 218.000000238418579, 496.0, 140.0, 22.0 ],
					"text" : "pack enable 20",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-462",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 218.000000238418579, 401.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-463",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 218.000000238418579, 435.0, 103.5, 22.0 ],
					"text" : "select 1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-464",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.500000238418579, 464.0, 50.0, 22.0 ],
					"text" : "disable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-465",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 218.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-435",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.000000238418579, 524.0, 164.0, 22.0 ],
					"text" : "$1-sensor accelerometer $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-434",
					"items" : [ 20, ",", 40, ",", 80, ",", 160, ",", 320 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 114.0, 374.0, 49.958332061767578, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.000007629394531, 195.59375, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "20", "40", "80", "160", "320" ],
							"parameter_type" : 2,
							"parameter_longname" : "umenu[6]",
							"parameter_mmax" : 4.0,
							"parameter_shortname" : "umenu"
						}

					}
,
					"varname" : "umenu[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-433",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.000000238418579, 496.0, 164.0, 22.0 ],
					"text" : "pack enable 20",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-432",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 20.000000238418579, 401.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-429",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 20.000000238418579, 435.0, 103.5, 22.0 ],
					"text" : "select 1",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-428",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 73.500000238418579, 464.0, 50.0, 22.0 ],
					"text" : "disable"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-427",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.000000238418579, 464.0, 50.0, 22.0 ],
					"text" : "enable"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-509",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 756.000000238418579, 344.0, 394.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 178.499984741210938, 173.593765258789062, 59.0, 18.0 ],
					"suppressinlet" : 1,
					"text" : "Gestures",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"fontface" : 1,
					"id" : "obj-424",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 24.500000238418579, 116.0, 1162.5, 20.0 ],
					"suppressinlet" : 1,
					"text" : "BoseAR Device #",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-511",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 24.500000238418579, 344.0, 636.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.500003814697266, 173.593765258789062, 48.0, 18.0 ],
					"suppressinlet" : 1,
					"text" : "Sensors",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"grad2" : [ 0.458823529411765, 0.447058823529412, 0.447058823529412, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1359.666748046875, 73.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.875000953674316, 126.000007629394531, 245.0, 173.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"grad2" : [ 0.458823529411765, 0.447058823529412, 0.447058823529412, 1.0 ],
					"id" : "obj-41",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1557.875, 73.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 544.875, 322.333343505859375, 108.25, 279.40625 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"grad2" : [ 0.458823529411765, 0.447058823529412, 0.447058823529412, 1.0 ],
					"id" : "obj-44",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1389.875, 73.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.583251953125, 152.593765258789062, 437.583343505859375, 107.40625 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"grad2" : [ 0.458823529411765, 0.447058823529412, 0.447058823529412, 1.0 ],
					"id" : "obj-46",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1530.666748046875, 73.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 544.875, 609.07293701171875, 108.25, 279.40625 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"grad2" : [ 0.458823529411765, 0.447058823529412, 0.447058823529412, 1.0 ],
					"id" : "obj-48",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1477.3333740234375, 73.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.875000953674316, 609.07293701171875, 108.25, 279.40625 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"grad1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"grad2" : [ 0.458823529411765, 0.447058823529412, 0.447058823529412, 1.0 ],
					"id" : "obj-49",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1586.2083740234375, 73.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 8.875000953674316, 317.0, 108.25, 279.40625 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1345.875, 73.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -0.541678667068481, -0.7408047914505, 1123.1248779296875, 913.85003662109375 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 112.000000238418579, 33.0, 112.000000238418579, 33.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-123", 0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-506", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-517", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-523", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-700", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 531.375, 189.0, 554.000000238418579, 189.0, 554.000000238418579, 186.0, 531.375000238418579, 186.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 57.416667938232422, 299.0, 577.5, 299.0 ],
					"order" : 3,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 57.416667938232422, 299.0, 776.25, 299.0 ],
					"order" : 2,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 57.416667938232422, 299.0, 935.0, 299.0 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 57.416667938232422, 299.0, 1080.25, 299.0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 57.416667938232422, 299.5, 29.5, 299.5 ],
					"order" : 6,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 57.416667938232422, 299.5, 227.5, 299.5 ],
					"order" : 5,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 57.416667938232422, 299.0, 407.5, 299.0 ],
					"order" : 4,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 820.500002980232239, 34.99999988079071, 820.500002980232239, 34.99999988079071 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 34.000000238418579, 42.0, 98.000000238418579, 42.0, 98.000000238418579, 6.0, 112.000000238418579, 6.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 608.875000238418579, 222.0, 818.000000238418579, 222.0, 818.000000238418579, 198.0, 842.000000238418579, 198.0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 531.375000238418579, 213.0, 455.000000238418579, 213.0, 455.000000238418579, 189.0, 157.000000238418579, 189.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 70.750000238418579, 309.0, 70.750000238418579, 309.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 0 ],
					"source" : [ "obj-427", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 0 ],
					"source" : [ "obj-428", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-427", 0 ],
					"source" : [ "obj-429", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-428", 0 ],
					"midpoints" : [ 114.000000238418579, 460.0, 83.000000238418579, 460.0 ],
					"source" : [ "obj-429", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-429", 0 ],
					"source" : [ "obj-432", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-435", 0 ],
					"source" : [ "obj-433", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-761", 0 ],
					"midpoints" : [ 138.979166030883789, 427.0, 150.000000238418579, 427.0 ],
					"source" : [ "obj-434", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 29.500000238418579, 558.0, 565.500000238418579, 558.0 ],
					"source" : [ "obj-435", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 70.750000238418579, 279.0, 69.250000238418579, 279.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"midpoints" : [ 151.750000238418579, 276.0, 136.000000238418579, 276.0 ],
					"source" : [ "obj-45", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 227.500000238418579, 558.0, 565.500000238418579, 558.0 ],
					"source" : [ "obj-459", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-459", 0 ],
					"source" : [ "obj-461", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 0 ],
					"midpoints" : [ 227.500000238418579, 427.0, 227.500000238418579, 427.0 ],
					"source" : [ "obj-462", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-464", 0 ],
					"midpoints" : [ 312.000000238418579, 460.0, 281.000000238418579, 460.0 ],
					"source" : [ "obj-463", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-465", 0 ],
					"midpoints" : [ 227.500000238418579, 460.0, 227.500000238418579, 460.0 ],
					"source" : [ "obj-463", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-461", 0 ],
					"source" : [ "obj-464", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-461", 0 ],
					"source" : [ "obj-465", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 407.500000238418579, 558.0, 565.500000238418579, 558.0 ],
					"source" : [ "obj-466", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-466", 0 ],
					"source" : [ "obj-468", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-470", 0 ],
					"midpoints" : [ 407.500000238418579, 430.0, 422.250000238418579, 430.0 ],
					"source" : [ "obj-469", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-471", 0 ],
					"midpoints" : [ 483.750000238418579, 460.0, 461.000000238418579, 460.0 ],
					"source" : [ "obj-470", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-472", 0 ],
					"midpoints" : [ 422.250000238418579, 460.0, 407.500000238418579, 460.0 ],
					"source" : [ "obj-470", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-468", 0 ],
					"source" : [ "obj-471", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-468", 0 ],
					"source" : [ "obj-472", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 577.500000238418579, 549.0, 565.500000238418579, 549.0 ],
					"source" : [ "obj-474", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-474", 0 ],
					"source" : [ "obj-476", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-478", 0 ],
					"source" : [ "obj-477", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-479", 0 ],
					"source" : [ "obj-478", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-481", 0 ],
					"source" : [ "obj-478", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-476", 0 ],
					"source" : [ "obj-479", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-476", 0 ],
					"source" : [ "obj-481", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-762", 0 ],
					"midpoints" : [ 337.25, 430.0, 339.000000238418579, 430.0 ],
					"source" : [ "obj-488", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-763", 0 ],
					"midpoints" : [ 520.5, 427.0, 512.500000238418579, 427.0 ],
					"source" : [ "obj-489", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-764", 0 ],
					"midpoints" : [ 686.25, 427.0, 700.500000238418579, 427.0 ],
					"source" : [ "obj-490", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-530", 0 ],
					"source" : [ "obj-494", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 904.500000238418579, 267.0, 807.333333671092987, 267.0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 967.000000238418579, 267.0, 955.916667103767395, 267.0 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 1029.500000238418579, 270.0, 1107.833333671092987, 270.0 ],
					"source" : [ "obj-5", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-505", 0 ],
					"source" : [ "obj-503", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 765.500000238418579, 558.0, 565.500000238418579, 558.0 ],
					"source" : [ "obj-504", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-504", 0 ],
					"source" : [ "obj-505", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-507", 0 ],
					"source" : [ "obj-506", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-503", 0 ],
					"source" : [ "obj-507", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-508", 0 ],
					"source" : [ "obj-507", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-505", 0 ],
					"source" : [ "obj-508", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-516", 0 ],
					"source" : [ "obj-514", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 912.500000238418579, 558.0, 565.500000238418579, 558.0 ],
					"source" : [ "obj-515", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-515", 0 ],
					"source" : [ "obj-516", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-518", 0 ],
					"source" : [ "obj-517", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-514", 0 ],
					"source" : [ "obj-518", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-519", 0 ],
					"source" : [ "obj-518", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-516", 0 ],
					"source" : [ "obj-519", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 92.500000238418579, 309.0, 70.750000238418579, 309.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 1062.500000238418579, 558.0, 565.500000238418579, 558.0 ],
					"source" : [ "obj-521", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-521", 0 ],
					"source" : [ "obj-522", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-524", 0 ],
					"source" : [ "obj-523", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-525", 0 ],
					"source" : [ "obj-524", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-526", 0 ],
					"source" : [ "obj-524", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-522", 0 ],
					"source" : [ "obj-525", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-522", 0 ],
					"source" : [ "obj-526", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 136.000000238418579, 306.0, 113.000000238418579, 306.0, 113.000000238418579, 279.0, 92.500000238418579, 279.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 150.250000238418579, 306.0, 130.125000238418579, 306.0 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-548", 0 ],
					"midpoints" : [ 945.291748046875, 839.000036835670471, 985.041748046875, 839.000036835670471 ],
					"source" : [ "obj-551", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"midpoints" : [ 35.375000238418579, 1021.500042617321014, 35.375, 1021.500042617321014 ],
					"source" : [ "obj-558", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 157.000000238418579, 240.0, 70.750000238418579, 240.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 226.750000238418579, 240.0, 247.500000238418579, 240.0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 296.500000238418579, 237.0, 427.500000238418579, 237.0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 366.250000238418579, 237.0, 606.500000238418579, 237.0 ],
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 744.66668701171875, 138.0, 686.000000238418579, 138.0, 686.000000238418579, 177.0, 737.000000238418579, 177.0, 737.000000238418579, 555.0, 720.1666659116745, 555.0 ],
					"order" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-767", 1 ],
					"midpoints" : [ 744.66668701171875, 138.0, 686.000000238418579, 138.0, 686.000000238418579, 177.0, 737.000000238418579, 177.0, 737.000000238418579, 558.0, 692.000000238418579, 558.0, 692.000000238418579, 696.0, 650.000000238418579, 696.0, 650.000000238418579, 687.0, 641.125000238418579, 687.0 ],
					"order" : 1,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 720.1666659116745, 621.0, 542.000000238418579, 621.0, 542.000000238418579, 558.0, 565.500000238418579, 558.0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-432", 0 ],
					"midpoints" : [ 70.750000238418579, 336.0, 11.000000238418579, 336.0, 11.000000238418579, 396.0, 29.500000238418579, 396.0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-434", 0 ],
					"midpoints" : [ 130.125000238418579, 354.666667103767395, 123.5, 354.666667103767395 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-558", 0 ],
					"midpoints" : [ 64.375000238418579, 816.33333420753479, 11.375000238418579, 816.33333420753479, 11.375000238418579, 918.33333420753479, 35.375000238418579, 918.33333420753479 ],
					"source" : [ "obj-665", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-587", 0 ],
					"midpoints" : [ 35.375000238418579, 816.33333420753479, 11.375000238418579, 816.33333420753479, 11.375000238418579, 855.33333420753479, 35.375000238418579, 855.33333420753479 ],
					"source" : [ "obj-665", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-701", 0 ],
					"midpoints" : [ 93.375000238418579, 816.33333420753479, 11.375000238418579, 816.33333420753479, 11.375000238418579, 981.33333420753479, 35.375000238418579, 981.33333420753479 ],
					"source" : [ "obj-665", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-703", 0 ],
					"midpoints" : [ 122.375000238418579, 816.33333420753479, 143.375000238418579, 816.33333420753479, 143.375000238418579, 1044.33333420753479, 35.375000238418579, 1044.33333420753479 ],
					"source" : [ "obj-665", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-488", 0 ],
					"midpoints" : [ 306.875000238418579, 336.0, 224.000000238418579, 336.0, 224.000000238418579, 330.0, 164.000000238418579, 330.0, 164.000000238418579, 336.0, 47.000000238418579, 336.0, 47.000000238418579, 330.0, 11.000000238418579, 330.0, 11.000000238418579, 372.0, 200.000000238418579, 372.0, 200.000000238418579, 396.0, 322.75, 396.0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-462", 0 ],
					"midpoints" : [ 247.500000238418579, 367.666667103767395, 227.500000238418579, 367.666667103767395 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 327.000000238418579, 306.0, 306.875000238418579, 306.0 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 312.750000238418579, 306.0, 289.750000238418579, 306.0, 289.750000238418579, 279.0, 269.250000238418579, 279.0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-462", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 269.250000238418579, 309.0, 247.500000238418579, 309.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 737.125, 37.99999988079071, 808.000002980232239, 37.99999988079071, 808.000002980232239, 7.99999988079071, 820.500002980232239, 7.99999988079071 ],
					"source" : [ "obj-700", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 1 ],
					"midpoints" : [ 35.375000238418579, 1053.500042617321014, 59.875, 1053.500042617321014 ],
					"source" : [ "obj-701", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 2 ],
					"midpoints" : [ 35.375000238418579, 1084.000042617321014, 84.375, 1084.000042617321014 ],
					"source" : [ "obj-703", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 2 ],
					"source" : [ "obj-705", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 1 ],
					"source" : [ "obj-707", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-705", 0 ],
					"midpoints" : [ 331.875000238418579, 816.33333420753479, 221.375000238418579, 816.33333420753479, 221.375000238418579, 1044.33333420753479, 244.875000238418579, 1044.33333420753479 ],
					"source" : [ "obj-709", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-707", 0 ],
					"midpoints" : [ 302.875000238418579, 816.33333420753479, 221.375000238418579, 816.33333420753479, 221.375000238418579, 981.33333420753479, 244.875000238418579, 981.33333420753479 ],
					"source" : [ "obj-709", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"midpoints" : [ 244.875000238418579, 816.33333420753479, 221.375000238418579, 816.33333420753479, 221.375000238418579, 855.33333420753479, 244.875000238418579, 855.33333420753479 ],
					"source" : [ "obj-709", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-712", 0 ],
					"midpoints" : [ 273.875000238418579, 816.33333420753479, 221.375000238418579, 816.33333420753479, 221.375000238418579, 918.33333420753479, 244.875000238418579, 918.33333420753479 ],
					"source" : [ "obj-709", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 328.500000238418579, 276.0, 312.750000238418579, 276.0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"midpoints" : [ 247.500000238418579, 279.0, 246.000000238418579, 279.0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"source" : [ "obj-712", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 2 ],
					"midpoints" : [ 424.875000238418579, 1216.166729629039764, 456.874989827473939, 1216.166729629039764 ],
					"source" : [ "obj-714", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 1 ],
					"midpoints" : [ 424.875000238418579, 1185.666729629039764, 436.208323160807311, 1185.666729629039764 ],
					"source" : [ "obj-716", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-714", 0 ],
					"midpoints" : [ 462.160714524132857, 831.33333420753479, 401.375000238418579, 831.33333420753479, 401.375000238418579, 1044.33333420753479, 424.875000238418579, 1044.33333420753479 ],
					"source" : [ "obj-718", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-716", 0 ],
					"midpoints" : [ 449.732143095561469, 831.33333420753479, 401.375000238418579, 831.33333420753479, 401.375000238418579, 981.33333420753479, 424.875000238418579, 981.33333420753479 ],
					"source" : [ "obj-718", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-719", 0 ],
					"midpoints" : [ 424.875000238418579, 831.33333420753479, 410.375000238418579, 831.33333420753479, 410.375000238418579, 855.33333420753479, 424.875000238418579, 855.33333420753479 ],
					"source" : [ "obj-718", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-721", 0 ],
					"midpoints" : [ 437.303571666990024, 831.33333420753479, 401.375000238418579, 831.33333420753479, 401.375000238418579, 918.33333420753479, 424.875000238418579, 918.33333420753479 ],
					"source" : [ "obj-718", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-723", 0 ],
					"midpoints" : [ 474.589285952704302, 831.33333420753479, 401.375000238418579, 831.33333420753479, 401.375000238418579, 1110.33333420753479, 424.875000238418579, 1110.33333420753479 ],
					"source" : [ "obj-718", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-725", 0 ],
					"midpoints" : [ 487.017857381275689, 831.33333420753479, 401.375000238418579, 831.33333420753479, 401.375000238418579, 1182.33333420753479, 424.875000238418579, 1182.33333420753479 ],
					"source" : [ "obj-718", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-727", 0 ],
					"midpoints" : [ 499.446428809847134, 831.33333420753479, 401.375000238418579, 831.33333420753479, 401.375000238418579, 1245.33333420753479, 424.875000238418579, 1245.33333420753479 ],
					"source" : [ "obj-718", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-729", 0 ],
					"midpoints" : [ 511.875000238418579, 831.33333420753479, 533.375000238418579, 831.33333420753479, 533.375000238418579, 1146.33333420753479, 401.375000238418579, 1146.33333420753479, 401.375000238418579, 1314.33333420753479, 424.875000238418579, 1314.33333420753479 ],
					"source" : [ "obj-718", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 247.500000238418579, 309.0, 247.500000238418579, 309.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 424.875000238418579, 1153.666729629039764, 415.541656494140625, 1153.666729629039764 ],
					"source" : [ "obj-721", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 3 ],
					"midpoints" : [ 424.875000238418579, 1249.666730403900146, 477.541656494140625, 1249.666730403900146 ],
					"source" : [ "obj-723", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-489", 0 ],
					"midpoints" : [ 486.875000238418579, 333.0, 530.000000238418579, 333.0, 530.000000238418579, 327.0, 584.000000238418579, 327.0, 584.000000238418579, 333.0, 710.000000238418579, 333.0, 710.000000238418579, 327.0, 737.000000238418579, 327.0, 737.000000238418579, 399.0, 506.0, 399.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 3 ],
					"midpoints" : [ 597.125000238418579, 1249.666730403900146, 646.625, 1249.666730403900146 ],
					"source" : [ "obj-738", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-469", 0 ],
					"midpoints" : [ 427.500000238418579, 333.0, 404.000000238418579, 333.0, 404.000000238418579, 237.0, 737.000000238418579, 237.0, 737.000000238418579, 399.0, 407.500000238418579, 399.0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 2 ],
					"midpoints" : [ 597.125000238418579, 1216.166729629039764, 625.958333333333371, 1216.166729629039764 ],
					"source" : [ "obj-740", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 1 ],
					"midpoints" : [ 597.125000238418579, 1185.666729629039764, 605.291666666666629, 1185.666729629039764 ],
					"source" : [ "obj-742", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-732", 0 ],
					"midpoints" : [ 684.125000238418579, 831.33333420753479, 704.375000238418579, 831.33333420753479, 704.375000238418579, 1146.33333420753479, 572.375000238418579, 1146.33333420753479, 572.375000238418579, 1314.33333420753479, 597.125000238418579, 1314.33333420753479 ],
					"source" : [ "obj-744", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-734", 0 ],
					"midpoints" : [ 671.696428809847134, 831.33333420753479, 572.375000238418579, 831.33333420753479, 572.375000238418579, 1245.33333420753479, 597.125000238418579, 1245.33333420753479 ],
					"source" : [ "obj-744", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-736", 0 ],
					"midpoints" : [ 659.267857381275689, 831.33333420753479, 572.375000238418579, 831.33333420753479, 572.375000238418579, 1182.33333420753479, 597.125000238418579, 1182.33333420753479 ],
					"source" : [ "obj-744", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-738", 0 ],
					"midpoints" : [ 646.839285952704245, 831.33333420753479, 572.375000238418579, 831.33333420753479, 572.375000238418579, 1110.33333420753479, 597.125000238418579, 1110.33333420753479 ],
					"source" : [ "obj-744", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-740", 0 ],
					"midpoints" : [ 634.410714524132914, 831.33333420753479, 572.375000238418579, 831.33333420753479, 572.375000238418579, 1044.33333420753479, 597.125000238418579, 1044.33333420753479 ],
					"source" : [ "obj-744", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-742", 0 ],
					"midpoints" : [ 621.982143095561469, 831.33333420753479, 572.375000238418579, 831.33333420753479, 572.375000238418579, 981.33333420753479, 597.125000238418579, 981.33333420753479 ],
					"source" : [ "obj-744", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-745", 0 ],
					"midpoints" : [ 597.125000238418579, 831.33333420753479, 584.375000238418579, 831.33333420753479, 584.375000238418579, 855.33333420753479, 597.125000238418579, 855.33333420753479 ],
					"source" : [ "obj-744", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-747", 0 ],
					"midpoints" : [ 609.553571666990024, 831.33333420753479, 572.375000238418579, 831.33333420753479, 572.375000238418579, 918.33333420753479, 597.125000238418579, 918.33333420753479 ],
					"source" : [ "obj-744", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"midpoints" : [ 597.125000238418579, 1153.666729629039764, 584.625, 1153.666729629039764 ],
					"source" : [ "obj-747", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 507.000000238418579, 302.0, 486.875000238418579, 302.0 ],
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"midpoints" : [ 492.750000238418579, 302.0, 469.750000238418579, 302.0, 469.750000238418579, 275.0, 449.250000238418579, 275.0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-755", 0 ],
					"midpoints" : [ 1092.291748046875, 839.000036835670471, 1132.041748046875, 839.000036835670471 ],
					"source" : [ "obj-754", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-758", 0 ],
					"midpoints" : [ 1245.291748046875, 836.000036835670471, 1285.041748046875, 836.000036835670471 ],
					"source" : [ "obj-757", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 449.250000238418579, 305.0, 427.500000238418579, 305.0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 191.000000238418579, 33.0, 112.000000238418579, 33.0 ],
					"source" : [ "obj-760", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 1 ],
					"midpoints" : [ 166.000000238418579, 481.0, 174.500000238418579, 481.0 ],
					"source" : [ "obj-761", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 0 ],
					"midpoints" : [ 150.000000238418579, 481.0, 125.000000238418579, 481.0, 125.000000238418579, 487.0, 29.500000238418579, 487.0 ],
					"source" : [ "obj-761", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-461", 1 ],
					"midpoints" : [ 355.000000238418579, 481.0, 348.500000238418579, 481.0 ],
					"source" : [ "obj-762", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-461", 0 ],
					"midpoints" : [ 339.000000238418579, 481.0, 323.000000238418579, 481.0, 323.000000238418579, 487.0, 227.500000238418579, 487.0 ],
					"source" : [ "obj-762", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-468", 1 ],
					"midpoints" : [ 528.500000238418579, 460.0, 528.500000238418579, 460.0 ],
					"source" : [ "obj-763", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-468", 0 ],
					"midpoints" : [ 512.500000238418579, 490.0, 407.500000238418579, 490.0 ],
					"source" : [ "obj-763", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-476", 1 ],
					"midpoints" : [ 716.500000238418579, 460.0, 716.500000238418579, 460.0 ],
					"source" : [ "obj-764", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-476", 0 ],
					"midpoints" : [ 700.500000238418579, 481.0, 674.000000238418579, 481.0, 674.000000238418579, 490.0, 577.500000238418579, 490.0 ],
					"source" : [ "obj-764", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-767", 0 ],
					"source" : [ "obj-766", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-769", 0 ],
					"source" : [ "obj-767", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-772", 0 ],
					"midpoints" : [ 560.125000238418579, 744.33333420753479, 347.375000238418579, 744.33333420753479, 347.375000238418579, 750.33333420753479, 345.875000238418579, 750.33333420753479 ],
					"source" : [ "obj-769", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-776", 0 ],
					"midpoints" : [ 636.125000238418579, 750.33333420753479, 659.875000238418579, 750.33333420753479 ],
					"source" : [ "obj-769", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 508.500000238418579, 272.0, 492.750000238418579, 272.0 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"midpoints" : [ 427.500000238418579, 275.0, 426.000000238418579, 275.0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-665", 0 ],
					"midpoints" : [ 345.875000238418579, 780.33333420753479, 35.375000238418579, 780.33333420753479 ],
					"source" : [ "obj-772", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-709", 0 ],
					"midpoints" : [ 415.875000238418579, 780.33333420753479, 401.375000238418579, 780.33333420753479, 401.375000238418579, 789.33333420753479, 244.875000238418579, 789.33333420753479 ],
					"source" : [ "obj-772", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-718", 0 ],
					"midpoints" : [ 485.875000238418579, 780.33333420753479, 424.875000238418579, 780.33333420753479 ],
					"source" : [ "obj-772", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-744", 0 ],
					"midpoints" : [ 555.875000238418579, 789.33333420753479, 597.125000238418579, 789.33333420753479 ],
					"source" : [ "obj-772", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-551", 0 ],
					"midpoints" : [ 722.375000238418579, 795.166687607765198, 945.291748046875, 795.166687607765198 ],
					"source" : [ "obj-776", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-754", 0 ],
					"midpoints" : [ 784.875000238418579, 800.50002110004425, 1092.291748046875, 800.50002110004425 ],
					"source" : [ "obj-776", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-757", 0 ],
					"midpoints" : [ 847.375000238418579, 788.833354115486145, 1245.291748046875, 788.833354115486145 ],
					"source" : [ "obj-776", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 427.500000238418579, 305.0, 427.500000238418579, 305.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-490", 0 ],
					"midpoints" : [ 665.875000238418579, 333.0, 710.000000238418579, 333.0, 710.000000238418579, 327.0, 737.000000238418579, 327.0, 737.000000238418579, 399.0, 671.75, 399.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-695", 1 ],
					"midpoints" : [ 112.000000238418579, 69.0, 422.000000238418579, 69.0, 422.000000238418579, 9.0, 640.0, 9.0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-765", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-477", 0 ],
					"midpoints" : [ 606.500000238418579, 333.0, 710.000000238418579, 333.0, 710.000000238418579, 327.0, 737.000000238418579, 327.0, 737.000000238418579, 399.0, 577.500000238418579, 399.0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 686.000000238418579, 302.0, 665.875000238418579, 302.0 ],
					"source" : [ "obj-81", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 671.750000238418579, 302.0, 648.750000238418579, 302.0, 648.750000238418579, 275.0, 628.250000238418579, 275.0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 628.250000238418579, 305.0, 606.500000238418579, 305.0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"midpoints" : [ 687.500000238418579, 272.0, 671.750000238418579, 272.0 ],
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"midpoints" : [ 606.500000238418579, 275.0, 605.000000238418579, 275.0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 606.500000238418579, 305.0, 606.500000238418579, 305.0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-506", 0 ],
					"midpoints" : [ 807.333333671092987, 330.0, 743.000000238418579, 330.0, 743.000000238418579, 405.0, 803.000000238418579, 405.0, 803.000000238418579, 396.0, 817.250000238418579, 396.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-469", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-517", 0 ],
					"midpoints" : [ 955.916667103767395, 330.0, 743.000000238418579, 330.0, 743.000000238418579, 420.0, 803.000000238418579, 420.0, 803.000000238418579, 426.0, 842.000000238418579, 426.0, 842.000000238418579, 417.0, 941.000000238418579, 417.0, 941.000000238418579, 396.0, 964.250000238418579, 396.0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-523", 0 ],
					"midpoints" : [ 1107.833333671092987, 330.0, 1199.000000238418579, 330.0, 1199.000000238418579, 405.0, 1130.000000238418579, 405.0, 1130.000000238418579, 396.0, 1114.250000238418579, 396.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-488" : [ "umenu[10]", "umenu", 0 ],
			"obj-434" : [ "umenu[6]", "umenu", 0 ],
			"obj-489" : [ "umenu[11]", "umenu", 0 ],
			"obj-490" : [ "umenu[7]", "umenu", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
