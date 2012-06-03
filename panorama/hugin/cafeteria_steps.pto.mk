
# makefile for panorama stitching, created by hugin using the new makefilelib

# Force using cmd.exe
SHELL=C:\Windows\system32\cmd.exe

# Tool configuration
NONA="C:/Users/15107514/Desktop/Hugin/bin/nona"
PTSTITCHER="PTStitcher"
PTMENDER="C:/Users/15107514/Desktop/Hugin/bin/PTmender"
PTBLENDER="C:/Users/15107514/Desktop/Hugin/bin/PTblender"
PTMASKER="C:/Users/15107514/Desktop/Hugin/bin/PTmasker"
PTROLLER="C:/Users/15107514/Desktop/Hugin/bin/PTroller"
ENBLEND="C:/Users/15107514/Desktop/Hugin/bin/enblend"
ENFUSE="C:/Users/15107514/Desktop/Hugin/bin/enfuse"
SMARTBLEND="smartblend.exe"
HDRMERGE="C:/Users/15107514/Desktop/Hugin/bin/hugin_hdrmerge"
RM=del
EXIFTOOL="C:/Users/15107514/Desktop/Hugin/bin/exiftool"

# Project parameters
HUGIN_PROJECTION=1
HUGIN_HFOV=360
HUGIN_WIDTH=20582
HUGIN_HEIGHT=3087

# options for the programs
NONA_LDR_REMAPPED_COMP=-z LZW 
NONA_OPTS=
ENBLEND_OPTS= -w -f20582x2379+0+224
ENBLEND_LDR_COMP=--compression=90
ENBLEND_EXPOSURE_COMP=--compression=LZW 
ENBLEND_HDR_COMP=
HDRMERGE_OPTS=-m avg -c
ENFUSE_OPTS= -w
EXIFTOOL_COPY_ARGS=-ImageDescription -Make -Model -Artist -WhitePoint -Copyright -GPS:all -DateTimeOriginal -CreateDate -UserComment -ColorSpace -OwnerName -SerialNumber
EXIFTOOL_INFO_ARGS="-Software=Hugin 2011.4.0.cf9be9344356 built by Matthew Petroff" "-UserComment<$${UserComment}&\#xd;&\#xa;Projection: Cylindrical (1)&\#xd;&\#xa;FOV: 360 x 50&\#xd;&\#xa;Ev: 10.63" -f

# the output panorama
LDR_REMAPPED_PREFIX=cafeteria_steps
LDR_REMAPPED_PREFIX_SHELL="cafeteria_steps"
HDR_STACK_REMAPPED_PREFIX=cafeteria_steps_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL="cafeteria_steps_hdr_"
LDR_EXPOSURE_REMAPPED_PREFIX=cafeteria_steps_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL="cafeteria_steps_exposure_layers_"
PROJECT_FILE=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/cafeteria_steps.pto
PROJECT_FILE_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/cafeteria_steps.pto"
LDR_BLENDED=cafeteria_steps.jpg
LDR_BLENDED_SHELL="cafeteria_steps.jpg"
LDR_STACKED_BLENDED=cafeteria_steps_fused.jpg
LDR_STACKED_BLENDED_SHELL="cafeteria_steps_fused.jpg"
LDR_EXPOSURE_LAYERS_FUSED=cafeteria_steps_blended_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED_SHELL="cafeteria_steps_blended_fused.jpg"
HDR_BLENDED=cafeteria_steps_hdr.exr
HDR_BLENDED_SHELL="cafeteria_steps_hdr.exr"

# first input image
INPUT_IMAGE_1=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04960.JPG
INPUT_IMAGE_1_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04960.JPG"

# all input images
INPUT_IMAGES=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04960.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04961.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04962.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04963.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04964.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04965.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04966.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04967.JPG
INPUT_IMAGES_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04960.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04961.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04962.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04963.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04964.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04965.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04966.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC04967.JPG"

# remapped images
LDR_LAYERS=cafeteria_steps0000.tif\
cafeteria_steps0001.tif\
cafeteria_steps0002.tif\
cafeteria_steps0003.tif\
cafeteria_steps0004.tif\
cafeteria_steps0005.tif\
cafeteria_steps0006.tif\
cafeteria_steps0007.tif
LDR_LAYERS_SHELL="cafeteria_steps0000.tif"\
"cafeteria_steps0001.tif"\
"cafeteria_steps0002.tif"\
"cafeteria_steps0003.tif"\
"cafeteria_steps0004.tif"\
"cafeteria_steps0005.tif"\
"cafeteria_steps0006.tif"\
"cafeteria_steps0007.tif"

# remapped images (hdr)
HDR_LAYERS=cafeteria_steps_hdr_0000.exr\
cafeteria_steps_hdr_0001.exr\
cafeteria_steps_hdr_0002.exr\
cafeteria_steps_hdr_0003.exr\
cafeteria_steps_hdr_0004.exr\
cafeteria_steps_hdr_0005.exr\
cafeteria_steps_hdr_0006.exr\
cafeteria_steps_hdr_0007.exr
HDR_LAYERS_SHELL="cafeteria_steps_hdr_0000.exr"\
"cafeteria_steps_hdr_0001.exr"\
"cafeteria_steps_hdr_0002.exr"\
"cafeteria_steps_hdr_0003.exr"\
"cafeteria_steps_hdr_0004.exr"\
"cafeteria_steps_hdr_0005.exr"\
"cafeteria_steps_hdr_0006.exr"\
"cafeteria_steps_hdr_0007.exr"

# remapped maxval images
HDR_LAYERS_WEIGHTS=cafeteria_steps_hdr_0000_gray.pgm\
cafeteria_steps_hdr_0001_gray.pgm\
cafeteria_steps_hdr_0002_gray.pgm\
cafeteria_steps_hdr_0003_gray.pgm\
cafeteria_steps_hdr_0004_gray.pgm\
cafeteria_steps_hdr_0005_gray.pgm\
cafeteria_steps_hdr_0006_gray.pgm\
cafeteria_steps_hdr_0007_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL="cafeteria_steps_hdr_0000_gray.pgm"\
"cafeteria_steps_hdr_0001_gray.pgm"\
"cafeteria_steps_hdr_0002_gray.pgm"\
"cafeteria_steps_hdr_0003_gray.pgm"\
"cafeteria_steps_hdr_0004_gray.pgm"\
"cafeteria_steps_hdr_0005_gray.pgm"\
"cafeteria_steps_hdr_0006_gray.pgm"\
"cafeteria_steps_hdr_0007_gray.pgm"

# stacked hdr images
HDR_STACK_0=cafeteria_steps_stack_hdr_0000.exr
HDR_STACK_0_SHELL="cafeteria_steps_stack_hdr_0000.exr"
HDR_STACK_0_INPUT=cafeteria_steps_hdr_0000.exr\
cafeteria_steps_hdr_0001.exr
HDR_STACK_0_INPUT_SHELL="cafeteria_steps_hdr_0000.exr"\
"cafeteria_steps_hdr_0001.exr"
HDR_STACK_1=cafeteria_steps_stack_hdr_0001.exr
HDR_STACK_1_SHELL="cafeteria_steps_stack_hdr_0001.exr"
HDR_STACK_1_INPUT=cafeteria_steps_hdr_0002.exr
HDR_STACK_1_INPUT_SHELL="cafeteria_steps_hdr_0002.exr"
HDR_STACK_2=cafeteria_steps_stack_hdr_0002.exr
HDR_STACK_2_SHELL="cafeteria_steps_stack_hdr_0002.exr"
HDR_STACK_2_INPUT=cafeteria_steps_hdr_0003.exr
HDR_STACK_2_INPUT_SHELL="cafeteria_steps_hdr_0003.exr"
HDR_STACK_3=cafeteria_steps_stack_hdr_0003.exr
HDR_STACK_3_SHELL="cafeteria_steps_stack_hdr_0003.exr"
HDR_STACK_3_INPUT=cafeteria_steps_hdr_0004.exr
HDR_STACK_3_INPUT_SHELL="cafeteria_steps_hdr_0004.exr"
HDR_STACK_4=cafeteria_steps_stack_hdr_0004.exr
HDR_STACK_4_SHELL="cafeteria_steps_stack_hdr_0004.exr"
HDR_STACK_4_INPUT=cafeteria_steps_hdr_0005.exr
HDR_STACK_4_INPUT_SHELL="cafeteria_steps_hdr_0005.exr"
HDR_STACK_5=cafeteria_steps_stack_hdr_0005.exr
HDR_STACK_5_SHELL="cafeteria_steps_stack_hdr_0005.exr"
HDR_STACK_5_INPUT=cafeteria_steps_hdr_0006.exr
HDR_STACK_5_INPUT_SHELL="cafeteria_steps_hdr_0006.exr"
HDR_STACK_6=cafeteria_steps_stack_hdr_0006.exr
HDR_STACK_6_SHELL="cafeteria_steps_stack_hdr_0006.exr"
HDR_STACK_6_INPUT=cafeteria_steps_hdr_0007.exr
HDR_STACK_6_INPUT_SHELL="cafeteria_steps_hdr_0007.exr"
HDR_STACKS_NUMBERS=0 1 2 3 4 5 6 
HDR_STACKS=$(HDR_STACK_0) $(HDR_STACK_1) $(HDR_STACK_2) $(HDR_STACK_3) $(HDR_STACK_4) $(HDR_STACK_5) $(HDR_STACK_6) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) $(HDR_STACK_1_SHELL) $(HDR_STACK_2_SHELL) $(HDR_STACK_3_SHELL) $(HDR_STACK_4_SHELL) $(HDR_STACK_5_SHELL) $(HDR_STACK_6_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=cafeteria_steps_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL="cafeteria_steps_exposure_0000.tif"
LDR_EXPOSURE_LAYER_0_INPUT=cafeteria_steps_exposure_layers_0000.tif\
cafeteria_steps_exposure_layers_0001.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL="cafeteria_steps_exposure_layers_0000.tif"\
"cafeteria_steps_exposure_layers_0001.tif"
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=cafeteria_steps0000.tif\
cafeteria_steps0001.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL="cafeteria_steps0000.tif"\
"cafeteria_steps0001.tif"
LDR_EXPOSURE_LAYER_0_EXPOSURE=10.8797
LDR_EXPOSURE_LAYER_1=cafeteria_steps_exposure_0001.tif
LDR_EXPOSURE_LAYER_1_SHELL="cafeteria_steps_exposure_0001.tif"
LDR_EXPOSURE_LAYER_1_INPUT=cafeteria_steps_exposure_layers_0002.tif
LDR_EXPOSURE_LAYER_1_INPUT_SHELL="cafeteria_steps_exposure_layers_0002.tif"
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER=cafeteria_steps0002.tif
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER_SHELL="cafeteria_steps0002.tif"
LDR_EXPOSURE_LAYER_1_EXPOSURE=12.7772
LDR_EXPOSURE_LAYER_2=cafeteria_steps_exposure_0002.tif
LDR_EXPOSURE_LAYER_2_SHELL="cafeteria_steps_exposure_0002.tif"
LDR_EXPOSURE_LAYER_2_INPUT=cafeteria_steps_exposure_layers_0003.tif\
cafeteria_steps_exposure_layers_0004.tif
LDR_EXPOSURE_LAYER_2_INPUT_SHELL="cafeteria_steps_exposure_layers_0003.tif"\
"cafeteria_steps_exposure_layers_0004.tif"
LDR_EXPOSURE_LAYER_2_INPUT_PTMENDER=cafeteria_steps0003.tif\
cafeteria_steps0004.tif
LDR_EXPOSURE_LAYER_2_INPUT_PTMENDER_SHELL="cafeteria_steps0003.tif"\
"cafeteria_steps0004.tif"
LDR_EXPOSURE_LAYER_2_EXPOSURE=11.2947
LDR_EXPOSURE_LAYER_3=cafeteria_steps_exposure_0003.tif
LDR_EXPOSURE_LAYER_3_SHELL="cafeteria_steps_exposure_0003.tif"
LDR_EXPOSURE_LAYER_3_INPUT=cafeteria_steps_exposure_layers_0005.tif
LDR_EXPOSURE_LAYER_3_INPUT_SHELL="cafeteria_steps_exposure_layers_0005.tif"
LDR_EXPOSURE_LAYER_3_INPUT_PTMENDER=cafeteria_steps0005.tif
LDR_EXPOSURE_LAYER_3_INPUT_PTMENDER_SHELL="cafeteria_steps0005.tif"
LDR_EXPOSURE_LAYER_3_EXPOSURE=10.0653
LDR_EXPOSURE_LAYER_4=cafeteria_steps_exposure_0004.tif
LDR_EXPOSURE_LAYER_4_SHELL="cafeteria_steps_exposure_0004.tif"
LDR_EXPOSURE_LAYER_4_INPUT=cafeteria_steps_exposure_layers_0006.tif\
cafeteria_steps_exposure_layers_0007.tif
LDR_EXPOSURE_LAYER_4_INPUT_SHELL="cafeteria_steps_exposure_layers_0006.tif"\
"cafeteria_steps_exposure_layers_0007.tif"
LDR_EXPOSURE_LAYER_4_INPUT_PTMENDER=cafeteria_steps0006.tif\
cafeteria_steps0007.tif
LDR_EXPOSURE_LAYER_4_INPUT_PTMENDER_SHELL="cafeteria_steps0006.tif"\
"cafeteria_steps0007.tif"
LDR_EXPOSURE_LAYER_4_EXPOSURE=8.90825
LDR_EXPOSURE_LAYERS_NUMBERS=0 1 2 3 4 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) $(LDR_EXPOSURE_LAYER_1) $(LDR_EXPOSURE_LAYER_2) $(LDR_EXPOSURE_LAYER_3) $(LDR_EXPOSURE_LAYER_4) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) $(LDR_EXPOSURE_LAYER_1_SHELL) $(LDR_EXPOSURE_LAYER_2_SHELL) $(LDR_EXPOSURE_LAYER_3_SHELL) $(LDR_EXPOSURE_LAYER_4_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=cafeteria_steps_exposure_layers_0000.tif\
cafeteria_steps_exposure_layers_0001.tif\
cafeteria_steps_exposure_layers_0002.tif\
cafeteria_steps_exposure_layers_0003.tif\
cafeteria_steps_exposure_layers_0004.tif\
cafeteria_steps_exposure_layers_0005.tif\
cafeteria_steps_exposure_layers_0006.tif\
cafeteria_steps_exposure_layers_0007.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL="cafeteria_steps_exposure_layers_0000.tif"\
"cafeteria_steps_exposure_layers_0001.tif"\
"cafeteria_steps_exposure_layers_0002.tif"\
"cafeteria_steps_exposure_layers_0003.tif"\
"cafeteria_steps_exposure_layers_0004.tif"\
"cafeteria_steps_exposure_layers_0005.tif"\
"cafeteria_steps_exposure_layers_0006.tif"\
"cafeteria_steps_exposure_layers_0007.tif"

# stacked ldr images
LDR_STACK_0=cafeteria_steps_stack_ldr_0000.tif
LDR_STACK_0_SHELL="cafeteria_steps_stack_ldr_0000.tif"
LDR_STACK_0_INPUT=cafeteria_steps_exposure_layers_0000.tif\
cafeteria_steps_exposure_layers_0001.tif
LDR_STACK_0_INPUT_SHELL="cafeteria_steps_exposure_layers_0000.tif"\
"cafeteria_steps_exposure_layers_0001.tif"
LDR_STACK_1=cafeteria_steps_stack_ldr_0001.tif
LDR_STACK_1_SHELL="cafeteria_steps_stack_ldr_0001.tif"
LDR_STACK_1_INPUT=cafeteria_steps_exposure_layers_0002.tif
LDR_STACK_1_INPUT_SHELL="cafeteria_steps_exposure_layers_0002.tif"
LDR_STACK_2=cafeteria_steps_stack_ldr_0002.tif
LDR_STACK_2_SHELL="cafeteria_steps_stack_ldr_0002.tif"
LDR_STACK_2_INPUT=cafeteria_steps_exposure_layers_0003.tif
LDR_STACK_2_INPUT_SHELL="cafeteria_steps_exposure_layers_0003.tif"
LDR_STACK_3=cafeteria_steps_stack_ldr_0003.tif
LDR_STACK_3_SHELL="cafeteria_steps_stack_ldr_0003.tif"
LDR_STACK_3_INPUT=cafeteria_steps_exposure_layers_0004.tif
LDR_STACK_3_INPUT_SHELL="cafeteria_steps_exposure_layers_0004.tif"
LDR_STACK_4=cafeteria_steps_stack_ldr_0004.tif
LDR_STACK_4_SHELL="cafeteria_steps_stack_ldr_0004.tif"
LDR_STACK_4_INPUT=cafeteria_steps_exposure_layers_0005.tif
LDR_STACK_4_INPUT_SHELL="cafeteria_steps_exposure_layers_0005.tif"
LDR_STACK_5=cafeteria_steps_stack_ldr_0005.tif
LDR_STACK_5_SHELL="cafeteria_steps_stack_ldr_0005.tif"
LDR_STACK_5_INPUT=cafeteria_steps_exposure_layers_0006.tif
LDR_STACK_5_INPUT_SHELL="cafeteria_steps_exposure_layers_0006.tif"
LDR_STACK_6=cafeteria_steps_stack_ldr_0006.tif
LDR_STACK_6_SHELL="cafeteria_steps_stack_ldr_0006.tif"
LDR_STACK_6_INPUT=cafeteria_steps_exposure_layers_0007.tif
LDR_STACK_6_INPUT_SHELL="cafeteria_steps_exposure_layers_0007.tif"
LDR_STACKS_NUMBERS=0 1 2 3 4 5 6 
LDR_STACKS=$(LDR_STACK_0) $(LDR_STACK_1) $(LDR_STACK_2) $(LDR_STACK_3) $(LDR_STACK_4) $(LDR_STACK_5) $(LDR_STACK_6) 
LDR_STACKS_SHELL=$(LDR_STACK_0_SHELL) $(LDR_STACK_1_SHELL) $(LDR_STACK_2_SHELL) $(LDR_STACK_3_SHELL) $(LDR_STACK_4_SHELL) $(LDR_STACK_5_SHELL) $(LDR_STACK_6_SHELL) 
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
	@echo Operating System: Windows 7 (6.1 )
	@echo Architecture: x86
	@echo Number of logical processors: 2
	@echo Physical memory: 1990684 kiB (51%% occupied)
	@echo Free space on disc: 12209 MiB
	@echo Active codepage: 1252 (Western European Windows)
	@echo ===========================================================================
	@echo Output options
	@echo ===========================================================================
	@echo Hugin Version: 2011.4.0.cf9be9344356 built by Matthew Petroff
	@echo Project file: D:\Dropbox\Student Data\3D Art\Street View\Panorama\cafeteria_steps.pto
	@echo Output prefix: cafeteria_steps
	@echo Projection: Cylindrical (1)
	@echo Field of view: 360 x 50
	@echo Canvas dimensions: 20582 x 3087
	@echo Crop area: (0,224) - (20582,2603)
	@echo Output exposure value: 10.63
	@echo Selected outputs
	@echo Normal panorama
	@echo * Blended panorama
	@echo ===========================================================================
	@echo Input images
	@echo ===========================================================================
	@echo Number of images in project file: 8
	@echo Number of active images: 8
	@echo Image 0: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC04960.JPG
	@echo Image 0: Size 6000x4000, Exposure: 10.66
	@echo Image 1: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC04961.JPG
	@echo Image 1: Size 6000x4000, Exposure: 11.10
	@echo Image 2: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC04962.JPG
	@echo Image 2: Size 6000x4000, Exposure: 12.78
	@echo Image 3: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC04963.JPG
	@echo Image 3: Size 6000x4000, Exposure: 11.17
	@echo Image 4: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC04964.JPG
	@echo Image 4: Size 6000x4000, Exposure: 11.42
	@echo Image 5: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC04965.JPG
	@echo Image 5: Size 6000x4000, Exposure: 10.07
	@echo Image 6: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC04966.JPG
	@echo Image 6: Size 6000x4000, Exposure: 8.81
	@echo Image 7: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC04967.JPG
	@echo Image 7: Size 6000x4000, Exposure: 9.00

# Rules for ordinary TIFF_m and hdr output

cafeteria_steps0000.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04960.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

cafeteria_steps_hdr_0000.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04960.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

cafeteria_steps0001.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04961.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

cafeteria_steps_hdr_0001.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04961.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

cafeteria_steps0002.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04962.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

cafeteria_steps_hdr_0002.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04962.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

cafeteria_steps0003.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04963.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

cafeteria_steps_hdr_0003.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04963.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

cafeteria_steps0004.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04964.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

cafeteria_steps_hdr_0004.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04964.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

cafeteria_steps0005.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04965.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

cafeteria_steps_hdr_0005.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04965.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

cafeteria_steps0006.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04966.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

cafeteria_steps_hdr_0006.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04966.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

cafeteria_steps0007.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04967.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

cafeteria_steps_hdr_0007.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04967.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

cafeteria_steps_exposure_layers_0000.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04960.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 10.6618 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

cafeteria_steps_exposure_layers_0001.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04961.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 11.0976 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

cafeteria_steps_exposure_layers_0002.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04962.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 12.7772 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

cafeteria_steps_exposure_layers_0003.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04963.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 11.1675 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

cafeteria_steps_exposure_layers_0004.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04964.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 11.4219 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

cafeteria_steps_exposure_layers_0005.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04965.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 10.0653 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

cafeteria_steps_exposure_layers_0006.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04966.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.81186 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

cafeteria_steps_exposure_layers_0007.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC04967.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.00465 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

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

$(LDR_BLENDED) : $(LDR_LAYERS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_BLENDED_SHELL) -- $(LDR_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYER_0) : $(LDR_EXPOSURE_LAYER_0_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_0_SHELL) -- $(LDR_EXPOSURE_LAYER_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_0_SHELL)

$(LDR_EXPOSURE_LAYER_1) : $(LDR_EXPOSURE_LAYER_1_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_1_SHELL) -- $(LDR_EXPOSURE_LAYER_1_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_1_SHELL)

$(LDR_EXPOSURE_LAYER_2) : $(LDR_EXPOSURE_LAYER_2_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_2_SHELL) -- $(LDR_EXPOSURE_LAYER_2_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_2_SHELL)

$(LDR_EXPOSURE_LAYER_3) : $(LDR_EXPOSURE_LAYER_3_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_3_SHELL) -- $(LDR_EXPOSURE_LAYER_3_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_3_SHELL)

$(LDR_EXPOSURE_LAYER_4) : $(LDR_EXPOSURE_LAYER_4_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_4_SHELL) -- $(LDR_EXPOSURE_LAYER_4_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_4_SHELL)

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
