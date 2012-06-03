
# makefile for panorama stitching, created by hugin using the new makefilelib

# Force using cmd.exe
SHELL=C:\Windows\system32\cmd.exe

# Tool configuration
NONA="L:/Hugin/bin/nona"
PTSTITCHER="PTStitcher"
PTMENDER="L:/Hugin/bin/PTmender"
PTBLENDER="L:/Hugin/bin/PTblender"
PTMASKER="L:/Hugin/bin/PTmasker"
PTROLLER="L:/Hugin/bin/PTroller"
ENBLEND="L:/Hugin/bin/enblend"
ENFUSE="L:/Hugin/bin/enfuse"
SMARTBLEND="smartblend.exe"
HDRMERGE="L:/Hugin/bin/hugin_hdrmerge"
RM=del
EXIFTOOL="L:/Hugin/bin/exiftool"

# Project parameters
HUGIN_PROJECTION=1
HUGIN_HFOV=360
HUGIN_WIDTH=20549
HUGIN_HEIGHT=3333

# options for the programs
NONA_LDR_REMAPPED_COMP=-z LZW
NONA_OPTS=
ENBLEND_OPTS= -w -f20549x2435+0+318
ENBLEND_LDR_COMP=--compression=LZW
ENBLEND_EXPOSURE_COMP=--compression=LZW
ENBLEND_HDR_COMP=
HDRMERGE_OPTS=-m avg -c
ENFUSE_OPTS= -w
EXIFTOOL_COPY_ARGS=-ImageDescription -Make -Model -Artist -WhitePoint -Copyright -GPS:all -DateTimeOriginal -CreateDate -UserComment -ColorSpace -OwnerName -SerialNumber
EXIFTOOL_INFO_ARGS="-Software=Hugin 2011.4.0.cf9be9344356 built by Matthew Petroff" "-UserComment<$${UserComment}&\#xd;&\#xa;Projection: Cylindrical (1)&\#xd;&\#xa;FOV: 360 x 54&\#xd;&\#xa;Ev: 7.57" -f

# the output panorama
LDR_REMAPPED_PREFIX=lower_gym
LDR_REMAPPED_PREFIX_SHELL="lower_gym"
HDR_STACK_REMAPPED_PREFIX=lower_gym_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL="lower_gym_hdr_"
LDR_EXPOSURE_REMAPPED_PREFIX=lower_gym_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL="lower_gym_exposure_layers_"
PROJECT_FILE=L:/lower_gym.pto
PROJECT_FILE_SHELL="L:/lower_gym.pto"
LDR_BLENDED=lower_gym.tif
LDR_BLENDED_SHELL="lower_gym.tif"
LDR_STACKED_BLENDED=lower_gym_fused.tif
LDR_STACKED_BLENDED_SHELL="lower_gym_fused.tif"
LDR_EXPOSURE_LAYERS_FUSED=lower_gym_blended_fused.tif
LDR_EXPOSURE_LAYERS_FUSED_SHELL="lower_gym_blended_fused.tif"
HDR_BLENDED=lower_gym_hdr.exr
HDR_BLENDED_SHELL="lower_gym_hdr.exr"

# first input image
INPUT_IMAGE_1=L:/Street\ View/DSC04968.JPG
INPUT_IMAGE_1_SHELL="L:/Street View/DSC04968.JPG"

# all input images
INPUT_IMAGES=L:/Street\ View/DSC04968.JPG\
L:/Street\ View/DSC04969.JPG\
L:/Street\ View/DSC04970.JPG\
L:/Street\ View/DSC04971.JPG\
L:/Street\ View/DSC04972.JPG\
L:/Street\ View/DSC04973.JPG\
L:/Street\ View/DSC04974.JPG\
L:/Street\ View/DSC04975.JPG
INPUT_IMAGES_SHELL="L:/Street View/DSC04968.JPG"\
"L:/Street View/DSC04969.JPG"\
"L:/Street View/DSC04970.JPG"\
"L:/Street View/DSC04971.JPG"\
"L:/Street View/DSC04972.JPG"\
"L:/Street View/DSC04973.JPG"\
"L:/Street View/DSC04974.JPG"\
"L:/Street View/DSC04975.JPG"

# remapped images
LDR_LAYERS=lower_gym0000.tif\
lower_gym0001.tif\
lower_gym0002.tif\
lower_gym0003.tif\
lower_gym0004.tif\
lower_gym0005.tif\
lower_gym0006.tif\
lower_gym0007.tif
LDR_LAYERS_SHELL="lower_gym0000.tif"\
"lower_gym0001.tif"\
"lower_gym0002.tif"\
"lower_gym0003.tif"\
"lower_gym0004.tif"\
"lower_gym0005.tif"\
"lower_gym0006.tif"\
"lower_gym0007.tif"

# remapped images (hdr)
HDR_LAYERS=lower_gym_hdr_0000.exr\
lower_gym_hdr_0001.exr\
lower_gym_hdr_0002.exr\
lower_gym_hdr_0003.exr\
lower_gym_hdr_0004.exr\
lower_gym_hdr_0005.exr\
lower_gym_hdr_0006.exr\
lower_gym_hdr_0007.exr
HDR_LAYERS_SHELL="lower_gym_hdr_0000.exr"\
"lower_gym_hdr_0001.exr"\
"lower_gym_hdr_0002.exr"\
"lower_gym_hdr_0003.exr"\
"lower_gym_hdr_0004.exr"\
"lower_gym_hdr_0005.exr"\
"lower_gym_hdr_0006.exr"\
"lower_gym_hdr_0007.exr"

# remapped maxval images
HDR_LAYERS_WEIGHTS=lower_gym_hdr_0000_gray.pgm\
lower_gym_hdr_0001_gray.pgm\
lower_gym_hdr_0002_gray.pgm\
lower_gym_hdr_0003_gray.pgm\
lower_gym_hdr_0004_gray.pgm\
lower_gym_hdr_0005_gray.pgm\
lower_gym_hdr_0006_gray.pgm\
lower_gym_hdr_0007_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL="lower_gym_hdr_0000_gray.pgm"\
"lower_gym_hdr_0001_gray.pgm"\
"lower_gym_hdr_0002_gray.pgm"\
"lower_gym_hdr_0003_gray.pgm"\
"lower_gym_hdr_0004_gray.pgm"\
"lower_gym_hdr_0005_gray.pgm"\
"lower_gym_hdr_0006_gray.pgm"\
"lower_gym_hdr_0007_gray.pgm"

# stacked hdr images
HDR_STACK_0=lower_gym_stack_hdr_0000.exr
HDR_STACK_0_SHELL="lower_gym_stack_hdr_0000.exr"
HDR_STACK_0_INPUT=lower_gym_hdr_0000.exr
HDR_STACK_0_INPUT_SHELL="lower_gym_hdr_0000.exr"
HDR_STACK_1=lower_gym_stack_hdr_0001.exr
HDR_STACK_1_SHELL="lower_gym_stack_hdr_0001.exr"
HDR_STACK_1_INPUT=lower_gym_hdr_0001.exr
HDR_STACK_1_INPUT_SHELL="lower_gym_hdr_0001.exr"
HDR_STACK_2=lower_gym_stack_hdr_0002.exr
HDR_STACK_2_SHELL="lower_gym_stack_hdr_0002.exr"
HDR_STACK_2_INPUT=lower_gym_hdr_0002.exr
HDR_STACK_2_INPUT_SHELL="lower_gym_hdr_0002.exr"
HDR_STACK_3=lower_gym_stack_hdr_0003.exr
HDR_STACK_3_SHELL="lower_gym_stack_hdr_0003.exr"
HDR_STACK_3_INPUT=lower_gym_hdr_0003.exr
HDR_STACK_3_INPUT_SHELL="lower_gym_hdr_0003.exr"
HDR_STACK_4=lower_gym_stack_hdr_0004.exr
HDR_STACK_4_SHELL="lower_gym_stack_hdr_0004.exr"
HDR_STACK_4_INPUT=lower_gym_hdr_0004.exr
HDR_STACK_4_INPUT_SHELL="lower_gym_hdr_0004.exr"
HDR_STACK_5=lower_gym_stack_hdr_0005.exr
HDR_STACK_5_SHELL="lower_gym_stack_hdr_0005.exr"
HDR_STACK_5_INPUT=lower_gym_hdr_0005.exr
HDR_STACK_5_INPUT_SHELL="lower_gym_hdr_0005.exr"
HDR_STACK_6=lower_gym_stack_hdr_0006.exr
HDR_STACK_6_SHELL="lower_gym_stack_hdr_0006.exr"
HDR_STACK_6_INPUT=lower_gym_hdr_0006.exr
HDR_STACK_6_INPUT_SHELL="lower_gym_hdr_0006.exr"
HDR_STACK_7=lower_gym_stack_hdr_0007.exr
HDR_STACK_7_SHELL="lower_gym_stack_hdr_0007.exr"
HDR_STACK_7_INPUT=lower_gym_hdr_0007.exr
HDR_STACK_7_INPUT_SHELL="lower_gym_hdr_0007.exr"
HDR_STACKS_NUMBERS=0 1 2 3 4 5 6 7 
HDR_STACKS=$(HDR_STACK_0) $(HDR_STACK_1) $(HDR_STACK_2) $(HDR_STACK_3) $(HDR_STACK_4) $(HDR_STACK_5) $(HDR_STACK_6) $(HDR_STACK_7) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) $(HDR_STACK_1_SHELL) $(HDR_STACK_2_SHELL) $(HDR_STACK_3_SHELL) $(HDR_STACK_4_SHELL) $(HDR_STACK_5_SHELL) $(HDR_STACK_6_SHELL) $(HDR_STACK_7_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=lower_gym_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL="lower_gym_exposure_0000.tif"
LDR_EXPOSURE_LAYER_0_INPUT=lower_gym_exposure_layers_0000.tif\
lower_gym_exposure_layers_0001.tif\
lower_gym_exposure_layers_0002.tif\
lower_gym_exposure_layers_0003.tif\
lower_gym_exposure_layers_0004.tif\
lower_gym_exposure_layers_0005.tif\
lower_gym_exposure_layers_0006.tif\
lower_gym_exposure_layers_0007.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL="lower_gym_exposure_layers_0000.tif"\
"lower_gym_exposure_layers_0001.tif"\
"lower_gym_exposure_layers_0002.tif"\
"lower_gym_exposure_layers_0003.tif"\
"lower_gym_exposure_layers_0004.tif"\
"lower_gym_exposure_layers_0005.tif"\
"lower_gym_exposure_layers_0006.tif"\
"lower_gym_exposure_layers_0007.tif"
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=lower_gym0000.tif\
lower_gym0001.tif\
lower_gym0002.tif\
lower_gym0003.tif\
lower_gym0004.tif\
lower_gym0005.tif\
lower_gym0006.tif\
lower_gym0007.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL="lower_gym0000.tif"\
"lower_gym0001.tif"\
"lower_gym0002.tif"\
"lower_gym0003.tif"\
"lower_gym0004.tif"\
"lower_gym0005.tif"\
"lower_gym0006.tif"\
"lower_gym0007.tif"
LDR_EXPOSURE_LAYER_0_EXPOSURE=7.57278
LDR_EXPOSURE_LAYERS_NUMBERS=0 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=lower_gym_exposure_layers_0000.tif\
lower_gym_exposure_layers_0001.tif\
lower_gym_exposure_layers_0002.tif\
lower_gym_exposure_layers_0003.tif\
lower_gym_exposure_layers_0004.tif\
lower_gym_exposure_layers_0005.tif\
lower_gym_exposure_layers_0006.tif\
lower_gym_exposure_layers_0007.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL="lower_gym_exposure_layers_0000.tif"\
"lower_gym_exposure_layers_0001.tif"\
"lower_gym_exposure_layers_0002.tif"\
"lower_gym_exposure_layers_0003.tif"\
"lower_gym_exposure_layers_0004.tif"\
"lower_gym_exposure_layers_0005.tif"\
"lower_gym_exposure_layers_0006.tif"\
"lower_gym_exposure_layers_0007.tif"

# stacked ldr images
LDR_STACK_0=lower_gym_stack_ldr_0000.tif
LDR_STACK_0_SHELL="lower_gym_stack_ldr_0000.tif"
LDR_STACK_0_INPUT=lower_gym_exposure_layers_0000.tif
LDR_STACK_0_INPUT_SHELL="lower_gym_exposure_layers_0000.tif"
LDR_STACK_1=lower_gym_stack_ldr_0001.tif
LDR_STACK_1_SHELL="lower_gym_stack_ldr_0001.tif"
LDR_STACK_1_INPUT=lower_gym_exposure_layers_0001.tif
LDR_STACK_1_INPUT_SHELL="lower_gym_exposure_layers_0001.tif"
LDR_STACK_2=lower_gym_stack_ldr_0002.tif
LDR_STACK_2_SHELL="lower_gym_stack_ldr_0002.tif"
LDR_STACK_2_INPUT=lower_gym_exposure_layers_0002.tif
LDR_STACK_2_INPUT_SHELL="lower_gym_exposure_layers_0002.tif"
LDR_STACK_3=lower_gym_stack_ldr_0003.tif
LDR_STACK_3_SHELL="lower_gym_stack_ldr_0003.tif"
LDR_STACK_3_INPUT=lower_gym_exposure_layers_0003.tif
LDR_STACK_3_INPUT_SHELL="lower_gym_exposure_layers_0003.tif"
LDR_STACK_4=lower_gym_stack_ldr_0004.tif
LDR_STACK_4_SHELL="lower_gym_stack_ldr_0004.tif"
LDR_STACK_4_INPUT=lower_gym_exposure_layers_0004.tif
LDR_STACK_4_INPUT_SHELL="lower_gym_exposure_layers_0004.tif"
LDR_STACK_5=lower_gym_stack_ldr_0005.tif
LDR_STACK_5_SHELL="lower_gym_stack_ldr_0005.tif"
LDR_STACK_5_INPUT=lower_gym_exposure_layers_0005.tif
LDR_STACK_5_INPUT_SHELL="lower_gym_exposure_layers_0005.tif"
LDR_STACK_6=lower_gym_stack_ldr_0006.tif
LDR_STACK_6_SHELL="lower_gym_stack_ldr_0006.tif"
LDR_STACK_6_INPUT=lower_gym_exposure_layers_0006.tif
LDR_STACK_6_INPUT_SHELL="lower_gym_exposure_layers_0006.tif"
LDR_STACK_7=lower_gym_stack_ldr_0007.tif
LDR_STACK_7_SHELL="lower_gym_stack_ldr_0007.tif"
LDR_STACK_7_INPUT=lower_gym_exposure_layers_0007.tif
LDR_STACK_7_INPUT_SHELL="lower_gym_exposure_layers_0007.tif"
LDR_STACKS_NUMBERS=0 1 2 3 4 5 6 7 
LDR_STACKS=$(LDR_STACK_0) $(LDR_STACK_1) $(LDR_STACK_2) $(LDR_STACK_3) $(LDR_STACK_4) $(LDR_STACK_5) $(LDR_STACK_6) $(LDR_STACK_7) 
LDR_STACKS_SHELL=$(LDR_STACK_0_SHELL) $(LDR_STACK_1_SHELL) $(LDR_STACK_2_SHELL) $(LDR_STACK_3_SHELL) $(LDR_STACK_4_SHELL) $(LDR_STACK_5_SHELL) $(LDR_STACK_6_SHELL) $(LDR_STACK_7_SHELL) 
DO_LDR_BLENDED=1

all : startStitching $(LDR_BLENDED) 

startStitching : 
	@echo ===========================================================================
	@echo Stitching panorama
	@echo ===========================================================================

clean : 
	@echo ===========================================================================
	@echo Remove temporary files
	@echo ===========================================================================
	-$(RM) $(LDR_LAYERS_SHELL) 

test : 
	@echo ===========================================================================
	@echo Testing programs
	@echo ===========================================================================
	@echo Checking nona...
	@-$(NONA) --help > NUL 2>&1 && echo nona is ok || echo nona failed
	@echo Checking enblend...
	@-$(ENBLEND) -h > NUL 2>&1 && echo enblend is ok || echo enblend failed
	@echo Checking enfuse...
	@-$(ENFUSE) -h > NUL 2>&1 && echo enfuse is ok || echo enfuse failed
	@echo Checking hugin_hdrmerge...
	@-$(HDRMERGE) -h > NUL 2>&1 && echo hugin_hdrmerge is ok || echo hugin_hdrmerge failed
	@echo Checking exiftool...
	@-$(EXIFTOOL) -ver > NUL 2>&1 && echo exiftool is ok || echo exiftool failed

info : 
	@echo ===========================================================================
	@echo ***************  Panorama makefile generated by Hugin       ***************
	@echo ===========================================================================
	@echo System information
	@echo ===========================================================================
	@echo Operating System: Windows 7 (6.1 Service Pack 1)
	@echo Architecture: x86
	@echo Number of logical processors: 2
	@echo Physical memory: 2619372 kiB (51%% occupied)
	@echo Free space on disc: 68299 MiB
	@echo Active codepage: 1252 (Western European Windows)
	@echo ===========================================================================
	@echo Output options
	@echo ===========================================================================
	@echo Hugin Version: 2011.4.0.cf9be9344356 built by Matthew Petroff
	@echo Project file: L:\lower_gym.pto
	@echo Output prefix: lower_gym
	@echo Projection: Cylindrical (1)
	@echo Field of view: 360 x 54
	@echo Canvas dimensions: 20549 x 3333
	@echo Crop area: (0,318) - (20549,2753)
	@echo Output exposure value: 7.57
	@echo Selected outputs
	@echo Normal panorama
	@echo * Blended panorama
	@echo ===========================================================================
	@echo Input images
	@echo ===========================================================================
	@echo Number of images in project file: 8
	@echo Number of active images: 8
	@echo Image 0: L:\Street View\DSC04968.JPG
	@echo Image 0: Size 6000x4000, Exposure: 7.52
	@echo Image 1: L:\Street View\DSC04969.JPG
	@echo Image 1: Size 6000x4000, Exposure: 7.82
	@echo Image 2: L:\Street View\DSC04970.JPG
	@echo Image 2: Size 6000x4000, Exposure: 7.65
	@echo Image 3: L:\Street View\DSC04971.JPG
	@echo Image 3: Size 6000x4000, Exposure: 7.52
	@echo Image 4: L:\Street View\DSC04972.JPG
	@echo Image 4: Size 6000x4000, Exposure: 7.40
	@echo Image 5: L:\Street View\DSC04973.JPG
	@echo Image 5: Size 6000x4000, Exposure: 7.59
	@echo Image 6: L:\Street View\DSC04974.JPG
	@echo Image 6: Size 6000x4000, Exposure: 7.51
	@echo Image 7: L:\Street View\DSC04975.JPG
	@echo Image 7: Size 6000x4000, Exposure: 7.57

# Rules for ordinary TIFF_m and hdr output

lower_gym0000.tif : L:/Street\ View/DSC04968.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

lower_gym_hdr_0000.exr : L:/Street\ View/DSC04968.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

lower_gym0001.tif : L:/Street\ View/DSC04969.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

lower_gym_hdr_0001.exr : L:/Street\ View/DSC04969.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

lower_gym0002.tif : L:/Street\ View/DSC04970.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

lower_gym_hdr_0002.exr : L:/Street\ View/DSC04970.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

lower_gym0003.tif : L:/Street\ View/DSC04971.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

lower_gym_hdr_0003.exr : L:/Street\ View/DSC04971.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

lower_gym0004.tif : L:/Street\ View/DSC04972.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

lower_gym_hdr_0004.exr : L:/Street\ View/DSC04972.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

lower_gym0005.tif : L:/Street\ View/DSC04973.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

lower_gym_hdr_0005.exr : L:/Street\ View/DSC04973.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

lower_gym0006.tif : L:/Street\ View/DSC04974.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

lower_gym_hdr_0006.exr : L:/Street\ View/DSC04974.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

lower_gym0007.tif : L:/Street\ View/DSC04975.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

lower_gym_hdr_0007.exr : L:/Street\ View/DSC04975.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

lower_gym_exposure_layers_0000.tif : L:/Street\ View/DSC04968.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.5216 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

lower_gym_exposure_layers_0001.tif : L:/Street\ View/DSC04969.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.82121 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

lower_gym_exposure_layers_0002.tif : L:/Street\ View/DSC04970.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.64846 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

lower_gym_exposure_layers_0003.tif : L:/Street\ View/DSC04971.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.5207 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

lower_gym_exposure_layers_0004.tif : L:/Street\ View/DSC04972.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.40333 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

lower_gym_exposure_layers_0005.tif : L:/Street\ View/DSC04973.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.58874 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

lower_gym_exposure_layers_0006.tif : L:/Street\ View/DSC04974.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.50743 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

lower_gym_exposure_layers_0007.tif : L:/Street\ View/DSC04975.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.57073 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

# Rules for LDR and HDR stack merging, a rule for each stack

$(LDR_STACK_0) : $(LDR_STACK_0_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_0_SHELL) -- $(LDR_STACK_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_0_SHELL)

$(HDR_STACK_0) : $(HDR_STACK_0_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_0_SHELL) -- $(HDR_STACK_0_INPUT_SHELL)

$(LDR_STACK_1) : $(LDR_STACK_1_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_1_SHELL) -- $(LDR_STACK_1_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_1_SHELL)

$(HDR_STACK_1) : $(HDR_STACK_1_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_1_SHELL) -- $(HDR_STACK_1_INPUT_SHELL)

$(LDR_STACK_2) : $(LDR_STACK_2_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_2_SHELL) -- $(LDR_STACK_2_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_2_SHELL)

$(HDR_STACK_2) : $(HDR_STACK_2_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_2_SHELL) -- $(HDR_STACK_2_INPUT_SHELL)

$(LDR_STACK_3) : $(LDR_STACK_3_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_3_SHELL) -- $(LDR_STACK_3_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_3_SHELL)

$(HDR_STACK_3) : $(HDR_STACK_3_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_3_SHELL) -- $(HDR_STACK_3_INPUT_SHELL)

$(LDR_STACK_4) : $(LDR_STACK_4_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_4_SHELL) -- $(LDR_STACK_4_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_4_SHELL)

$(HDR_STACK_4) : $(HDR_STACK_4_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_4_SHELL) -- $(HDR_STACK_4_INPUT_SHELL)

$(LDR_STACK_5) : $(LDR_STACK_5_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_5_SHELL) -- $(LDR_STACK_5_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_5_SHELL)

$(HDR_STACK_5) : $(HDR_STACK_5_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_5_SHELL) -- $(HDR_STACK_5_INPUT_SHELL)

$(LDR_STACK_6) : $(LDR_STACK_6_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_6_SHELL) -- $(LDR_STACK_6_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_6_SHELL)

$(HDR_STACK_6) : $(HDR_STACK_6_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_6_SHELL) -- $(HDR_STACK_6_INPUT_SHELL)

$(LDR_STACK_7) : $(LDR_STACK_7_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_7_SHELL) -- $(LDR_STACK_7_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_7_SHELL)

$(HDR_STACK_7) : $(HDR_STACK_7_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_7_SHELL) -- $(HDR_STACK_7_INPUT_SHELL)

$(LDR_BLENDED) : $(LDR_LAYERS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_BLENDED_SHELL) -- $(LDR_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYER_0) : $(LDR_EXPOSURE_LAYER_0_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_0_SHELL) -- $(LDR_EXPOSURE_LAYER_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_0_SHELL)

$(LDR_STACKED_BLENDED) : $(LDR_STACKS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_STACKED_BLENDED_SHELL) -- $(LDR_STACKS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_STACKED_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYERS_FUSED) : $(LDR_EXPOSURE_LAYERS) 
	$(ENFUSE) $(ENBLEND_LDR_COMP) $(ENFUSE_OPTS) -o $(LDR_EXPOSURE_LAYERS_FUSED_SHELL) -- $(LDR_EXPOSURE_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_EXPOSURE_LAYERS_FUSED_SHELL)

$(HDR_BLENDED) : $(HDR_STACKS) 
	$(ENBLEND) $(ENBLEND_HDR_COMP) $(ENBLEND_OPTS) -o $(HDR_BLENDED_SHELL) -- $(HDR_STACKS_SHELL)

$(LDR_REMAPPED_PREFIX)_multilayer.tif : $(LDR_LAYERS) 
	tiffcp $(LDR_LAYERS_SHELL) $(LDR_REMAPPED_PREFIX_SHELL)_multilayer.tif

$(LDR_REMAPPED_PREFIX)_fused_multilayer.tif : $(LDR_STACKS) $(LDR_EXPOSURE_LAYERS) 
	tiffcp $(LDR_STACKS_SHELL) $(LDR_EXPOSURE_LAYERS_SHELL) $(LDR_REMAPPED_PREFIX_SHELL)_fused_multilayer.tif

$(LDR_REMAPPED_PREFIX)_multilayer.psd : $(LDR_LAYERS) 
	PTtiff2psd -o $(LDR_REMAPPED_PREFIX_SHELL)_multilayer.psd $(LDR_LAYERS_SHELL)

$(LDR_REMAPPED_PREFIX)_fused_multilayer.psd : $(LDR_STACKS) $(LDR_EXPOSURE_LAYERS) 
	PTtiff2psd -o $(LDR_REMAPPED_PREFIX_SHELL)_fused_multilayer.psd $(LDR_STACKS_SHELL)$(LDR_EXPOSURE_LAYERS_SHELL)
