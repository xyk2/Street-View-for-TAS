
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
HUGIN_PROJECTION=2
HUGIN_HFOV=360
HUGIN_WIDTH=3000
HUGIN_HEIGHT=1500

# options for the programs
NONA_LDR_REMAPPED_COMP=-z LZW 
NONA_OPTS=
ENBLEND_OPTS= -w -f3000x1500
ENBLEND_LDR_COMP=--compression=90
ENBLEND_EXPOSURE_COMP=--compression=LZW 
ENBLEND_HDR_COMP=
HDRMERGE_OPTS=-m avg -c
ENFUSE_OPTS= -w
EXIFTOOL_COPY_ARGS=-ImageDescription -Make -Model -Artist -WhitePoint -Copyright -GPS:all -DateTimeOriginal -CreateDate -UserComment -ColorSpace -OwnerName -SerialNumber
EXIFTOOL_INFO_ARGS="-Software=Hugin 2011.4.0.cf9be9344356 built by Matthew Petroff" "-UserComment<$${UserComment}&\#xd;&\#xa;Projection: Equirectangular (2)&\#xd;&\#xa;FOV: 360 x 180&\#xd;&\#xa;Ev: 7.84" -f

# the output panorama
LDR_REMAPPED_PREFIX=kindergarden
LDR_REMAPPED_PREFIX_SHELL="kindergarden"
HDR_STACK_REMAPPED_PREFIX=kindergarden_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL="kindergarden_hdr_"
LDR_EXPOSURE_REMAPPED_PREFIX=kindergarden_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL="kindergarden_exposure_layers_"
PROJECT_FILE=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/kindergarden.pto
PROJECT_FILE_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/kindergarden.pto"
LDR_BLENDED=kindergarden.jpg
LDR_BLENDED_SHELL="kindergarden.jpg"
LDR_STACKED_BLENDED=kindergarden_fused.jpg
LDR_STACKED_BLENDED_SHELL="kindergarden_fused.jpg"
LDR_EXPOSURE_LAYERS_FUSED=kindergarden_blended_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED_SHELL="kindergarden_blended_fused.jpg"
HDR_BLENDED=kindergarden_hdr.exr
HDR_BLENDED_SHELL="kindergarden_hdr.exr"

# first input image
INPUT_IMAGE_1=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05026.JPG
INPUT_IMAGE_1_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05026.JPG"

# all input images
INPUT_IMAGES=D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05026.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05027.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05028.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05029.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05030.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05031.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05032.JPG\
D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05033.JPG
INPUT_IMAGES_SHELL="D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05026.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05027.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05028.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05029.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05030.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05031.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05032.JPG"\
"D:/Dropbox/Student Data/3D Art/Street View/Panorama/DSC05033.JPG"

# remapped images
LDR_LAYERS=kindergarden0000.tif\
kindergarden0001.tif\
kindergarden0002.tif\
kindergarden0003.tif\
kindergarden0004.tif\
kindergarden0005.tif\
kindergarden0006.tif\
kindergarden0007.tif
LDR_LAYERS_SHELL="kindergarden0000.tif"\
"kindergarden0001.tif"\
"kindergarden0002.tif"\
"kindergarden0003.tif"\
"kindergarden0004.tif"\
"kindergarden0005.tif"\
"kindergarden0006.tif"\
"kindergarden0007.tif"

# remapped images (hdr)
HDR_LAYERS=kindergarden_hdr_0000.exr\
kindergarden_hdr_0001.exr\
kindergarden_hdr_0002.exr\
kindergarden_hdr_0003.exr\
kindergarden_hdr_0004.exr\
kindergarden_hdr_0005.exr\
kindergarden_hdr_0006.exr\
kindergarden_hdr_0007.exr
HDR_LAYERS_SHELL="kindergarden_hdr_0000.exr"\
"kindergarden_hdr_0001.exr"\
"kindergarden_hdr_0002.exr"\
"kindergarden_hdr_0003.exr"\
"kindergarden_hdr_0004.exr"\
"kindergarden_hdr_0005.exr"\
"kindergarden_hdr_0006.exr"\
"kindergarden_hdr_0007.exr"

# remapped maxval images
HDR_LAYERS_WEIGHTS=kindergarden_hdr_0000_gray.pgm\
kindergarden_hdr_0001_gray.pgm\
kindergarden_hdr_0002_gray.pgm\
kindergarden_hdr_0003_gray.pgm\
kindergarden_hdr_0004_gray.pgm\
kindergarden_hdr_0005_gray.pgm\
kindergarden_hdr_0006_gray.pgm\
kindergarden_hdr_0007_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL="kindergarden_hdr_0000_gray.pgm"\
"kindergarden_hdr_0001_gray.pgm"\
"kindergarden_hdr_0002_gray.pgm"\
"kindergarden_hdr_0003_gray.pgm"\
"kindergarden_hdr_0004_gray.pgm"\
"kindergarden_hdr_0005_gray.pgm"\
"kindergarden_hdr_0006_gray.pgm"\
"kindergarden_hdr_0007_gray.pgm"

# stacked hdr images
HDR_STACK_0=kindergarden_stack_hdr_0000.exr
HDR_STACK_0_SHELL="kindergarden_stack_hdr_0000.exr"
HDR_STACK_0_INPUT=kindergarden_hdr_0000.exr\
kindergarden_hdr_0001.exr\
kindergarden_hdr_0002.exr\
kindergarden_hdr_0003.exr\
kindergarden_hdr_0004.exr\
kindergarden_hdr_0005.exr\
kindergarden_hdr_0006.exr\
kindergarden_hdr_0007.exr
HDR_STACK_0_INPUT_SHELL="kindergarden_hdr_0000.exr"\
"kindergarden_hdr_0001.exr"\
"kindergarden_hdr_0002.exr"\
"kindergarden_hdr_0003.exr"\
"kindergarden_hdr_0004.exr"\
"kindergarden_hdr_0005.exr"\
"kindergarden_hdr_0006.exr"\
"kindergarden_hdr_0007.exr"
HDR_STACKS_NUMBERS=0 
HDR_STACKS=$(HDR_STACK_0) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=kindergarden_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL="kindergarden_exposure_0000.tif"
LDR_EXPOSURE_LAYER_0_INPUT=kindergarden_exposure_layers_0000.tif\
kindergarden_exposure_layers_0002.tif\
kindergarden_exposure_layers_0003.tif\
kindergarden_exposure_layers_0004.tif\
kindergarden_exposure_layers_0005.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL="kindergarden_exposure_layers_0000.tif"\
"kindergarden_exposure_layers_0002.tif"\
"kindergarden_exposure_layers_0003.tif"\
"kindergarden_exposure_layers_0004.tif"\
"kindergarden_exposure_layers_0005.tif"
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=kindergarden0000.tif\
kindergarden0002.tif\
kindergarden0003.tif\
kindergarden0004.tif\
kindergarden0005.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL="kindergarden0000.tif"\
"kindergarden0002.tif"\
"kindergarden0003.tif"\
"kindergarden0004.tif"\
"kindergarden0005.tif"
LDR_EXPOSURE_LAYER_0_EXPOSURE=7.77914
LDR_EXPOSURE_LAYER_1=kindergarden_exposure_0001.tif
LDR_EXPOSURE_LAYER_1_SHELL="kindergarden_exposure_0001.tif"
LDR_EXPOSURE_LAYER_1_INPUT=kindergarden_exposure_layers_0001.tif\
kindergarden_exposure_layers_0006.tif\
kindergarden_exposure_layers_0007.tif
LDR_EXPOSURE_LAYER_1_INPUT_SHELL="kindergarden_exposure_layers_0001.tif"\
"kindergarden_exposure_layers_0006.tif"\
"kindergarden_exposure_layers_0007.tif"
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER=kindergarden0001.tif\
kindergarden0006.tif\
kindergarden0007.tif
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER_SHELL="kindergarden0001.tif"\
"kindergarden0006.tif"\
"kindergarden0007.tif"
LDR_EXPOSURE_LAYER_1_EXPOSURE=8.5216
LDR_EXPOSURE_LAYERS_NUMBERS=0 1 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) $(LDR_EXPOSURE_LAYER_1) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) $(LDR_EXPOSURE_LAYER_1_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=kindergarden_exposure_layers_0000.tif\
kindergarden_exposure_layers_0002.tif\
kindergarden_exposure_layers_0003.tif\
kindergarden_exposure_layers_0004.tif\
kindergarden_exposure_layers_0005.tif\
kindergarden_exposure_layers_0001.tif\
kindergarden_exposure_layers_0006.tif\
kindergarden_exposure_layers_0007.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL="kindergarden_exposure_layers_0000.tif"\
"kindergarden_exposure_layers_0002.tif"\
"kindergarden_exposure_layers_0003.tif"\
"kindergarden_exposure_layers_0004.tif"\
"kindergarden_exposure_layers_0005.tif"\
"kindergarden_exposure_layers_0001.tif"\
"kindergarden_exposure_layers_0006.tif"\
"kindergarden_exposure_layers_0007.tif"

# stacked ldr images
LDR_STACK_0=kindergarden_stack_ldr_0000.tif
LDR_STACK_0_SHELL="kindergarden_stack_ldr_0000.tif"
LDR_STACK_0_INPUT=kindergarden_exposure_layers_0000.tif\
kindergarden_exposure_layers_0001.tif\
kindergarden_exposure_layers_0002.tif\
kindergarden_exposure_layers_0003.tif\
kindergarden_exposure_layers_0004.tif\
kindergarden_exposure_layers_0005.tif\
kindergarden_exposure_layers_0006.tif\
kindergarden_exposure_layers_0007.tif
LDR_STACK_0_INPUT_SHELL="kindergarden_exposure_layers_0000.tif"\
"kindergarden_exposure_layers_0001.tif"\
"kindergarden_exposure_layers_0002.tif"\
"kindergarden_exposure_layers_0003.tif"\
"kindergarden_exposure_layers_0004.tif"\
"kindergarden_exposure_layers_0005.tif"\
"kindergarden_exposure_layers_0006.tif"\
"kindergarden_exposure_layers_0007.tif"
LDR_STACKS_NUMBERS=0 
LDR_STACKS=$(LDR_STACK_0) 
LDR_STACKS_SHELL=$(LDR_STACK_0_SHELL) 
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
	@echo Physical memory: 1990684 kiB (57%% occupied)
	@echo Free space on disc: 12222 MiB
	@echo Active codepage: 1252 (Western European Windows)
	@echo ===========================================================================
	@echo Output options
	@echo ===========================================================================
	@echo Hugin Version: 2011.4.0.cf9be9344356 built by Matthew Petroff
	@echo Project file: D:\Dropbox\Student Data\3D Art\Street View\Panorama\kindergarden.pto
	@echo Output prefix: kindergarden
	@echo Projection: Equirectangular (2)
	@echo Field of view: 360 x 180
	@echo Canvas dimensions: 3000 x 1500
	@echo Crop area: (0,0) - (3000,1500)
	@echo Output exposure value: 7.84
	@echo Selected outputs
	@echo Normal panorama
	@echo * Blended panorama
	@echo ===========================================================================
	@echo Input images
	@echo ===========================================================================
	@echo Number of images in project file: 8
	@echo Number of active images: 8
	@echo Image 0: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05026.JPG
	@echo Image 0: Size 6000x4000, Exposure: 7.84
	@echo Image 1: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05027.JPG
	@echo Image 1: Size 6000x4000, Exposure: 8.52
	@echo Image 2: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05028.JPG
	@echo Image 2: Size 6000x4000, Exposure: 7.84
	@echo Image 3: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05029.JPG
	@echo Image 3: Size 6000x4000, Exposure: 7.52
	@echo Image 4: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05030.JPG
	@echo Image 4: Size 6000x4000, Exposure: 7.84
	@echo Image 5: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05031.JPG
	@echo Image 5: Size 6000x4000, Exposure: 7.84
	@echo Image 6: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05032.JPG
	@echo Image 6: Size 6000x4000, Exposure: 8.52
	@echo Image 7: D:\Dropbox\Student Data\3D Art\Street View\Panorama\DSC05033.JPG
	@echo Image 7: Size 6000x4000, Exposure: 8.52

# Rules for ordinary TIFF_m and hdr output

kindergarden0000.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05026.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

kindergarden_hdr_0000.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05026.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

kindergarden0001.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05027.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

kindergarden_hdr_0001.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05027.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

kindergarden0002.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05028.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

kindergarden_hdr_0002.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05028.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

kindergarden0003.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05029.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

kindergarden_hdr_0003.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05029.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

kindergarden0004.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05030.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

kindergarden_hdr_0004.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05030.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

kindergarden0005.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05031.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

kindergarden_hdr_0005.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05031.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

kindergarden0006.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05032.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

kindergarden_hdr_0006.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05032.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

kindergarden0007.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05033.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

kindergarden_hdr_0007.exr : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05033.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

kindergarden_exposure_layers_0000.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05026.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.84353 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

kindergarden_exposure_layers_0002.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05028.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.84353 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

kindergarden_exposure_layers_0003.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05029.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.5216 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

kindergarden_exposure_layers_0004.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05030.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.84353 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

kindergarden_exposure_layers_0005.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05031.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.84353 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

kindergarden_exposure_layers_0001.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05027.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.5216 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

kindergarden_exposure_layers_0006.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05032.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.5216 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

kindergarden_exposure_layers_0007.tif : D:/Dropbox/Student\ Data/3D\ Art/Street\ View/Panorama/DSC05033.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.5216 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

# Rules for LDR and HDR stack merging, a rule for each stack

$(LDR_STACK_0) : $(LDR_STACK_0_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_0_SHELL) -- $(LDR_STACK_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_0_SHELL)

$(HDR_STACK_0) : $(HDR_STACK_0_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_0_SHELL) -- $(HDR_STACK_0_INPUT_SHELL)

$(LDR_BLENDED) : $(LDR_LAYERS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_BLENDED_SHELL) -- $(LDR_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYER_0) : $(LDR_EXPOSURE_LAYER_0_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_0_SHELL) -- $(LDR_EXPOSURE_LAYER_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_0_SHELL)

$(LDR_EXPOSURE_LAYER_1) : $(LDR_EXPOSURE_LAYER_1_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_1_SHELL) -- $(LDR_EXPOSURE_LAYER_1_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_1_SHELL)

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
