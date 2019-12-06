
# Kenneth Moreland suggested diverging palettes (e.g., transient blue ->
# white -> red) in 'Diverging Color Maps for Scientific Visualization'
# (2009).  Illustrated details are provided on.[1]  Different to the ones
# (still) 'typically used' the color definitions in these are less bright.
#
# Bastian Rieck provided a map of 256 levels including the line styles
# below which is used as a reference here.[2]  He correctly speculated
# gnuplot's dying maps depends on the number of the levels explicitly
# defined in the .plt.  This change was recognized with synthetic data,
# the Bessel function of
#
# f(x,y) = x^2 + y^2
#
# plot as 2D map with different palette definitions.  The .png eventually
# were compared with Imagemagick's compare routine.
#
# Note that for blue -> white -> red diverging maps, Moreland suggests two
# types of palettes:
#
# + type 'Smooth Cool Warm'.  This is 'a map with a smooth transition in
#   the middle to prevent artifacts at the midpoint'. (loc. cit.)
# + type 'Bent Cool Warm'.  Here, 'the luminance is interpolated linearly
#   with a sharp bend in the middle. This makes for less washed out colors
#   in the middle, but also creates an artifact at the midpoint.'
#
# On occasion the RGB might exceed the range of [0,1]; these files are
# identified with RGB_check.py.  Rounding to just two decimals will allow
# more .plt to pass the check by RGB_check.py, yet on expense of quality
# (see the 'RGB decomposition', by gnuplot's /test palette/ instruction.)
#
# To work with the .plt in gnuplot, either copy the definitions into the
# gnuplot script, or access their information with a
#
# load example.plt
#
# instruction prior to the [s]plot command.
#
# [1] http://www.kennethmoreland.com/color-advice/
# [2] http://bastian.rieck.ru/blog/posts/2012/gnuplot_better_colour_palettes/


# line styles
set style line 1 lt 1 lc rgb '#3b4cc0' #
set style line 2 lt 1 lc rgb '#688aef' #
set style line 3 lt 1 lc rgb '#99baff' #
set style line 4 lt 1 lc rgb '#c9d8ef' #
set style line 5 lt 1 lc rgb '#edd1c2' #
set style line 6 lt 1 lc rgb '#f7a789' #
set style line 7 lt 1 lc rgb '#e36a53' #
set style line 8 lt 1 lc rgb '#b40426' #

# palette
set palette defined (\
  0.00000 0.18500 0.00000 0.53007 ,\
  0.00196 0.18806 0.00000 0.53265 ,\
  0.00391 0.19111 0.00000 0.53523 ,\
  0.00587 0.19411 0.00000 0.53768 ,\
  0.00783 0.19711 0.00000 0.54013 ,\
  0.00978 0.20006 0.00000 0.54246 ,\
  0.01174 0.20301 0.00000 0.54479 ,\
  0.01370 0.20592 0.00000 0.54702 ,\
  0.01566 0.20883 0.00000 0.54925 ,\
  0.01761 0.21171 0.00000 0.55139 ,\
  0.01957 0.21457 0.00000 0.55353 ,\
  0.02153 0.21742 0.00000 0.55558 ,\
  0.02348 0.22025 0.00000 0.55764 ,\
  0.02544 0.22307 0.00000 0.55962 ,\
  0.02740 0.22588 0.00000 0.56161 ,\
  0.02935 0.22868 0.00000 0.56353 ,\
  0.03131 0.23146 0.00000 0.56544 ,\
  0.03327 0.23424 0.00000 0.56731 ,\
  0.03523 0.23701 0.00000 0.56917 ,\
  0.03718 0.23977 0.00000 0.57097 ,\
  0.03914 0.24252 0.00000 0.57278 ,\
  0.04110 0.24527 0.00000 0.57454 ,\
  0.04305 0.24801 0.00000 0.57629 ,\
  0.04501 0.25074 0.00000 0.57801 ,\
  0.04697 0.25347 0.00000 0.57972 ,\
  0.04892 0.25619 0.00000 0.58139 ,\
  0.05088 0.25891 0.00000 0.58306 ,\
  0.05284 0.26162 0.00000 0.58469 ,\
  0.05479 0.26433 0.00000 0.58632 ,\
  0.05675 0.26704 0.00000 0.58791 ,\
  0.05871 0.26974 0.00000 0.58950 ,\
  0.06067 0.27244 0.00000 0.59106 ,\
  0.06262 0.27514 0.00000 0.59261 ,\
  0.06458 0.27783 0.00000 0.59414 ,\
  0.06654 0.28052 0.00000 0.59566 ,\
  0.06849 0.28321 0.00000 0.59715 ,\
  0.07045 0.28590 0.00000 0.59864 ,\
  0.07241 0.28858 0.00000 0.60010 ,\
  0.07436 0.29126 0.00000 0.60156 ,\
  0.07632 0.29395 0.00000 0.60298 ,\
  0.07828 0.29663 0.00000 0.60441 ,\
  0.08023 0.29931 0.00000 0.60581 ,\
  0.08219 0.30198 0.00000 0.60721 ,\
  0.08415 0.30466 0.00000 0.60858 ,\
  0.08611 0.30733 0.00000 0.60994 ,\
  0.08806 0.31001 0.00000 0.61128 ,\
  0.09002 0.31268 0.00000 0.61262 ,\
  0.09198 0.31535 0.00000 0.61393 ,\
  0.09393 0.31802 0.00000 0.61524 ,\
  0.09589 0.32069 0.00000 0.61652 ,\
  0.09785 0.32336 0.00000 0.61780 ,\
  0.09980 0.32603 0.00000 0.61906 ,\
  0.10176 0.32870 0.00000 0.62031 ,\
  0.10372 0.33137 0.00000 0.62153 ,\
  0.10568 0.33404 0.00000 0.62275 ,\
  0.10763 0.33671 0.00000 0.62395 ,\
  0.10959 0.33937 0.00000 0.62514 ,\
  0.11155 0.34204 0.00000 0.62631 ,\
  0.11350 0.34471 0.00000 0.62747 ,\
  0.11546 0.34737 0.00000 0.62860 ,\
  0.11742 0.35004 0.00000 0.62974 ,\
  0.11937 0.35270 0.00000 0.63084 ,\
  0.12133 0.35536 0.00000 0.63194 ,\
  0.12329 0.35803 0.00000 0.63302 ,\
  0.12524 0.36069 0.00000 0.63409 ,\
  0.12720 0.36336 0.00000 0.63513 ,\
  0.12916 0.36602 0.00000 0.63617 ,\
  0.13112 0.36868 0.00000 0.63718 ,\
  0.13307 0.37134 0.00000 0.63819 ,\
  0.13503 0.37400 0.00000 0.63917 ,\
  0.13699 0.37666 0.00000 0.64014 ,\
  0.13894 0.37932 0.00000 0.64109 ,\
  0.14090 0.38198 0.00000 0.64203 ,\
  0.14286 0.38464 0.00000 0.64294 ,\
  0.14481 0.38730 0.00000 0.64385 ,\
  0.14677 0.38996 0.00000 0.64472 ,\
  0.14873 0.39261 0.00000 0.64559 ,\
  0.15068 0.39527 0.00000 0.64643 ,\
  0.15264 0.39792 0.00000 0.64727 ,\
  0.15460 0.40058 0.00000 0.64807 ,\
  0.15656 0.40323 0.00000 0.64887 ,\
  0.15851 0.40588 0.00000 0.64964 ,\
  0.16047 0.40853 0.00000 0.65040 ,\
  0.16243 0.41118 0.00000 0.65112 ,\
  0.16438 0.41382 0.00000 0.65185 ,\
  0.16634 0.41647 0.00000 0.65253 ,\
  0.16830 0.41912 0.00000 0.65322 ,\
  0.17025 0.42176 0.00000 0.65386 ,\
  0.17221 0.42440 0.00000 0.65451 ,\
  0.17417 0.42704 0.00000 0.65511 ,\
  0.17613 0.42968 0.00000 0.65571 ,\
  0.17808 0.43232 0.00000 0.65628 ,\
  0.18004 0.43495 0.00000 0.65684 ,\
  0.18200 0.43759 0.00000 0.65736 ,\
  0.18395 0.44022 0.00000 0.65787 ,\
  0.18591 0.44285 0.00000 0.65835 ,\
  0.18787 0.44547 0.00000 0.65882 ,\
  0.18982 0.44810 0.00000 0.65926 ,\
  0.19178 0.45072 0.00000 0.65968 ,\
  0.19374 0.45334 0.00000 0.66007 ,\
  0.19569 0.45596 0.00000 0.66045 ,\
  0.19765 0.45857 0.00000 0.66080 ,\
  0.19961 0.46118 0.00000 0.66113 ,\
  0.20157 0.46379 0.00000 0.66143 ,\
  0.20352 0.46640 0.00000 0.66171 ,\
  0.20548 0.46900 0.00000 0.66196 ,\
  0.20744 0.47160 0.00000 0.66220 ,\
  0.20939 0.47420 0.00000 0.66240 ,\
  0.21135 0.47680 0.00000 0.66259 ,\
  0.21331 0.47939 0.00000 0.66274 ,\
  0.21526 0.48198 0.00000 0.66288 ,\
  0.21722 0.48456 0.00000 0.66298 ,\
  0.21918 0.48714 0.00000 0.66307 ,\
  0.22114 0.48972 0.00000 0.66312 ,\
  0.22309 0.49229 0.00000 0.66316 ,\
  0.22505 0.49486 0.00000 0.66315 ,\
  0.22701 0.49743 0.00000 0.66314 ,\
  0.22896 0.49999 0.00000 0.66309 ,\
  0.23092 0.50255 0.00000 0.66302 ,\
  0.23288 0.50510 0.00000 0.66292 ,\
  0.23483 0.50765 0.00000 0.66280 ,\
  0.23679 0.51020 0.00000 0.66264 ,\
  0.23875 0.51274 0.00000 0.66247 ,\
  0.24070 0.51528 0.00000 0.66226 ,\
  0.24266 0.51781 0.00000 0.66203 ,\
  0.24462 0.52033 0.00000 0.66177 ,\
  0.24658 0.52286 0.00000 0.66149 ,\
  0.24853 0.52537 0.00000 0.66117 ,\
  0.25049 0.52788 0.00000 0.66084 ,\
  0.25245 0.53039 0.00000 0.66047 ,\
  0.25440 0.53289 0.00000 0.66009 ,\
  0.25636 0.53539 0.00000 0.65966 ,\
  0.25832 0.53788 0.00000 0.65922 ,\
  0.26027 0.54037 0.00000 0.65874 ,\
  0.26223 0.54285 0.00000 0.65825 ,\
  0.26419 0.54532 0.00000 0.65771 ,\
  0.26614 0.54779 0.00000 0.65717 ,\
  0.26810 0.55025 0.00000 0.65658 ,\
  0.27006 0.55271 0.00000 0.65598 ,\
  0.27202 0.55516 0.00000 0.65534 ,\
  0.27397 0.55761 0.00000 0.65468 ,\
  0.27593 0.56005 0.00000 0.65399 ,\
  0.27789 0.56248 0.00000 0.65328 ,\
  0.27984 0.56491 0.00000 0.65254 ,\
  0.28180 0.56733 0.00000 0.65178 ,\
  0.28376 0.56974 0.00000 0.65098 ,\
  0.28571 0.57215 0.00000 0.65016 ,\
  0.28767 0.57455 0.00000 0.64932 ,\
  0.28963 0.57694 0.00000 0.64845 ,\
  0.29159 0.57933 0.00000 0.64755 ,\
  0.29354 0.58171 0.00000 0.64664 ,\
  0.29550 0.58408 0.00000 0.64569 ,\
  0.29746 0.58645 0.00000 0.64472 ,\
  0.29941 0.58881 0.00000 0.64372 ,\
  0.30137 0.59116 0.00000 0.64271 ,\
  0.30333 0.59351 0.00000 0.64166 ,\
  0.30528 0.59585 0.00000 0.64060 ,\
  0.30724 0.59818 0.00000 0.63950 ,\
  0.30920 0.60050 0.00000 0.63839 ,\
  0.31115 0.60282 0.00000 0.63725 ,\
  0.31311 0.60513 0.00000 0.63610 ,\
  0.31507 0.60743 0.00000 0.63491 ,\
  0.31703 0.60972 0.00000 0.63371 ,\
  0.31898 0.61201 0.00255 0.63248 ,\
  0.32094 0.61429 0.00627 0.63124 ,\
  0.32290 0.61656 0.01009 0.62997 ,\
  0.32485 0.61883 0.01399 0.62868 ,\
  0.32681 0.62108 0.01800 0.62737 ,\
  0.32877 0.62333 0.02208 0.62604 ,\
  0.33072 0.62557 0.02627 0.62469 ,\
  0.33268 0.62781 0.03054 0.62332 ,\
  0.33464 0.63003 0.03492 0.62193 ,\
  0.33659 0.63225 0.03937 0.62052 ,\
  0.33855 0.63446 0.04380 0.61910 ,\
  0.34051 0.63667 0.04802 0.61766 ,\
  0.34247 0.63886 0.05211 0.61619 ,\
  0.34442 0.64105 0.05605 0.61472 ,\
  0.34638 0.64323 0.05989 0.61322 ,\
  0.34834 0.64540 0.06362 0.61171 ,\
  0.35029 0.64756 0.06727 0.61018 ,\
  0.35225 0.64972 0.07083 0.60864 ,\
  0.35421 0.65186 0.07432 0.60709 ,\
  0.35616 0.65400 0.07774 0.60552 ,\
  0.35812 0.65613 0.08110 0.60393 ,\
  0.36008 0.65826 0.08441 0.60233 ,\
  0.36204 0.66038 0.08767 0.60072 ,\
  0.36399 0.66248 0.09087 0.59909 ,\
  0.36595 0.66458 0.09404 0.59745 ,\
  0.36791 0.66668 0.09716 0.59580 ,\
  0.36986 0.66876 0.10025 0.59414 ,\
  0.37182 0.67084 0.10330 0.59246 ,\
  0.37378 0.67291 0.10632 0.59078 ,\
  0.37573 0.67497 0.10930 0.58908 ,\
  0.37769 0.67702 0.11227 0.58738 ,\
  0.37965 0.67907 0.11520 0.58566 ,\
  0.38160 0.68111 0.11810 0.58394 ,\
  0.38356 0.68314 0.12098 0.58221 ,\
  0.38552 0.68516 0.12384 0.58046 ,\
  0.38748 0.68718 0.12668 0.57871 ,\
  0.38943 0.68918 0.12950 0.57695 ,\
  0.39139 0.69118 0.13229 0.57519 ,\
  0.39335 0.69317 0.13507 0.57342 ,\
  0.39530 0.69516 0.13783 0.57164 ,\
  0.39726 0.69714 0.14057 0.56985 ,\
  0.39922 0.69911 0.14330 0.56806 ,\
  0.40117 0.70107 0.14601 0.56626 ,\
  0.40313 0.70303 0.14870 0.56446 ,\
  0.40509 0.70497 0.15139 0.56265 ,\
  0.40705 0.70691 0.15405 0.56084 ,\
  0.40900 0.70885 0.15671 0.55902 ,\
  0.41096 0.71077 0.15935 0.55720 ,\
  0.41292 0.71269 0.16198 0.55538 ,\
  0.41487 0.71460 0.16460 0.55355 ,\
  0.41683 0.71651 0.16720 0.55172 ,\
  0.41879 0.71841 0.16980 0.54989 ,\
  0.42074 0.72030 0.17238 0.54805 ,\
  0.42270 0.72218 0.17496 0.54621 ,\
  0.42466 0.72406 0.17753 0.54437 ,\
  0.42661 0.72593 0.18008 0.54253 ,\
  0.42857 0.72779 0.18263 0.54068 ,\
  0.43053 0.72964 0.18517 0.53884 ,\
  0.43249 0.73149 0.18770 0.53699 ,\
  0.43444 0.73334 0.19022 0.53514 ,\
  0.43640 0.73517 0.19273 0.53330 ,\
  0.43836 0.73700 0.19524 0.53145 ,\
  0.44031 0.73882 0.19774 0.52960 ,\
  0.44227 0.74064 0.20023 0.52775 ,\
  0.44423 0.74245 0.20271 0.52590 ,\
  0.44618 0.74425 0.20519 0.52406 ,\
  0.44814 0.74605 0.20766 0.52221 ,\
  0.45010 0.74784 0.21013 0.52036 ,\
  0.45205 0.74963 0.21259 0.51852 ,\
  0.45401 0.75140 0.21504 0.51667 ,\
  0.45597 0.75317 0.21749 0.51483 ,\
  0.45793 0.75494 0.21993 0.51298 ,\
  0.45988 0.75670 0.22237 0.51114 ,\
  0.46184 0.75845 0.22480 0.50930 ,\
  0.46380 0.76020 0.22723 0.50746 ,\
  0.46575 0.76194 0.22965 0.50563 ,\
  0.46771 0.76368 0.23207 0.50379 ,\
  0.46967 0.76540 0.23448 0.50196 ,\
  0.47162 0.76713 0.23689 0.50013 ,\
  0.47358 0.76884 0.23929 0.49830 ,\
  0.47554 0.77056 0.24169 0.49647 ,\
  0.47750 0.77226 0.24409 0.49464 ,\
  0.47945 0.77396 0.24648 0.49282 ,\
  0.48141 0.77566 0.24887 0.49100 ,\
  0.48337 0.77734 0.25126 0.48918 ,\
  0.48532 0.77903 0.25364 0.48737 ,\
  0.48728 0.78070 0.25602 0.48556 ,\
  0.48924 0.78237 0.25840 0.48375 ,\
  0.49119 0.78404 0.26077 0.48194 ,\
  0.49315 0.78570 0.26314 0.48013 ,\
  0.49511 0.78735 0.26551 0.47833 ,\
  0.49706 0.78900 0.26788 0.47653 ,\
  0.49902 0.79065 0.27024 0.47474 ,\
  0.50098 0.79228 0.27260 0.47294 ,\
  0.50294 0.79392 0.27496 0.47115 ,\
  0.50489 0.79554 0.27732 0.46936 ,\
  0.50685 0.79717 0.27967 0.46757 ,\
  0.50881 0.79878 0.28202 0.46579 ,\
  0.51076 0.80039 0.28437 0.46401 ,\
  0.51272 0.80200 0.28672 0.46223 ,\
  0.51468 0.80360 0.28907 0.46045 ,\
  0.51663 0.80519 0.29142 0.45868 ,\
  0.51859 0.80678 0.29376 0.45691 ,\
  0.52055 0.80836 0.29610 0.45514 ,\
  0.52250 0.80994 0.29844 0.45338 ,\
  0.52446 0.81152 0.30079 0.45161 ,\
  0.52642 0.81308 0.30313 0.44985 ,\
  0.52838 0.81465 0.30547 0.44810 ,\
  0.53033 0.81620 0.30780 0.44634 ,\
  0.53229 0.81776 0.31014 0.44459 ,\
  0.53425 0.81930 0.31248 0.44284 ,\
  0.53620 0.82084 0.31482 0.44109 ,\
  0.53816 0.82238 0.31715 0.43934 ,\
  0.54012 0.82391 0.31949 0.43760 ,\
  0.54207 0.82544 0.32182 0.43585 ,\
  0.54403 0.82696 0.32416 0.43411 ,\
  0.54599 0.82847 0.32649 0.43238 ,\
  0.54795 0.82998 0.32883 0.43064 ,\
  0.54990 0.83148 0.33117 0.42891 ,\
  0.55186 0.83298 0.33350 0.42718 ,\
  0.55382 0.83448 0.33584 0.42545 ,\
  0.55577 0.83596 0.33818 0.42372 ,\
  0.55773 0.83745 0.34051 0.42199 ,\
  0.55969 0.83892 0.34285 0.42027 ,\
  0.56164 0.84039 0.34519 0.41854 ,\
  0.56360 0.84186 0.34753 0.41682 ,\
  0.56556 0.84332 0.34987 0.41510 ,\
  0.56751 0.84477 0.35221 0.41338 ,\
  0.56947 0.84622 0.35455 0.41167 ,\
  0.57143 0.84767 0.35690 0.40995 ,\
  0.57339 0.84911 0.35924 0.40824 ,\
  0.57534 0.85054 0.36158 0.40652 ,\
  0.57730 0.85197 0.36393 0.40481 ,\
  0.57926 0.85339 0.36628 0.40310 ,\
  0.58121 0.85480 0.36863 0.40139 ,\
  0.58317 0.85621 0.37098 0.39968 ,\
  0.58513 0.85762 0.37333 0.39797 ,\
  0.58708 0.85901 0.37569 0.39627 ,\
  0.58904 0.86041 0.37805 0.39456 ,\
  0.59100 0.86179 0.38040 0.39285 ,\
  0.59295 0.86317 0.38276 0.39115 ,\
  0.59491 0.86455 0.38513 0.38944 ,\
  0.59687 0.86591 0.38749 0.38774 ,\
  0.59883 0.86728 0.38986 0.38604 ,\
  0.60078 0.86863 0.39223 0.38433 ,\
  0.60274 0.86998 0.39460 0.38263 ,\
  0.60470 0.87133 0.39697 0.38093 ,\
  0.60665 0.87266 0.39935 0.37922 ,\
  0.60861 0.87399 0.40173 0.37752 ,\
  0.61057 0.87532 0.40411 0.37582 ,\
  0.61252 0.87664 0.40649 0.37412 ,\
  0.61448 0.87795 0.40888 0.37241 ,\
  0.61644 0.87925 0.41127 0.37071 ,\
  0.61840 0.88055 0.41366 0.36901 ,\
  0.62035 0.88184 0.41606 0.36730 ,\
  0.62231 0.88313 0.41846 0.36560 ,\
  0.62427 0.88440 0.42086 0.36390 ,\
  0.62622 0.88567 0.42327 0.36219 ,\
  0.62818 0.88694 0.42568 0.36049 ,\
  0.63014 0.88820 0.42809 0.35879 ,\
  0.63209 0.88945 0.43050 0.35708 ,\
  0.63405 0.89069 0.43292 0.35537 ,\
  0.63601 0.89193 0.43534 0.35367 ,\
  0.63796 0.89315 0.43777 0.35196 ,\
  0.63992 0.89437 0.44020 0.35025 ,\
  0.64188 0.89559 0.44264 0.34854 ,\
  0.64384 0.89679 0.44507 0.34683 ,\
  0.64579 0.89799 0.44751 0.34512 ,\
  0.64775 0.89918 0.44996 0.34341 ,\
  0.64971 0.90037 0.45241 0.34170 ,\
  0.65166 0.90154 0.45486 0.33998 ,\
  0.65362 0.90271 0.45732 0.33827 ,\
  0.65558 0.90387 0.45978 0.33656 ,\
  0.65753 0.90502 0.46225 0.33484 ,\
  0.65949 0.90616 0.46471 0.33312 ,\
  0.66145 0.90730 0.46719 0.33140 ,\
  0.66341 0.90843 0.46967 0.32968 ,\
  0.66536 0.90954 0.47215 0.32796 ,\
  0.66732 0.91065 0.47464 0.32624 ,\
  0.66928 0.91175 0.47713 0.32451 ,\
  0.67123 0.91285 0.47963 0.32279 ,\
  0.67319 0.91393 0.48213 0.32106 ,\
  0.67515 0.91501 0.48464 0.31933 ,\
  0.67710 0.91607 0.48715 0.31760 ,\
  0.67906 0.91713 0.48966 0.31587 ,\
  0.68102 0.91818 0.49219 0.31414 ,\
  0.68297 0.91922 0.49471 0.31240 ,\
  0.68493 0.92025 0.49724 0.31067 ,\
  0.68689 0.92127 0.49978 0.30893 ,\
  0.68885 0.92228 0.50232 0.30719 ,\
  0.69080 0.92329 0.50487 0.30545 ,\
  0.69276 0.92428 0.50742 0.30371 ,\
  0.69472 0.92526 0.50997 0.30196 ,\
  0.69667 0.92623 0.51254 0.30022 ,\
  0.69863 0.92720 0.51510 0.29847 ,\
  0.70059 0.92815 0.51768 0.29672 ,\
  0.70254 0.92909 0.52025 0.29497 ,\
  0.70450 0.93003 0.52284 0.29322 ,\
  0.70646 0.93095 0.52542 0.29147 ,\
  0.70841 0.93186 0.52802 0.28971 ,\
  0.71037 0.93277 0.53062 0.28795 ,\
  0.71233 0.93366 0.53323 0.28619 ,\
  0.71429 0.93454 0.53583 0.28443 ,\
  0.71624 0.93541 0.53845 0.28267 ,\
  0.71820 0.93627 0.54107 0.28090 ,\
  0.72016 0.93712 0.54370 0.27914 ,\
  0.72211 0.93795 0.54633 0.27736 ,\
  0.72407 0.93878 0.54898 0.27560 ,\
  0.72603 0.93960 0.55162 0.27382 ,\
  0.72798 0.94040 0.55427 0.27205 ,\
  0.72994 0.94120 0.55693 0.27027 ,\
  0.73190 0.94198 0.55959 0.26850 ,\
  0.73386 0.94275 0.56226 0.26671 ,\
  0.73581 0.94350 0.56493 0.26494 ,\
  0.73777 0.94425 0.56761 0.26315 ,\
  0.73973 0.94499 0.57030 0.26137 ,\
  0.74168 0.94571 0.57299 0.25958 ,\
  0.74364 0.94642 0.57569 0.25779 ,\
  0.74560 0.94712 0.57839 0.25600 ,\
  0.74755 0.94780 0.58111 0.25421 ,\
  0.74951 0.94848 0.58382 0.25241 ,\
  0.75147 0.94914 0.58655 0.25062 ,\
  0.75342 0.94979 0.58927 0.24882 ,\
  0.75538 0.95042 0.59201 0.24702 ,\
  0.75734 0.95105 0.59475 0.24522 ,\
  0.75930 0.95166 0.59750 0.24342 ,\
  0.76125 0.95226 0.60025 0.24161 ,\
  0.76321 0.95284 0.60301 0.23981 ,\
  0.76517 0.95341 0.60578 0.23800 ,\
  0.76712 0.95397 0.60855 0.23620 ,\
  0.76908 0.95452 0.61133 0.23439 ,\
  0.77104 0.95505 0.61412 0.23258 ,\
  0.77299 0.95557 0.61691 0.23077 ,\
  0.77495 0.95607 0.61970 0.22896 ,\
  0.77691 0.95656 0.62251 0.22714 ,\
  0.77886 0.95704 0.62532 0.22534 ,\
  0.78082 0.95750 0.62813 0.22352 ,\
  0.78278 0.95795 0.63096 0.22171 ,\
  0.78474 0.95838 0.63379 0.21988 ,\
  0.78669 0.95880 0.63663 0.21807 ,\
  0.78865 0.95921 0.63947 0.21625 ,\
  0.79061 0.95959 0.64232 0.21444 ,\
  0.79256 0.95997 0.64517 0.21261 ,\
  0.79452 0.96033 0.64804 0.21080 ,\
  0.79648 0.96068 0.65090 0.20898 ,\
  0.79843 0.96101 0.65378 0.20717 ,\
  0.80039 0.96133 0.65666 0.20535 ,\
  0.80235 0.96162 0.65955 0.20354 ,\
  0.80431 0.96191 0.66244 0.20172 ,\
  0.80626 0.96218 0.66534 0.19992 ,\
  0.80822 0.96243 0.66825 0.19810 ,\
  0.81018 0.96267 0.67116 0.19630 ,\
  0.81213 0.96289 0.67408 0.19448 ,\
  0.81409 0.96310 0.67701 0.19268 ,\
  0.81605 0.96329 0.67994 0.19087 ,\
  0.81800 0.96346 0.68288 0.18908 ,\
  0.81996 0.96362 0.68583 0.18728 ,\
  0.82192 0.96376 0.68878 0.18549 ,\
  0.82387 0.96389 0.69174 0.18369 ,\
  0.82583 0.96399 0.69471 0.18192 ,\
  0.82779 0.96409 0.69768 0.18013 ,\
  0.82975 0.96415 0.70066 0.17836 ,\
  0.83170 0.96422 0.70364 0.17659 ,\
  0.83366 0.96425 0.70663 0.17483 ,\
  0.83562 0.96428 0.70963 0.17306 ,\
  0.83757 0.96428 0.71264 0.17133 ,\
  0.83953 0.96427 0.71564 0.16957 ,\
  0.84149 0.96423 0.71867 0.16785 ,\
  0.84344 0.96419 0.72169 0.16611 ,\
  0.84540 0.96411 0.72472 0.16441 ,\
  0.84736 0.96403 0.72776 0.16270 ,\
  0.84932 0.96393 0.73080 0.16102 ,\
  0.85127 0.96381 0.73385 0.15932 ,\
  0.85323 0.96366 0.73691 0.15766 ,\
  0.85519 0.96351 0.73997 0.15599 ,\
  0.85714 0.96332 0.74304 0.15437 ,\
  0.85910 0.96313 0.74612 0.15273 ,\
  0.86106 0.96291 0.74920 0.15113 ,\
  0.86301 0.96268 0.75229 0.14952 ,\
  0.86497 0.96242 0.75539 0.14797 ,\
  0.86693 0.96215 0.75849 0.14639 ,\
  0.86888 0.96185 0.76160 0.14488 ,\
  0.87084 0.96154 0.76471 0.14335 ,\
  0.87280 0.96120 0.76783 0.14187 ,\
  0.87476 0.96085 0.77096 0.14039 ,\
  0.87671 0.96046 0.77410 0.13896 ,\
  0.87867 0.96007 0.77723 0.13753 ,\
  0.88063 0.95965 0.78039 0.13616 ,\
  0.88258 0.95922 0.78354 0.13478 ,\
  0.88454 0.95875 0.78670 0.13347 ,\
  0.88650 0.95828 0.78986 0.13215 ,\
  0.88845 0.95777 0.79304 0.13091 ,\
  0.89041 0.95725 0.79621 0.12967 ,\
  0.89237 0.95670 0.79940 0.12850 ,\
  0.89432 0.95614 0.80259 0.12733 ,\
  0.89628 0.95555 0.80579 0.12624 ,\
  0.89824 0.95495 0.80899 0.12515 ,\
  0.90020 0.95431 0.81220 0.12414 ,\
  0.90215 0.95366 0.81541 0.12313 ,\
  0.90411 0.95298 0.81864 0.12222 ,\
  0.90607 0.95229 0.82186 0.12130 ,\
  0.90802 0.95156 0.82510 0.12048 ,\
  0.90998 0.95082 0.82834 0.11967 ,\
  0.91194 0.95005 0.83159 0.11895 ,\
  0.91389 0.94926 0.83483 0.11824 ,\
  0.91585 0.94845 0.83809 0.11763 ,\
  0.91781 0.94762 0.84135 0.11703 ,\
  0.91977 0.94675 0.84463 0.11652 ,\
  0.92172 0.94587 0.84790 0.11602 ,\
  0.92368 0.94496 0.85118 0.11563 ,\
  0.92564 0.94403 0.85447 0.11525 ,\
  0.92759 0.94308 0.85776 0.11498 ,\
  0.92955 0.94211 0.86105 0.11471 ,\
  0.93151 0.94110 0.86436 0.11454 ,\
  0.93346 0.94007 0.86767 0.11437 ,\
  0.93542 0.93902 0.87099 0.11432 ,\
  0.93738 0.93795 0.87430 0.11426 ,\
  0.93933 0.93685 0.87763 0.11431 ,\
  0.94129 0.93573 0.88096 0.11436 ,\
  0.94325 0.93458 0.88430 0.11449 ,\
  0.94521 0.93342 0.88763 0.11463 ,\
  0.94716 0.93222 0.89098 0.11485 ,\
  0.94912 0.93101 0.89433 0.11507 ,\
  0.95108 0.92976 0.89769 0.11535 ,\
  0.95303 0.92850 0.90104 0.11563 ,\
  0.95499 0.92721 0.90441 0.11595 ,\
  0.95695 0.92590 0.90778 0.11627 ,\
  0.95890 0.92457 0.91115 0.11660 ,\
  0.96086 0.92322 0.91453 0.11694 ,\
  0.96282 0.92183 0.91791 0.11725 ,\
  0.96477 0.92043 0.92130 0.11755 ,\
  0.96673 0.91901 0.92469 0.11779 ,\
  0.96869 0.91757 0.92808 0.11803 ,\
  0.97065 0.91611 0.93148 0.11814 ,\
  0.97260 0.91464 0.93487 0.11824 ,\
  0.97456 0.91314 0.93828 0.11813 ,\
  0.97652 0.91163 0.94168 0.11801 ,\
  0.97847 0.91011 0.94508 0.11757 ,\
  0.98043 0.90858 0.94849 0.11711 ,\
  0.98239 0.90704 0.95190 0.11616 ,\
  0.98434 0.90549 0.95530 0.11519 ,\
  0.98630 0.90395 0.95871 0.11350 ,\
  0.98826 0.90240 0.96211 0.11176 ,\
  0.99022 0.90091 0.96550 0.10895 ,\
  0.99217 0.89940 0.96889 0.10604 ,\
  0.99413 0.89798 0.97226 0.10146 ,\
  0.99609 0.89655 0.97562 0.09665 ,\
  0.99804 0.89531 0.97894 0.08917 ,\
  1.0 0.894058310302958 0.9822535793047805 0.0810687655704728)

# END