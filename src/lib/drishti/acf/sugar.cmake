# This file generated automatically by:
#   generate_sugar_files.py
# see wiki for more info:
#   https://github.com/ruslo/sugar/wiki/Collecting-sources

if(DEFINED LIB_ACF_ACF_SUGAR_CMAKE_)
  return()
else()
  set(LIB_ACF_ACF_SUGAR_CMAKE_ 1)
endif()

include(sugar_files)

sugar_files(DRISHTI_ACF_SRCS
  ACF.cpp
  ACFIO.cpp # optional
  MatP.cpp
  acfModify.cpp
  bbNms.cpp
  chnsCompute.cpp
  chnsPyramid.cpp
  convTri.cpp
  gradientHist.cpp
  gradientMag.cpp
  rgbConvert.cpp
  #######################
  ### Toolbox sources ###
  #######################  
  toolbox/acfDetect1.cpp
  toolbox/convConst.cpp
  toolbox/gradientMex.cpp
  toolbox/imPadMex.cpp
  toolbox/imResampleMex.cpp
  toolbox/rgbConvertMex.cpp
  toolbox/wrappers.cpp
  )

if(DRISHTI_SERIALIZE_WITH_BOOST)
  sugar_files(DRISHTI_ACF_SRCS ACFIOArchiveBoost.cpp)
endif()

if(DRISHTI_SERIALIZE_WITH_CEREAL)
  sugar_files(DRISHTI_ACF_SRCS ACFIOArchiveCereal.cpp)
endif()

sugar_files(DRISHTI_ACF_HDRS_PUBLIC
  ACF.h
  ACFField.h
  ACFIO.h
  ACFIOArchive.h
  ACFObject.h
  MatP.h
  drishti_acf.h
  #######################
  ### Toolbox headers ###
  #######################  
  toolbox/sse.hpp
  toolbox/sse2neon.h
  toolbox/wrappers.hpp
  )

if(DRISHTI_BUILD_OGLES_GPGPU)
  sugar_files(DRISHTI_ACF_HDRS_PUBLIC  
    GPUACF.h
    gpu/binomial.h
    gpu/gradhist.h
    gpu/rgb2luv.h
    gpu/swizzle.h
    gpu/swizzle2.h
    gpu/gain.h
    gpu/triangle.h
    gpu/multipass/triangle_pass.h
    )
  sugar_files(DRISHTI_ACF_SRCS
    GPUACF.cpp
    gpu/binomial.cpp
    gpu/gradhist.cpp
    gpu/rgb2luv.cpp
    gpu/swizzle.cpp
    gpu/swizzle2.cpp
    gpu/gain.cpp
    gpu/triangle.cpp
    gpu/multipass/triangle_pass.cpp
    )
endif()

