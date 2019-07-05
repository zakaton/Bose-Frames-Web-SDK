{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 1240.0, 713.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"id" : "obj-776",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 642.375, 571.33333420753479, 269.0, 22.0 ],
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
					"patching_rect" : [ 328.375, 571.33333420753479, 299.0, 22.0 ],
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
					"patching_rect" : [ 542.625, 537.333339691162109, 171.0, 22.0 ],
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
					"patching_rect" : [ 542.625, 508.33333420753479, 100.0, 22.0 ],
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
					"patching_rect" : [ 542.625, 479.33333420753479, 130.0, 22.0 ],
					"text" : "receive bose-ar-output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-765",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 428.5, 60.5, 116.0, 22.0 ],
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
					"patching_rect" : [ 683.0, 251.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 495.0, 251.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 321.5, 251.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 132.5, 251.0, 35.0, 22.0 ],
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
					"patching_rect" : [ 173.5, 10.5, 123.0, 22.0 ],
					"text" : "receive bose-ar-input"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-757",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1059.875, 675.333337187767029, 105.0, 22.0 ]
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
					"patching_rect" : [ 1099.625, 716.333337187767029, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-759",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 1060.875, 649.333337187767029, 103.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-754",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 906.875, 677.333337187767029, 105.0, 22.0 ]
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
					"patching_rect" : [ 946.625, 718.333337187767029, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-756",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 907.875, 651.333337187767029, 103.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-732",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.625, 1134.000010132789612, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-733",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 579.625, 1110.000010132789612, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "roll",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-734",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.625, 1067.000008583068848, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-735",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 579.625, 1043.000008583068848, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "pitch",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-736",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.625, 1001.333340406417847, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-737",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 579.625, 977.333340406417847, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "yaw",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-738",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.625, 930.333338737487793, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-739",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 579.625, 906.333338737487793, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "w",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-740",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.625, 863.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-741",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 579.625, 839.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "z",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-742",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.625, 802.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-743",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 579.625, 778.333337187767029, 106.0, 20.0 ],
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
					"patching_rect" : [ 579.625, 609.333337187767029, 106.0, 36.0 ],
					"presentation_linecount" : 2,
					"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-745",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.625, 675.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-746",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 579.625, 651.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-747",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 579.625, 738.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-748",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 579.625, 714.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "x",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-729",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.375, 1134.000010132789612, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-730",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 407.375, 1110.000010132789612, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "roll",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-727",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.375, 1067.000008583068848, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-728",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 407.375, 1043.000008583068848, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "pitch",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-725",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.375, 1001.333340406417847, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-726",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 407.375, 977.333340406417847, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "yaw",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-723",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.375, 930.333338737487793, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-724",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 407.375, 906.333338737487793, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "w",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-714",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.375, 863.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-715",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 407.375, 839.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "z",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-716",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.375, 802.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-717",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 407.375, 778.333337187767029, 106.0, 20.0 ],
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
					"patching_rect" : [ 407.375, 609.333337187767029, 106.0, 36.0 ],
					"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-719",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.375, 675.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-720",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 407.375, 651.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-721",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 407.375, 738.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-722",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 407.375, 714.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "x",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-705",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 227.375, 863.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-706",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 227.375, 839.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "z",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-707",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 227.375, 802.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-708",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 227.375, 778.333337187767029, 106.0, 20.0 ],
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
					"patching_rect" : [ 227.375, 609.333337187767029, 106.0, 22.0 ],
					"text" : "unpack 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-710",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 227.375, 675.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-711",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 227.375, 651.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "timestamp (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-712",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 227.375, 738.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-713",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 227.375, 714.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "x",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-703",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 17.875, 863.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-704",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 17.875, 839.333337187767029, 106.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "z",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-701",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 17.875, 802.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-702",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 17.875, 778.333337187767029, 106.0, 20.0 ],
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
					"patching_rect" : [ 711.0, 46.5, 129.0, 36.0 ],
					"presentation_linecount" : 2,
					"text" : ";\r\nmax launchbrowser $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 711.0, 15.5, 116.0, 22.0 ],
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
					"patching_rect" : [ 677.625, 15.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-695",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 428.5, 23.5, 213.0, 22.0 ],
					"text" : "sensorInput 0 accelerometer \"0\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 16.5, 10.5, 67.0, 22.0 ],
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
					"patching_rect" : [ 94.5, 10.5, 71.0, 22.0 ],
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
					"patching_rect" : [ 94.5, 37.5, 111.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
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
					"patching_rect" : [ 17.875, 609.333337187767029, 106.0, 22.0 ],
					"text" : "unpack 0. 0. 0. 0."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-587",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 17.875, 675.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-588",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 17.875, 651.333337187767029, 106.0, 20.0 ],
					"presentation_linecount" : 10,
					"suppressinlet" : 1,
					"text" : "timestamp (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-558",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 17.875, 738.333337187767029, 106.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-551",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 759.875, 677.333337187767029, 105.0, 22.0 ]
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
					"patching_rect" : [ 799.625, 718.333337187767029, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-543",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 760.875, 651.333337187767029, 103.0, 20.0 ],
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
					"patching_rect" : [ 17.875, 714.333337187767029, 106.0, 20.0 ],
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
					"patching_rect" : [ 548.0, 405.0, 119.25, 22.0 ],
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
					"patching_rect" : [ 1045.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 1045.0, 340.0, 134.0, 22.0 ],
					"presentation_linecount" : 2,
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
					"patching_rect" : [ 1045.0, 312.0, 134.0, 22.0 ],
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
					"patching_rect" : [ 1096.75, 217.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-524",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1045.0, 251.0, 134.0, 22.0 ],
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
					"patching_rect" : [ 1129.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 895.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 895.0, 340.0, 128.0, 22.0 ],
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
					"patching_rect" : [ 895.0, 312.0, 128.0, 22.0 ],
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
					"patching_rect" : [ 946.75, 217.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-518",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 895.0, 251.0, 127.5, 22.0 ],
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
					"patching_rect" : [ 973.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 748.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 748.0, 340.0, 128.0, 22.0 ],
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
					"patching_rect" : [ 748.0, 312.0, 128.0, 22.0 ],
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
					"patching_rect" : [ 799.75, 217.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-507",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 748.0, 251.0, 127.5, 22.0 ],
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
					"patching_rect" : [ 826.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 548.0, 379.0, 119.25, 22.0 ],
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
					"patching_rect" : [ 660.0, 219.0, 58.0, 20.0 ],
					"text" : "rate (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-492",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 472.0, 219.0, 58.0, 20.0 ],
					"text" : "rate (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-491",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 298.5, 217.0, 58.0, 20.0 ],
					"text" : "rate (ms)",
					"textjustification" : 1
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
					"patching_rect" : [ 608.25, 219.0, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "umenu[7]",
							"parameter_mmax" : 4,
							"parameter_shortname" : "umenu",
							"parameter_enum" : [ "20", "40", "80", "160", "320" ],
							"parameter_type" : 2
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
					"patching_rect" : [ 421.0, 219.0, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "umenu[11]",
							"parameter_mmax" : 4,
							"parameter_shortname" : "umenu",
							"parameter_enum" : [ "20", "40", "80", "160", "320" ],
							"parameter_type" : 2
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
					"patching_rect" : [ 246.5, 217.0, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "umenu[10]",
							"parameter_mmax" : 4,
							"parameter_shortname" : "umenu",
							"parameter_enum" : [ "20", "40", "80", "160", "320" ],
							"parameter_type" : 2
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
					"patching_rect" : [ 118.5, 219.0, 58.0, 20.0 ],
					"text" : "rate (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-481",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 560.0, 340.0, 158.0, 22.0 ],
					"presentation_linecount" : 2,
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
					"patching_rect" : [ 560.0, 312.0, 158.0, 22.0 ],
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
					"patching_rect" : [ 560.0, 219.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-478",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 560.0, 251.0, 103.5, 22.0 ],
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
					"patching_rect" : [ 614.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 390.0, 340.0, 140.0, 22.0 ],
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
					"patching_rect" : [ 390.0, 312.0, 140.0, 22.0 ],
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
					"patching_rect" : [ 390.0, 219.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-470",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 404.75, 251.0, 80.5, 22.0 ],
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
					"patching_rect" : [ 443.5, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 390.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 210.0, 340.0, 140.0, 22.0 ],
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
					"patching_rect" : [ 210.0, 312.0, 140.0, 22.0 ],
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
					"patching_rect" : [ 210.0, 217.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-463",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 210.0, 251.0, 103.5, 22.0 ],
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
					"patching_rect" : [ 263.5, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 210.0, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 12.0, 340.0, 164.0, 22.0 ],
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
					"patching_rect" : [ 66.0, 219.0, 48.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "umenu[6]",
							"parameter_mmax" : 4,
							"parameter_shortname" : "umenu",
							"parameter_enum" : [ "20", "40", "80", "160", "320" ],
							"parameter_type" : 2
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
					"patching_rect" : [ 12.0, 312.0, 164.0, 22.0 ],
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
					"patching_rect" : [ 12.0, 217.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-429",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 12.0, 251.0, 103.5, 22.0 ],
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
					"patching_rect" : [ 65.5, 280.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 12.0, 280.0, 50.0, 22.0 ],
					"text" : "enable"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"id" : "obj-520",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 1045.0, 179.0, 134.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "Head Shake",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"id" : "obj-509",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 748.0, 148.0, 431.0, 20.0 ],
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
					"id" : "obj-513",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 895.0, 179.0, 127.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "Head Nod",
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
					"patching_rect" : [ 16.5, 116.0, 1162.5, 20.0 ],
					"suppressinlet" : 1,
					"text" : "BoseAR Device #0",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"id" : "obj-512",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 748.0, 179.0, 127.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "Double Tap",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"id" : "obj-480",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 179.0, 158.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "Game Rotation",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"id" : "obj-511",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 16.5, 148.0, 701.5, 20.0 ],
					"suppressinlet" : 1,
					"text" : "Sensors",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"id" : "obj-473",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 390.0, 179.0, 140.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "Rotation",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"id" : "obj-438",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 179.0, 140.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "Gyroscope",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.51 ],
					"bubblepoint" : 0.0,
					"bubbleside" : 0,
					"bubbletextmargin" : 4,
					"id" : "obj-437",
					"maxclass" : "comment",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 16.5, 180.0, 164.0, 20.0 ],
					"suppressinlet" : 1,
					"text" : "Accelerometer",
					"textjustification" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 104.0, 33.0, 104.0, 33.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 720.5, 39.0, 720.5, 39.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 26.0, 42.0, 90.0, 42.0, 90.0, 6.0, 104.0, 6.0 ],
					"source" : [ "obj-26", 0 ]
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
					"midpoints" : [ 106.0, 276.0, 75.0, 276.0 ],
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
					"midpoints" : [ 90.0, 243.0, 142.0, 243.0 ],
					"source" : [ "obj-434", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 21.5, 374.0, 557.5, 374.0 ],
					"source" : [ "obj-435", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 219.5, 374.0, 557.5, 374.0 ],
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
					"midpoints" : [ 219.5, 243.0, 219.5, 243.0 ],
					"source" : [ "obj-462", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-464", 0 ],
					"midpoints" : [ 304.0, 276.0, 273.0, 276.0 ],
					"source" : [ "obj-463", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-465", 0 ],
					"midpoints" : [ 219.5, 276.0, 219.5, 276.0 ],
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
					"midpoints" : [ 399.5, 374.0, 557.5, 374.0 ],
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
					"midpoints" : [ 399.5, 246.0, 414.25, 246.0 ],
					"source" : [ "obj-469", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-471", 0 ],
					"midpoints" : [ 475.75, 276.0, 453.0, 276.0 ],
					"source" : [ "obj-470", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-472", 0 ],
					"midpoints" : [ 414.25, 276.0, 399.5, 276.0 ],
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
					"midpoints" : [ 569.5, 365.0, 557.5, 365.0 ],
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
					"midpoints" : [ 270.5, 246.0, 331.0, 246.0 ],
					"source" : [ "obj-488", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-763", 0 ],
					"midpoints" : [ 445.0, 243.0, 504.5, 243.0 ],
					"source" : [ "obj-489", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-764", 0 ],
					"midpoints" : [ 632.25, 243.0, 692.5, 243.0 ],
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
					"destination" : [ "obj-505", 0 ],
					"source" : [ "obj-503", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 757.5, 374.0, 557.5, 374.0 ],
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
					"midpoints" : [ 904.5, 374.0, 557.5, 374.0 ],
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
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 1054.5, 374.0, 557.5, 374.0 ],
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
					"destination" : [ "obj-548", 0 ],
					"midpoints" : [ 769.375, 713.33333420753479, 809.125, 713.33333420753479 ],
					"source" : [ "obj-551", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-558", 0 ],
					"midpoints" : [ 56.375, 632.33333420753479, 3.375, 632.33333420753479, 3.375, 734.33333420753479, 27.375, 734.33333420753479 ],
					"source" : [ "obj-665", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-587", 0 ],
					"midpoints" : [ 27.375, 632.33333420753479, 3.375, 632.33333420753479, 3.375, 671.33333420753479, 27.375, 671.33333420753479 ],
					"source" : [ "obj-665", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-701", 0 ],
					"midpoints" : [ 85.375, 632.33333420753479, 3.375, 632.33333420753479, 3.375, 797.33333420753479, 27.375, 797.33333420753479 ],
					"source" : [ "obj-665", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-703", 0 ],
					"midpoints" : [ 114.375, 632.33333420753479, 135.375, 632.33333420753479, 135.375, 860.33333420753479, 27.375, 860.33333420753479 ],
					"source" : [ "obj-665", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 687.125, 42.0, 708.0, 42.0, 708.0, 12.0, 720.5, 12.0 ],
					"source" : [ "obj-700", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-705", 0 ],
					"midpoints" : [ 323.875, 632.33333420753479, 213.375, 632.33333420753479, 213.375, 860.33333420753479, 236.875, 860.33333420753479 ],
					"source" : [ "obj-709", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-707", 0 ],
					"midpoints" : [ 294.875, 632.33333420753479, 213.375, 632.33333420753479, 213.375, 797.33333420753479, 236.875, 797.33333420753479 ],
					"source" : [ "obj-709", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-710", 0 ],
					"midpoints" : [ 236.875, 632.33333420753479, 213.375, 632.33333420753479, 213.375, 671.33333420753479, 236.875, 671.33333420753479 ],
					"source" : [ "obj-709", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-712", 0 ],
					"midpoints" : [ 265.875, 632.33333420753479, 213.375, 632.33333420753479, 213.375, 734.33333420753479, 236.875, 734.33333420753479 ],
					"source" : [ "obj-709", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-714", 0 ],
					"midpoints" : [ 454.160714285714278, 647.33333420753479, 393.375, 647.33333420753479, 393.375, 860.33333420753479, 416.875, 860.33333420753479 ],
					"source" : [ "obj-718", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-716", 0 ],
					"midpoints" : [ 441.73214285714289, 647.33333420753479, 393.375, 647.33333420753479, 393.375, 797.33333420753479, 416.875, 797.33333420753479 ],
					"source" : [ "obj-718", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-719", 0 ],
					"midpoints" : [ 416.875, 647.33333420753479, 402.375, 647.33333420753479, 402.375, 671.33333420753479, 416.875, 671.33333420753479 ],
					"source" : [ "obj-718", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-721", 0 ],
					"midpoints" : [ 429.303571428571445, 647.33333420753479, 393.375, 647.33333420753479, 393.375, 734.33333420753479, 416.875, 734.33333420753479 ],
					"source" : [ "obj-718", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-723", 0 ],
					"midpoints" : [ 466.589285714285722, 647.33333420753479, 393.375, 647.33333420753479, 393.375, 926.33333420753479, 416.875, 926.33333420753479 ],
					"source" : [ "obj-718", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-725", 0 ],
					"midpoints" : [ 479.01785714285711, 647.33333420753479, 393.375, 647.33333420753479, 393.375, 998.33333420753479, 416.875, 998.33333420753479 ],
					"source" : [ "obj-718", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-727", 0 ],
					"midpoints" : [ 491.446428571428555, 647.33333420753479, 393.375, 647.33333420753479, 393.375, 1061.33333420753479, 416.875, 1061.33333420753479 ],
					"source" : [ "obj-718", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-729", 0 ],
					"midpoints" : [ 503.875, 647.33333420753479, 525.375, 647.33333420753479, 525.375, 962.33333420753479, 393.375, 962.33333420753479, 393.375, 1130.33333420753479, 416.875, 1130.33333420753479 ],
					"source" : [ "obj-718", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-732", 0 ],
					"midpoints" : [ 676.125, 647.33333420753479, 696.375, 647.33333420753479, 696.375, 962.33333420753479, 564.375, 962.33333420753479, 564.375, 1130.33333420753479, 589.125, 1130.33333420753479 ],
					"source" : [ "obj-744", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-734", 0 ],
					"midpoints" : [ 663.696428571428555, 647.33333420753479, 564.375, 647.33333420753479, 564.375, 1061.33333420753479, 589.125, 1061.33333420753479 ],
					"source" : [ "obj-744", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-736", 0 ],
					"midpoints" : [ 651.26785714285711, 647.33333420753479, 564.375, 647.33333420753479, 564.375, 998.33333420753479, 589.125, 998.33333420753479 ],
					"source" : [ "obj-744", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-738", 0 ],
					"midpoints" : [ 638.839285714285666, 647.33333420753479, 564.375, 647.33333420753479, 564.375, 926.33333420753479, 589.125, 926.33333420753479 ],
					"source" : [ "obj-744", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-740", 0 ],
					"midpoints" : [ 626.410714285714334, 647.33333420753479, 564.375, 647.33333420753479, 564.375, 860.33333420753479, 589.125, 860.33333420753479 ],
					"source" : [ "obj-744", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-742", 0 ],
					"midpoints" : [ 613.98214285714289, 647.33333420753479, 564.375, 647.33333420753479, 564.375, 797.33333420753479, 589.125, 797.33333420753479 ],
					"source" : [ "obj-744", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-745", 0 ],
					"midpoints" : [ 589.125, 647.33333420753479, 576.375, 647.33333420753479, 576.375, 671.33333420753479, 589.125, 671.33333420753479 ],
					"source" : [ "obj-744", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-747", 0 ],
					"midpoints" : [ 601.553571428571445, 647.33333420753479, 564.375, 647.33333420753479, 564.375, 734.33333420753479, 589.125, 734.33333420753479 ],
					"source" : [ "obj-744", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-755", 0 ],
					"midpoints" : [ 916.375, 713.33333420753479, 956.125, 713.33333420753479 ],
					"source" : [ "obj-754", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-758", 0 ],
					"midpoints" : [ 1069.375, 710.33333420753479, 1109.125, 710.33333420753479 ],
					"source" : [ "obj-757", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 183.0, 33.0, 104.0, 33.0 ],
					"source" : [ "obj-760", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 1 ],
					"midpoints" : [ 158.0, 297.0, 166.5, 297.0 ],
					"source" : [ "obj-761", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 0 ],
					"midpoints" : [ 142.0, 297.0, 117.0, 297.0, 117.0, 303.0, 21.5, 303.0 ],
					"source" : [ "obj-761", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-461", 1 ],
					"midpoints" : [ 347.0, 297.0, 340.5, 297.0 ],
					"source" : [ "obj-762", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-461", 0 ],
					"midpoints" : [ 331.0, 297.0, 315.0, 297.0, 315.0, 303.0, 219.5, 303.0 ],
					"source" : [ "obj-762", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-468", 1 ],
					"midpoints" : [ 520.5, 276.0, 520.5, 276.0 ],
					"source" : [ "obj-763", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-468", 0 ],
					"midpoints" : [ 504.5, 306.0, 399.5, 306.0 ],
					"source" : [ "obj-763", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-476", 1 ],
					"midpoints" : [ 708.5, 276.0, 708.5, 276.0 ],
					"source" : [ "obj-764", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-476", 0 ],
					"midpoints" : [ 692.5, 297.0, 666.0, 297.0, 666.0, 306.0, 569.5, 306.0 ],
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
					"midpoints" : [ 552.125, 560.33333420753479, 339.375, 560.33333420753479, 339.375, 566.33333420753479, 337.875, 566.33333420753479 ],
					"source" : [ "obj-769", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-776", 0 ],
					"midpoints" : [ 628.125, 566.33333420753479, 651.875, 566.33333420753479 ],
					"source" : [ "obj-769", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-665", 0 ],
					"midpoints" : [ 337.875, 596.33333420753479, 27.375, 596.33333420753479 ],
					"source" : [ "obj-772", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-709", 0 ],
					"midpoints" : [ 407.875, 596.33333420753479, 393.375, 596.33333420753479, 393.375, 605.33333420753479, 236.875, 605.33333420753479 ],
					"source" : [ "obj-772", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-718", 0 ],
					"midpoints" : [ 477.875, 596.33333420753479, 416.875, 596.33333420753479 ],
					"source" : [ "obj-772", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-744", 0 ],
					"midpoints" : [ 547.875, 605.33333420753479, 589.125, 605.33333420753479 ],
					"source" : [ "obj-772", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-551", 0 ],
					"midpoints" : [ 714.375, 671.33333420753479, 769.375, 671.33333420753479 ],
					"source" : [ "obj-776", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-754", 0 ],
					"midpoints" : [ 776.875, 638.33333420753479, 891.375, 638.33333420753479, 891.375, 671.33333420753479, 916.375, 671.33333420753479 ],
					"source" : [ "obj-776", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-757", 0 ],
					"midpoints" : [ 839.375, 638.33333420753479, 1044.375, 638.33333420753479, 1044.375, 671.33333420753479, 1069.375, 671.33333420753479 ],
					"source" : [ "obj-776", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-695", 1 ],
					"midpoints" : [ 104.0, 69.0, 414.0, 69.0, 414.0, 9.0, 632.0, 9.0 ],
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
 ],
		"parameters" : 		{
			"obj-434" : [ "umenu[6]", "umenu", 0 ],
			"obj-490" : [ "umenu[7]", "umenu", 0 ],
			"obj-488" : [ "umenu[10]", "umenu", 0 ],
			"obj-489" : [ "umenu[11]", "umenu", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "app.js",
				"bootpath" : "~/Documents/GitHub/bose-for-max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
