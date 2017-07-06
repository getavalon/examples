//Maya ASCII 2016ff07 scene
//Name: rig_v006.ma
//Last modified: Thu, Jul 06, 2017 01:11:20 PM
//Codeset: 1252
file -rdi 1 -ns "Bruce_01_" -rfn "Bruce_01_RN" -typ "mayaAscii" "$AVALON_PROJECTS/batman/assets/Bruce/publish/modelDefault/v001/modelDefault.ma";
file -r -ns "Bruce_01_" -dr 1 -rfn "Bruce_01_RN" -typ "mayaAscii" "$AVALON_PROJECTS/batman/assets/Bruce/publish/modelDefault/v001/modelDefault.ma";
requires maya "2016ff07";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya batch mode";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260-1";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "125DEA1C-48C1-CE89-C822-BEAEDFB7214E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.1370968219903776 6.7492230713490526 9.5231789526125841 ;
	setAttr ".r" -type "double3" -30.938352729602737 26.20000000000012 8.8618696380005417e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "89D2279C-41E5-840B-FBD1-0CAFD51E82D7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.812581013283957;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DBEC1CED-4457-2A70-C3C8-A8A6CD6799E8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3875AA86-4435-DF6F-5E16-A0975A40BA7E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4A57E373-49C4-6743-8167-898A6905DAC4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "715FB7FD-4E97-2778-2A3A-67BE873D849D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "07554C71-4767-8F09-7AF8-64AEE8F5AC30";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "31C6BDCC-4BDF-961F-D10D-6AB38FA135EF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ROOT";
	rename -uid "A0225051-42CE-E298-75BE-35B19133A7E3";
createNode transform -n "input_GRP" -p "ROOT";
	rename -uid "71D4AE6D-4FA8-B010-AB6B-4D9529AA8499";
	setAttr ".v" no;
createNode transform -n "Bruce_01_:modelDefault" -p "input_GRP";
	rename -uid "E43232F7-40C0-050F-D10D-F7A72C70E61E";
createNode transform -n "controls_GRP" -p "ROOT";
	rename -uid "F1EEFB9B-4A5B-F5B5-936E-AEAB4B5CDC6A";
createNode transform -n "control_CTL" -p "controls_GRP";
	rename -uid "1C102F73-4CD3-10F1-6C17-7684BBEBDDC2";
createNode nurbsCurve -n "control_CTLShape" -p "control_CTL";
	rename -uid "1D188423-421A-A78F-AEB3-A6B56B9F027F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "geometry_GRP" -p "ROOT";
	rename -uid "2CDA38D6-4609-4B98-47A2-3CA83EBA79F9";
createNode transform -n "bruce_PLY" -p "geometry_GRP";
	rename -uid "6BD69672-4B06-6C90-1BDD-418748540E8F";
	addAttr -ci true -sn "mbID" -ln "mbID" -dt "string";
	setAttr ".mbID" -type "string" "0001ed4a89b2";
createNode mesh -n "bruce_PLYShape" -p "bruce_PLY";
	rename -uid "5347D2D5-43BC-3A2E-2BF4-8DA1D7136467";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vbc" no;
	setAttr ".ndt" 0;
createNode fosterParent -n "Bruce_01_RNfosterParent1";
	rename -uid "8B3F6CBB-488E-244E-8CFD-FEA394220236";
createNode parentConstraint -n "bruce_PLY_parentConstraint1" -p "Bruce_01_RNfosterParent1";
	rename -uid "0F171F96-4519-939A-4625-5888F3477E6C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2ECA7DCA-4A37-9C36-FACE-03BBC36209BF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "058F6A23-4DCC-0D2A-3692-35BF160CAA67";
createNode displayLayer -n "defaultLayer";
	rename -uid "6E79A6CA-4D82-94E2-65AE-59921133168D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5DE504FC-4975-B817-9F9E-B5B7AAC75A8E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E19EB8A0-45B4-5B24-D3C2-95A3E47E3260";
	setAttr ".g" yes;
createNode reference -n "Bruce_01_RN";
	rename -uid "5229CCFB-4A7F-5EA5-0ECA-EBB000B77CBD";
	setAttr ".fn[0]" -type "string" "$AVALON_PROJECTS/batman/assets/Bruce/publish/modelDefault/v002/modelDefault.ma";
	setAttr -s 15 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Bruce_01_RN"
		"Bruce_01_RN" 3
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT.instObjGroups" 
		"Bruce_01_RN.placeHolderList[1]" ""
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.instObjGroups" 
		"Bruce_01_RN.placeHolderList[2]" ""
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY|Bruce_01_:bruce_PLYShape.instObjGroups" 
		"Bruce_01_RN.placeHolderList[14]" ""
		"Bruce_01_RN" 13
		0 "|Bruce_01_RNfosterParent1|bruce_PLY_parentConstraint1" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY" 
		"-s -r "
		5 4 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.translateX" 
		"Bruce_01_RN.placeHolderList[15]" ""
		5 4 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.translateY" 
		"Bruce_01_RN.placeHolderList[16]" ""
		5 4 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.translateZ" 
		"Bruce_01_RN.placeHolderList[17]" ""
		5 4 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.rotateX" 
		"Bruce_01_RN.placeHolderList[18]" ""
		5 4 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.rotateY" 
		"Bruce_01_RN.placeHolderList[19]" ""
		5 4 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.rotateZ" 
		"Bruce_01_RN.placeHolderList[20]" ""
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.rotateOrder" 
		"Bruce_01_RN.placeHolderList[21]" ""
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.parentInverseMatrix" 
		"Bruce_01_RN.placeHolderList[22]" ""
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.rotatePivot" 
		"Bruce_01_RN.placeHolderList[23]" ""
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY.rotatePivotTranslate" 
		"Bruce_01_RN.placeHolderList[24]" ""
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY|Bruce_01_:bruce_PLYShape.outMesh" 
		"Bruce_01_RN.placeHolderList[25]" ""
		5 3 "Bruce_01_RN" "|ROOT|input_GRP|Bruce_01_:modelDefault|Bruce_01_:ROOT|Bruce_01_:bruce_PLY|Bruce_01_:bruce_PLYShape.worldMatrix" 
		"Bruce_01_RN.placeHolderList[26]" "";
lockNode -l 1 ;
createNode objectSet -n "Bruce_01__modelDefault__CON";
	rename -uid "D3B8A419-4C24-0C4D-019D-DDAA4A54E74C";
	addAttr -ci true -sn "id" -ln "id" -dt "string";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "namespace" -ln "namespace" -dt "string";
	addAttr -ci true -sn "loader" -ln "loader" -dt "string";
	addAttr -ci true -sn "project" -ln "project" -dt "string";
	addAttr -ci true -sn "asset" -ln "asset" -dt "string";
	addAttr -ci true -sn "subset" -ln "subset" -dt "string";
	addAttr -ci true -sn "version" -ln "version" -at "short";
	addAttr -ci true -sn "representation" -ln "representation" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".vo" yes;
	setAttr ".id" -type "string" "pyblish.avalon.container";
	setAttr ".name" -type "string" "modelDefault";
	setAttr ".namespace" -type "string" "Bruce_01_";
	setAttr ".loader" -type "string" "ModelLoader";
	setAttr ".project" -type "string" "batman";
	setAttr ".asset" -type "string" "Bruce";
	setAttr ".subset" -type "string" "modelDefault";
	setAttr ".version" 1;
	setAttr ".representation" -type "string" "594bdc9d5f8c1b1560891ac6";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "9919DE27-431B-3FCB-8A81-8BA665434643";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.00032808400000000003;
createNode transformGeometry -n "Bruce_01_:bruce_PLYShape1_transformGeometry";
	rename -uid "81B37EE8-4602-EB7B-0E93-CE981B0F82F1";
createNode objectSet -n "out_SET";
	rename -uid "85177905-4D03-6BB6-A9FE-CC95DE39CA94";
	setAttr ".ihi" 0;
createNode objectSet -n "controls_SET";
	rename -uid "460BD73B-4B72-8902-0340-54A0BA026424";
	setAttr ".ihi" 0;
createNode objectSet -n "rigDefault";
	rename -uid "D3B908CF-4E2B-3C61-D49E-EF9A27C7357A";
	addAttr -ci true -sn "subset" -ln "subset" -dt "string";
	addAttr -ci true -sn "id" -ln "id" -dt "string";
	addAttr -ci true -sn "family" -ln "family" -dt "string";
	addAttr -ci true -sn "asset" -ln "asset" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dnsm";
	setAttr ".subset" -type "string" "rigDefault";
	setAttr ".id" -type "string" "pyblish.avalon.instance";
	setAttr ".family" -type "string" "mindbender.rig";
	setAttr ".asset" -type "string" "Bruce";
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9C2191C8-421C-CDC3-D1EC-7CB8C853BF13";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	rename -uid "7EFA48F5-44B0-1EC1-B3D0-43B953C76BB6";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1468F93A-4B2E-B692-CC21-21803B877A81";
	setAttr ".b" -type "string" "// Maya Mel UI Configuration File.\n// No UI generated in batch mode.\n";
	setAttr ".st" 3;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "bruce_PLY_parentConstraint1.ctx" "Bruce_01_RN.phl[15]";
connectAttr "bruce_PLY_parentConstraint1.cty" "Bruce_01_RN.phl[16]";
connectAttr "bruce_PLY_parentConstraint1.ctz" "Bruce_01_RN.phl[17]";
connectAttr "bruce_PLY_parentConstraint1.crx" "Bruce_01_RN.phl[18]";
connectAttr "bruce_PLY_parentConstraint1.cry" "Bruce_01_RN.phl[19]";
connectAttr "bruce_PLY_parentConstraint1.crz" "Bruce_01_RN.phl[20]";
connectAttr "Bruce_01_RN.phl[21]" "bruce_PLY_parentConstraint1.cro";
connectAttr "Bruce_01_RN.phl[22]" "bruce_PLY_parentConstraint1.cpim";
connectAttr "Bruce_01_RN.phl[23]" "bruce_PLY_parentConstraint1.crp";
connectAttr "Bruce_01_RN.phl[24]" "bruce_PLY_parentConstraint1.crt";
connectAttr "Bruce_01_RN.phl[25]" "Bruce_01_:bruce_PLYShape1_transformGeometry.ig"
		;
connectAttr "Bruce_01_RN.phl[26]" "Bruce_01_:bruce_PLYShape1_transformGeometry.txf"
		;
connectAttr "makeNurbCircle1.oc" "control_CTLShape.cr";
connectAttr "Bruce_01_:bruce_PLYShape1_transformGeometry.og" "bruce_PLYShape.i";
connectAttr "control_CTL.t" "bruce_PLY_parentConstraint1.tg[0].tt";
connectAttr "control_CTL.rp" "bruce_PLY_parentConstraint1.tg[0].trp";
connectAttr "control_CTL.rpt" "bruce_PLY_parentConstraint1.tg[0].trt";
connectAttr "control_CTL.r" "bruce_PLY_parentConstraint1.tg[0].tr";
connectAttr "control_CTL.ro" "bruce_PLY_parentConstraint1.tg[0].tro";
connectAttr "control_CTL.s" "bruce_PLY_parentConstraint1.tg[0].ts";
connectAttr "control_CTL.pm" "bruce_PLY_parentConstraint1.tg[0].tpm";
connectAttr "bruce_PLY_parentConstraint1.w0" "bruce_PLY_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Bruce_01_:modelDefault.msg" "Bruce_01_RN.asn[0]";
connectAttr "Bruce_01_RNfosterParent1.msg" "Bruce_01_RN.fp";
connectAttr "sharedReferenceNode.sr" "Bruce_01_RN.sr";
connectAttr "Bruce_01_RN.phl[1]" "Bruce_01__modelDefault__CON.dsm" -na;
connectAttr "Bruce_01_RN.phl[2]" "Bruce_01__modelDefault__CON.dsm" -na;
connectAttr "Bruce_01_RN.phl[14]" "Bruce_01__modelDefault__CON.dsm" -na;
connectAttr "Bruce_01_:modelDefault.iog" "Bruce_01__modelDefault__CON.dsm" -na;
connectAttr "Bruce_01_RN.msg" "Bruce_01__modelDefault__CON.dnsm" -na;
connectAttr "bruce_PLY.iog" "out_SET.dsm" -na;
connectAttr "control_CTL.iog" "controls_SET.dsm" -na;
connectAttr "ROOT.iog" "rigDefault.dsm" -na;
connectAttr "out_SET.msg" "rigDefault.dnsm" -na;
connectAttr "controls_SET.msg" "rigDefault.dnsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bruce_PLYShape.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Bruce_01_RN\" \"\" \"$AVALON_PROJECTS/batman/assets/Bruce/publish/modelDefault/v001/modelDefault.ma\" 839676419 \"C:/Users/marcus/Dropbox/projects/avalon/avalon-examples/projects/batman/assets/Bruce/publish/modelDefault/v001/modelDefault.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of rig_v006.ma
