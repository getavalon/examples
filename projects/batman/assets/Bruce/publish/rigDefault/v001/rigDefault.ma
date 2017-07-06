//Maya ASCII 2016ff07 scene
//Name: rigDefault.ma
//Last modified: Thu, Jul 06, 2017 01:11:17 PM
//Codeset: 1252
requires maya "2016ff07";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya batch mode";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260-1";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -n "ROOT";
	rename -uid "C597BA40-46E1-F780-DCF5-989A55D35F9C";
createNode transform -n "input_GRP" -p "ROOT";
	rename -uid "782BD0CC-4BD8-A650-3703-DFA0D04040A2";
	setAttr ".v" no;
createNode transform -n "Bruce_01_:modelDefault" -p "input_GRP";
	rename -uid "705B1F11-4F19-8628-D35D-FB8B8DA4F40D";
createNode transform -n "Bruce_01_:ROOT" -p "Bruce_01_:modelDefault";
	rename -uid "812E36EB-486A-7B7D-2845-438A3132B374";
createNode transform -n "Bruce_01_:bruce_PLY" -p "Bruce_01_:ROOT";
	rename -uid "CA9E129C-4ED4-CF82-AFC3-298FD54170DF";
	addAttr -ci true -sn "mbID" -ln "mbID" -dt "string";
	setAttr ".mbID" -type "string" "0001ed4a89b2";
createNode mesh -n "Bruce_01_:bruce_PLYShape" -p "Bruce_01_:bruce_PLY";
	rename -uid "ECC77AF0-4FD5-0BBC-1945-718860A0E9C0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.375 0.125 0.625 0 0.625 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.5 0.375 0.375
		 0.375 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625
		 0.75 0.5 0.75 0.375 0.75 0.5 0.875 0.375 0.875 0.625 0.875 0.625 1 0.5 1 0.375 1
		 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25 0.125 0 0.25 0 0.25 0.125
		 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777779 0.27777779 -0.27777779 -0.27777779
		 0.375 0 0.375 0 0.375 0.375 -0.375 0.375 0 0.375 0.375 0 0 0.375 -0.375 -0.375 0 -0.375
		 0.375 0 -0.375 0 -0.375 -0.375 -0.375 -0.375 0 0.375 -0.375 0 0 -0.375 0.375 -0.375 0 0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0 -0.5 0 0.5 0 0 -0.5 0 0;
	setAttr -s 48 ".ed[0:47]"  0 18 1 18 1 1 2 9 1 9 3 1 4 12 1 12 5 1 6 15 1
		 15 7 1 0 19 1 19 2 1 1 8 1 8 3 1 2 10 1 10 4 1 3 11 1 11 5 1 4 13 1 13 6 1 5 14 1
		 14 7 1 6 16 1 16 0 1 7 17 1 17 1 1 18 20 1 20 19 1 8 20 1 9 20 1 9 21 1 21 10 1 11 21 1
		 12 21 1 12 22 1 22 13 1 14 22 1 15 22 1 15 23 1 23 16 1 17 23 1 18 23 1 17 24 1 24 8 1
		 14 24 1 11 24 1 16 25 1 25 13 1 19 25 1 10 25 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 1 2 3
		f 4 1 10 26 -25
		mu 0 4 1 4 5 2
		f 4 -27 11 -4 27
		mu 0 4 2 5 6 7
		f 4 -26 -28 -3 -10
		mu 0 4 3 2 7 8
		f 4 2 28 29 -13
		mu 0 4 8 7 9 10
		f 4 3 14 30 -29
		mu 0 4 7 6 11 9
		f 4 -31 15 -6 31
		mu 0 4 9 11 12 13
		f 4 -30 -32 -5 -14
		mu 0 4 10 9 13 14
		f 4 4 32 33 -17
		mu 0 4 14 13 15 16
		f 4 5 18 34 -33
		mu 0 4 13 12 17 15
		f 4 -35 19 -8 35
		mu 0 4 15 17 18 19
		f 4 -34 -36 -7 -18
		mu 0 4 16 15 19 20
		f 4 6 36 37 -21
		mu 0 4 20 19 21 22
		f 4 7 22 38 -37
		mu 0 4 19 18 23 21
		f 4 -39 23 -2 39
		mu 0 4 21 23 24 25
		f 4 -38 -40 -1 -22
		mu 0 4 22 21 25 26
		f 4 -24 40 41 -11
		mu 0 4 4 27 28 5
		f 4 -23 -20 42 -41
		mu 0 4 27 29 30 28
		f 4 -43 -19 -16 43
		mu 0 4 28 30 31 32
		f 4 -42 -44 -15 -12
		mu 0 4 5 28 32 6
		f 4 20 44 45 17
		mu 0 4 33 34 35 36
		f 4 21 8 46 -45
		mu 0 4 34 0 3 35
		f 4 -47 9 12 47
		mu 0 4 35 3 8 37
		f 4 -46 -48 13 16
		mu 0 4 36 35 37 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
	setAttr ".ndt" 0;
createNode parentConstraint -n "bruce_PLY_parentConstraint1" -p "Bruce_01_:bruce_PLY";
	rename -uid "2AC03E14-4D2A-A046-CDD1-A2904A1A7029";
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
createNode transform -n "controls_GRP" -p "ROOT";
	rename -uid "E8B6AE5E-4F9E-FBF4-764C-599D65E16DFF";
createNode transform -n "control_CTL" -p "controls_GRP";
	rename -uid "383E1A00-4333-6F9F-7377-5FB859DAC369";
createNode nurbsCurve -n "control_CTLShape" -p "control_CTL";
	rename -uid "D767DD86-485F-022D-C8A5-319C1909FF2D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "geometry_GRP" -p "ROOT";
	rename -uid "91BDBBB9-49F9-B302-0083-5EBDCD35D2B1";
createNode transform -n "bruce_PLY" -p "geometry_GRP";
	rename -uid "6FD83C74-4161-59AA-C842-259065EA9BC9";
	addAttr -ci true -sn "mbID" -ln "mbID" -dt "string";
	setAttr ".mbID" -type "string" "0001ed4a89b2";
createNode mesh -n "bruce_PLYShape" -p "bruce_PLY";
	rename -uid "722E2752-4E17-875A-BCB2-2A9BF521004E";
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
createNode objectSet -n "controls_SET";
	rename -uid "652755B7-4864-3804-9F29-7C8CA5268E77";
	setAttr ".ihi" 0;
createNode objectSet -n "out_SET";
	rename -uid "A14080D8-4AC0-518E-CFEE-978B4B94F56C";
	setAttr ".ihi" 0;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "9DA9C9D3-4E64-477A-8ACF-2898D335937F";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.00032808400000000003;
createNode transformGeometry -n "Bruce_01_:bruce_PLYShape1_transformGeometry";
	rename -uid "D7DCA7C0-4264-96BF-7C8D-14AC8116C457";
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
connectAttr "bruce_PLY_parentConstraint1.ctx" "Bruce_01_:bruce_PLY.tx";
connectAttr "bruce_PLY_parentConstraint1.cty" "Bruce_01_:bruce_PLY.ty";
connectAttr "bruce_PLY_parentConstraint1.ctz" "Bruce_01_:bruce_PLY.tz";
connectAttr "bruce_PLY_parentConstraint1.crx" "Bruce_01_:bruce_PLY.rx";
connectAttr "bruce_PLY_parentConstraint1.cry" "Bruce_01_:bruce_PLY.ry";
connectAttr "bruce_PLY_parentConstraint1.crz" "Bruce_01_:bruce_PLY.rz";
connectAttr "Bruce_01_:bruce_PLY.ro" "bruce_PLY_parentConstraint1.cro";
connectAttr "Bruce_01_:bruce_PLY.pim" "bruce_PLY_parentConstraint1.cpim";
connectAttr "Bruce_01_:bruce_PLY.rp" "bruce_PLY_parentConstraint1.crp";
connectAttr "Bruce_01_:bruce_PLY.rpt" "bruce_PLY_parentConstraint1.crt";
connectAttr "control_CTL.t" "bruce_PLY_parentConstraint1.tg[0].tt";
connectAttr "control_CTL.rp" "bruce_PLY_parentConstraint1.tg[0].trp";
connectAttr "control_CTL.rpt" "bruce_PLY_parentConstraint1.tg[0].trt";
connectAttr "control_CTL.r" "bruce_PLY_parentConstraint1.tg[0].tr";
connectAttr "control_CTL.ro" "bruce_PLY_parentConstraint1.tg[0].tro";
connectAttr "control_CTL.s" "bruce_PLY_parentConstraint1.tg[0].ts";
connectAttr "control_CTL.pm" "bruce_PLY_parentConstraint1.tg[0].tpm";
connectAttr "bruce_PLY_parentConstraint1.w0" "bruce_PLY_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle1.oc" "control_CTLShape.cr";
connectAttr "Bruce_01_:bruce_PLYShape1_transformGeometry.og" "bruce_PLYShape.i";
connectAttr "control_CTL.iog" "controls_SET.dsm" -na;
connectAttr "bruce_PLY.iog" "out_SET.dsm" -na;
connectAttr "Bruce_01_:bruce_PLYShape.o" "Bruce_01_:bruce_PLYShape1_transformGeometry.ig"
		;
connectAttr "Bruce_01_:bruce_PLYShape.wm" "Bruce_01_:bruce_PLYShape1_transformGeometry.txf"
		;
connectAttr "bruce_PLYShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Bruce_01_:bruce_PLYShape.iog" ":initialShadingGroup.dsm" -na;
// End of rigDefault.ma
