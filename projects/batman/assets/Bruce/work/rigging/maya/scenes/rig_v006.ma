//Maya ASCII 2016ff07 scene
//Name: rig_v006.ma
//Last modified: Thu, Jul 06, 2017 01:45:29 PM
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
	rename -uid "BD192CA3-4221-D811-9307-47AF27BCF65A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.1370968219903776 6.7492230713490526 9.5231789526125841 ;
	setAttr ".r" -type "double3" -30.938352729602737 26.20000000000012 8.8618696380005417e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "864EB344-413C-5838-7728-1487AA744DC1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.812581013283957;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6D5D1277-459A-B065-F9C4-958A05AE122C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "21392B86-40BE-6556-978C-EF9A146D4964";
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
	rename -uid "40225BDF-4F4D-4B53-7C00-3594BD3503E6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EF659854-4458-F1BE-4BAF-0989FCB196DD";
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
	rename -uid "C516018D-4FCB-84DF-F344-0D8F1326D807";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5747A380-4FE4-63F5-32DF-3D9573FC487F";
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
	rename -uid "D48AE868-4CA0-C926-6466-859E4B8A66F8";
createNode transform -n "input_GRP" -p "ROOT";
	rename -uid "8B2564C8-4A58-D8F3-1F45-8C9B578DD7D0";
	setAttr ".v" no;
createNode transform -n "Bruce_01_:modelDefault" -p "input_GRP";
	rename -uid "90886108-43EA-1CD7-BA8F-DBB2F2564517";
createNode transform -n "controls_GRP" -p "ROOT";
	rename -uid "1B2B55AE-4BAD-22CB-86C3-1582AF87F92F";
createNode transform -n "control_CTL" -p "controls_GRP";
	rename -uid "BC095A67-40E7-B33F-30CA-C3A28F439FE0";
createNode nurbsCurve -n "control_CTLShape" -p "control_CTL";
	rename -uid "99DE00F2-45DE-6CA5-44ED-40AA81565493";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "geometry_GRP" -p "ROOT";
	rename -uid "A8EBE259-4301-CB81-3298-EDA005822607";
createNode transform -n "bruce_PLY" -p "geometry_GRP";
	rename -uid "AD80EE6D-4CAE-2EF9-E066-E9A29F713A69";
	addAttr -ci true -sn "mbID" -ln "mbID" -dt "string";
	setAttr ".mbID" -type "string" "0001ed4a89b2";
createNode mesh -n "bruce_PLYShape" -p "bruce_PLY";
	rename -uid "DD7671BA-45F9-200D-8145-52B09BCA02D6";
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
	rename -uid "1A0A31F3-429D-6148-775A-6191EB5CD549";
createNode parentConstraint -n "bruce_PLY_parentConstraint1" -p "Bruce_01_RNfosterParent1";
	rename -uid "0ED4E0DF-4AC3-3823-EFE4-5890AAD91F85";
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
	rename -uid "A0A1DA91-4D5B-1727-9CCB-8AAB8413AD64";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "09A7B182-4E9D-9751-BBFF-07883500B853";
createNode displayLayer -n "defaultLayer";
	rename -uid "F0418D6C-47A3-1F33-9D82-6595F7870FEB";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "499FCA79-41B5-33C3-0D55-D98E939EEE35";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D53BE035-4BFB-5B88-FA50-35B76D6B3405";
	setAttr ".g" yes;
createNode reference -n "Bruce_01_RN";
	rename -uid "12A7B1FE-4E88-18EA-605C-82AC2EFEE731";
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
	rename -uid "16BF6995-47F4-263D-6F6D-239D1175480D";
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
	rename -uid "73F29386-4C64-C583-5B31-A78C65660EFB";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.00032808400000000003;
createNode transformGeometry -n "Bruce_01_:bruce_PLYShape1_transformGeometry";
	rename -uid "A88085FF-4C4A-A81F-AA93-AEB6409DD49C";
createNode objectSet -n "out_SET";
	rename -uid "3423543F-4B7A-A050-A4FC-28B3BAA65D10";
	setAttr ".ihi" 0;
createNode objectSet -n "controls_SET";
	rename -uid "451FBE70-444B-E154-A990-39A2B46AE613";
	setAttr ".ihi" 0;
createNode objectSet -n "rigDefault";
	rename -uid "AF958612-4427-6E6B-CE58-FB8B49AAA7DD";
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
	rename -uid "E5456D71-478B-7079-DE22-559C2A47897E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	rename -uid "94FF92D9-48EB-738A-E3FA-0C85C02DFCBD";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F52B8082-478E-0A9E-614E-D69E8DF841AB";
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
