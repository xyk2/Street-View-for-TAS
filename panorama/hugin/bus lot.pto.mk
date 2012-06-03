
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
HUGIN_WIDTH=20775
HUGIN_HEIGHT=4630

# options for the programs
NONA_LDR_REMAPPED_COMP=-z LZW 
NONA_OPTS=
ENBLEND_OPTS= -w -f20775x2381+0+531
ENBLEND_LDR_COMP=--compression=90
ENBLEND_EXPOSURE_COMP=--compression=LZW 
ENBLEND_HDR_COMP=
HDRMERGE_OPTS=-m avg -c
ENFUSE_OPTS= -w
EXIFTOOL_COPY_ARGS=-ImageDescription -Make -Model -Artist -WhitePoint -Copyright -GPS:all -DateTimeOriginal -CreateDate -UserComment -ColorSpace -OwnerName -SerialNumber
EXIFTOOL_INFO_ARGS="-Software=Hugin 2011.4.0.cf9be9344356 built by Matthew Petroff" "-UserComment<$${UserComment}&\#xd;&\#xa;Projection: Cylindrical (1)&\#xd;&\#xa;FOV: 360 x 70&\#xd;&\#xa;Ev: 14.61" -f

# the output panorama
LDR_REMAPPED_PREFIX=bus\ lost
LDR_REMAPPED_PREFIX_SHELL="bus lost"
HDR_STACK_REMAPPED_PREFIX=bus\ lost_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL="bus lost_hdr_"
LDR_EXPOSURE_REMAPPED_PREFIX=bus\ lost_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL="bus lost_exposure_layers_"
PROJECT_FILE=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/bus\ lost.pto
PROJECT_FILE_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/bus lost.pto"
LDR_BLENDED=bus\ lost.jpg
LDR_BLENDED_SHELL="bus lost.jpg"
LDR_STACKED_BLENDED=bus\ lost_fused.jpg
LDR_STACKED_BLENDED_SHELL="bus lost_fused.jpg"
LDR_EXPOSURE_LAYERS_FUSED=bus\ lost_blended_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED_SHELL="bus lost_blended_fused.jpg"
HDR_BLENDED=bus\ lost_hdr.exr
HDR_BLENDED_SHELL="bus lost_hdr.exr"

# first input image
INPUT_IMAGE_1=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05034.JPG
INPUT_IMAGE_1_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05034.JPG"

# all input images
INPUT_IMAGES=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05034.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05035.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05036.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05037.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05038.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05039.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05040.JPG
INPUT_IMAGES_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05034.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05035.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05036.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05037.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05038.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05039.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05040.JPG"

# remapped images
LDR_LAYERS=bus\ lost0000.tif\
bus\ lost0001.tif\
bus\ lost0002.tif\
bus\ lost0003.tif\
bus\ lost0004.tif\
bus\ lost0005.tif\
bus\ lost0006.tif
LDR_LAYERS_SHELL="bus lost0000.tif"\
"bus lost0001.tif"\
"bus lost0002.tif"\
"bus lost0003.tif"\
"bus lost0004.tif"\
"bus lost0005.tif"\
"bus lost0006.tif"

# remapped images (hdr)
HDR_LAYERS=bus\ lost_hdr_0000.exr\
bus\ lost_hdr_0001.exr\
bus\ lost_hdr_0002.exr\
bus\ lost_hdr_0003.exr\
bus\ lost_hdr_0004.exr\
bus\ lost_hdr_0005.exr\
bus\ lost_hdr_0006.exr
HDR_LAYERS_SHELL="bus lost_hdr_0000.exr"\
"bus lost_hdr_0001.exr"\
"bus lost_hdr_0002.exr"\
"bus lost_hdr_0003.exr"\
"bus lost_hdr_0004.exr"\
"bus lost_hdr_0005.exr"\
"bus lost_hdr_0006.exr"

# remapped maxval images
HDR_LAYERS_WEIGHTS=bus\ lost_hdr_0000_gray.pgm\
bus\ lost_hdr_0001_gray.pgm\
bus\ lost_hdr_0002_gray.pgm\
bus\ lost_hdr_0003_gray.pgm\
bus\ lost_hdr_0004_gray.pgm\
bus\ lost_hdr_0005_gray.pgm\
bus\ lost_hdr_0006_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL="bus lost_hdr_0000_gray.pgm"\
"bus lost_hdr_0001_gray.pgm"\
"bus lost_hdr_0002_gray.pgm"\
"bus lost_hdr_0003_gray.pgm"\
"bus lost_hdr_0004_gray.pgm"\
"bus lost_hdr_0005_gray.pgm"\
"bus lost_hdr_0006_gray.pgm"

# stacked hdr images
HDR_STACK_0=bus\ lost_stack_hdr_0000.exr
HDR_STACK_0_SHELL="bus lost_stack_hdr_0000.exr"
HDR_STACK_0_INPUT=bus\ lost_hdr_0000.exr
HDR_STACK_0_INPUT_SHELL="bus lost_hdr_0000.exr"
HDR_STACK_1=bus\ lost_stack_hdr_0001.exr
HDR_STACK_1_SHELL="bus lost_stack_hdr_0001.exr"
HDR_STACK_1_INPUT=bus\ lost_hdr_0001.exr
HDR_STACK_1_INPUT_SHELL="bus lost_hdr_0001.exr"
HDR_STACK_2=bus\ lost_stack_hdr_0002.exr
HDR_STACK_2_SHELL="bus lost_stack_hdr_0002.exr"
HDR_STACK_2_INPUT=bus\ lost_hdr_0002.exr
HDR_STACK_2_INPUT_SHELL="bus lost_hdr_0002.exr"
HDR_STACK_3=bus\ lost_stack_hdr_0003.exr
HDR_STACK_3_SHELL="bus lost_stack_hdr_0003.exr"
HDR_STACK_3_INPUT=bus\ lost_hdr_0003.exr
HDR_STACK_3_INPUT_SHELL="bus lost_hdr_0003.exr"
HDR_STACK_4=bus\ lost_stack_hdr_0004.exr
HDR_STACK_4_SHELL="bus lost_stack_hdr_0004.exr"
HDR_STACK_4_INPUT=bus\ lost_hdr_0004.exr
HDR_STACK_4_INPUT_SHELL="bus lost_hdr_0004.exr"
HDR_STACK_5=bus\ lost_stack_hdr_0005.exr
HDR_STACK_5_SHELL="bus lost_stack_hdr_0005.exr"
HDR_STACK_5_INPUT=bus\ lost_hdr_0005.exr
HDR_STACK_5_INPUT_SHELL="bus lost_hdr_0005.exr"
HDR_STACK_6=bus\ lost_stack_hdr_0006.exr
HDR_STACK_6_SHELL="bus lost_stack_hdr_0006.exr"
HDR_STACK_6_INPUT=bus\ lost_hdr_0006.exr
HDR_STACK_6_INPUT_SHELL="bus lost_hdr_0006.exr"
HDR_STACKS_NUMBERS=0 1 2 3 4 5 6 
HDR_STACKS=$(HDR_STACK_0) $(HDR_STACK_1) $(HDR_STACK_2) $(HDR_STACK_3) $(HDR_STACK_4) $(HDR_STACK_5) $(HDR_STACK_6) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) $(HDR_STACK_1_SHELL) $(HDR_STACK_2_SHELL) $(HDR_STACK_3_SHELL) $(HDR_STACK_4_SHELL) $(HDR_STACK_5_SHELL) $(HDR_STACK_6_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=bus\ lost_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL="bus lost_exposure_0000.tif"
LDR_EXPOSURE_LAYER_0_INPUT=bus\ lost_exposure_layers_0000.tif\
bus\ lost_exposure_layers_0001.tif\
bus\ lost_exposure_layers_0002.tif\
bus\ lost_exposure_layers_0003.tif\
bus\ lost_exposure_layers_0004.tif\
bus\ lost_exposure_layers_0005.tif\
bus\ lost_exposure_layers_0006.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL="bus lost_exposure_layers_0000.tif"\
"bus lost_exposure_layers_0001.tif"\
"bus lost_exposure_layers_0002.tif"\
"bus lost_exposure_layers_0003.tif"\
"bus lost_exposure_layers_0004.tif"\
"bus lost_exposure_layers_0005.tif"\
"bus lost_exposure_layers_0006.tif"
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=bus\ lost0000.tif\
bus\ lost0001.tif\
bus\ lost0002.tif\
bus\ lost0003.tif\
bus\ lost0004.tif\
bus\ lost0005.tif\
bus\ lost0006.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL="bus lost0000.tif"\
"bus lost0001.tif"\
"bus lost0002.tif"\
"bus lost0003.tif"\
"bus lost0004.tif"\
"bus lost0005.tif"\
"bus lost0006.tif"
LDR_EXPOSURE_LAYER_0_EXPOSURE=14.6117
LDR_EXPOSURE_LAYERS_NUMBERS=0 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=bus\ lost_exposure_layers_0000.tif\
bus\ lost_exposure_layers_0001.tif\
bus\ lost_exposure_layers_0002.tif\
bus\ lost_exposure_layers_0003.tif\
bus\ lost_exposure_layers_0004.tif\
bus\ lost_exposure_layers_0005.tif\
bus\ lost_exposure_layers_0006.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL="bus lost_exposure_layers_0000.tif"\
"bus lost_exposure_layers_0001.tif"\
"bus lost_exposure_layers_0002.tif"\
"bus lost_exposure_layers_0003.tif"\
"bus lost_exposure_layers_0004.tif"\
"bus lost_exposure_layers_0005.tif"\
"bus lost_exposure_layers_0006.tif"

# stacked ldr images
LDR_STACK_0=bus\ lost_stack_ldr_0000.tif
LDR_STACK_0_SHELL="bus lost_stack_ldr_0000.tif"
LDR_STACK_0_INPUT=bus\ lost_exposure_layers_0000.tif
LDR_STACK_0_INPUT_SHELL="bus lost_exposure_layers_0000.tif"
LDR_STACK_1=bus\ lost_stack_ldr_0001.tif
LDR_STACK_1_SHELL="bus lost_stack_ldr_0001.tif"
LDR_STACK_1_INPUT=bus\ lost_exposure_layers_0001.tif
LDR_STACK_1_INPUT_SHELL="bus lost_exposure_layers_0001.tif"
LDR_STACK_2=bus\ lost_stack_ldr_0002.tif
LDR_STACK_2_SHELL="bus lost_stack_ldr_0002.tif"
LDR_STACK_2_INPUT=bus\ lost_exposure_layers_0002.tif
LDR_STACK_2_INPUT_SHELL="bus lost_exposure_layers_0002.tif"
LDR_STACK_3=bus\ lost_stack_ldr_0003.tif
LDR_STACK_3_SHELL="bus lost_stack_ldr_0003.tif"
LDR_STACK_3_INPUT=bus\ lost_exposure_layers_0003.tif
LDR_STACK_3_INPUT_SHELL="bus lost_exposure_layers_0003.tif"
LDR_STACK_4=bus\ lost_stack_ldr_0004.tif
LDR_STACK_4_SHELL="bus lost_stack_ldr_0004.tif"
LDR_STACK_4_INPUT=bus\ lost_exposure_layers_0004.tif
LDR_STACK_4_INPUT_SHELL="bus lost_exposure_layers_0004.tif"
LDR_STACK_5=bus\ lost_stack_ldr_0005.tif
LDR_STACK_5_SHELL="bus lost_stack_ldr_0005.tif"
LDR_STACK_5_INPUT=bus\ lost_exposure_layers_0005.tif
LDR_STACK_5_INPUT_SHELL="bus lost_exposure_layers_0005.tif"
LDR_STACK_6=bus\ lost_stack_ldr_0006.tif
LDR_STACK_6_SHELL="bus lost_stack_ldr_0006.tif"
LDR_STACK_6_INPUT=bus\ lost_exposure_layers_0006.tif
LDR_STACK_6_INPUT_SHELL="bus lost_exposure_layers_0006.tif"
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
	@echo Physical memory: 1990684 kiB (65%% occupied)
	@echo Free space on disc: 10842 MiB
	@echo Active codepage: 1252 (Western European Windows)
	@echo ===========================================================================
	@echo Output options
	@echo ===========================================================================
	@echo Hugin Version: 2011.4.0.cf9be9344356 built by Matthew Petroff
	@echo Project file: D:\Dropbox\Student Data\3D Art\Street View\Panorama\bus lost.pto
	@echo Output prefix: bus lost
	@echo Projection: Cylindrical (1)
	@echo Field of view: 360 x 70
	@echo Canvas dimensions: 20775 x 4630
	@echo Crop area: (0,531) - (20775,2912)
	@echo Output exposure value: 14.61
	@echo Selected outputs
	@echo Normal panorama
	@echo * Blended panorama
	@echo ===========================================================================
	@echo Input images
	@echo ===========================================================================
	@echo Number of images in project file: 7
	@echo Number of active images: 7
	@echo Image 0: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05034.JPG
	@echo Image 0: Size 6000x4000, Exposure: 14.58
	@echo Image 1: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05035.JPG
	@echo Image 1: Size 6000x4000, Exposure: 14.42
	@echo Image 2: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05036.JPG
	@echo Image 2: Size 6000x4000, Exposure: 14.38
	@echo Image 3: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05037.JPG
	@echo Image 3: Size 6000x4000, Exposure: 15.07
	@echo Image 4: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05038.JPG
	@echo Image 4: Size 6000x4000, Exposure: 14.39
	@echo Image 5: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05039.JPG
	@echo Image 5: Size 6000x4000, Exposure: 14.56
	@echo Image 6: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05040.JPG
	@echo Image 6: Size 6000x4000, Exposure: 14.88

# Rules for ordinary TIFF_m and hdr output

bus\ lost0000.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05034.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

bus\ lost_hdr_0000.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05034.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

bus\ lost0001.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05035.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

bus\ lost_hdr_0001.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05035.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

bus\ lost0002.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05036.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

bus\ lost_hdr_0002.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05036.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

bus\ lost0003.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05037.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

bus\ lost_hdr_0003.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05037.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

bus\ lost0004.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05038.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

bus\ lost_hdr_0004.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05038.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

bus\ lost0005.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05039.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

bus\ lost_hdr_0005.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05039.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

bus\ lost0006.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05040.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

bus\ lost_hdr_0006.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05040.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

bus\ lost_exposure_layers_0000.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05034.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 14.5805 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

bus\ lost_exposure_layers_0001.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05035.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 14.4245 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

bus\ lost_exposure_layers_0002.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05036.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 14.3791 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

bus\ lost_exposure_layers_0003.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05037.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 15.0657 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

bus\ lost_exposure_layers_0004.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05038.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 14.3947 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

bus\ lost_exposure_layers_0005.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05039.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 14.5603 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

bus\ lost_exposure_layers_0006.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05040.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 14.8771 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

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
