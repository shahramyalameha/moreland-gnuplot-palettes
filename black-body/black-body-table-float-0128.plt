
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
  0.00000 0.00000 0.00000 0.00000 ,\
  0.00787 0.02510 0.00756 0.00423 ,\
  0.01575 0.04943 0.01513 0.00846 ,\
  0.02362 0.06865 0.02269 0.01269 ,\
  0.03150 0.08440 0.03026 0.01692 ,\
  0.03937 0.09798 0.03782 0.02115 ,\
  0.04724 0.11005 0.04514 0.02539 ,\
  0.05512 0.12100 0.05178 0.02962 ,\
  0.06299 0.13118 0.05782 0.03385 ,\
  0.07087 0.14179 0.06271 0.03816 ,\
  0.07874 0.15305 0.06640 0.04251 ,\
  0.08661 0.16473 0.06937 0.04663 ,\
  0.09449 0.17655 0.07225 0.05047 ,\
  0.10236 0.18849 0.07506 0.05407 ,\
  0.11024 0.20056 0.07780 0.05745 ,\
  0.11811 0.21274 0.08047 0.06064 ,\
  0.12598 0.22503 0.08307 0.06366 ,\
  0.13386 0.23743 0.08561 0.06652 ,\
  0.14173 0.24993 0.08807 0.06923 ,\
  0.14961 0.26253 0.09047 0.07181 ,\
  0.15748 0.27522 0.09281 0.07426 ,\
  0.16535 0.28801 0.09507 0.07660 ,\
  0.17323 0.30089 0.09727 0.07883 ,\
  0.18110 0.31386 0.09940 0.08096 ,\
  0.18898 0.32691 0.10147 0.08304 ,\
  0.19685 0.34004 0.10347 0.08512 ,\
  0.20472 0.35324 0.10540 0.08720 ,\
  0.21260 0.36652 0.10727 0.08929 ,\
  0.22047 0.37987 0.10907 0.09138 ,\
  0.22835 0.39330 0.11081 0.09347 ,\
  0.23622 0.40679 0.11247 0.09557 ,\
  0.24409 0.42036 0.11407 0.09767 ,\
  0.25197 0.43400 0.11560 0.09977 ,\
  0.25984 0.44771 0.11706 0.10188 ,\
  0.26772 0.46149 0.11844 0.10399 ,\
  0.27559 0.47534 0.11976 0.10610 ,\
  0.28346 0.48925 0.12100 0.10821 ,\
  0.29134 0.50323 0.12217 0.11033 ,\
  0.29921 0.51727 0.12327 0.11245 ,\
  0.30709 0.53138 0.12429 0.11458 ,\
  0.31496 0.54556 0.12523 0.11671 ,\
  0.32283 0.55979 0.12609 0.11884 ,\
  0.33071 0.57409 0.12688 0.12097 ,\
  0.33858 0.58845 0.12758 0.12311 ,\
  0.34646 0.60287 0.12820 0.12525 ,\
  0.35433 0.61735 0.12874 0.12739 ,\
  0.36220 0.63189 0.12918 0.12954 ,\
  0.37008 0.64649 0.12954 0.13169 ,\
  0.37795 0.66114 0.12981 0.13385 ,\
  0.38583 0.67586 0.12999 0.13600 ,\
  0.39370 0.68830 0.13516 0.13693 ,\
  0.40157 0.69584 0.15032 0.13520 ,\
  0.40945 0.70338 0.16464 0.13334 ,\
  0.41732 0.71091 0.17829 0.13135 ,\
  0.42520 0.71843 0.19141 0.12923 ,\
  0.43307 0.72595 0.20410 0.12696 ,\
  0.44094 0.73346 0.21642 0.12454 ,\
  0.44882 0.74097 0.22845 0.12195 ,\
  0.45669 0.74847 0.24021 0.11919 ,\
  0.46457 0.75597 0.25176 0.11624 ,\
  0.47244 0.76346 0.26312 0.11308 ,\
  0.48031 0.77095 0.27431 0.10970 ,\
  0.48819 0.77843 0.28536 0.10607 ,\
  0.49606 0.78590 0.29628 0.10217 ,\
  0.50394 0.79338 0.30708 0.09798 ,\
  0.51181 0.80084 0.31779 0.09344 ,\
  0.51969 0.80831 0.32841 0.08853 ,\
  0.52756 0.81576 0.33896 0.08317 ,\
  0.53543 0.82322 0.34943 0.07730 ,\
  0.54331 0.83067 0.35984 0.07081 ,\
  0.55118 0.83811 0.37019 0.06357 ,\
  0.55906 0.84556 0.38050 0.05537 ,\
  0.56693 0.85300 0.39076 0.04590 ,\
  0.57480 0.86043 0.40098 0.03476 ,\
  0.58268 0.86786 0.41117 0.02295 ,\
  0.59055 0.87121 0.42445 0.01939 ,\
  0.59843 0.87319 0.43856 0.01861 ,\
  0.60630 0.87509 0.45248 0.01788 ,\
  0.61417 0.87693 0.46623 0.01720 ,\
  0.62205 0.87869 0.47982 0.01656 ,\
  0.62992 0.88038 0.49328 0.01597 ,\
  0.63780 0.88200 0.50661 0.01542 ,\
  0.64567 0.88355 0.51983 0.01493 ,\
  0.65354 0.88503 0.53295 0.01449 ,\
  0.66142 0.88643 0.54597 0.01411 ,\
  0.66929 0.88776 0.55890 0.01378 ,\
  0.67717 0.88901 0.57175 0.01351 ,\
  0.68504 0.89019 0.58453 0.01330 ,\
  0.69291 0.89129 0.59724 0.01314 ,\
  0.70079 0.89231 0.60989 0.01306 ,\
  0.70866 0.89326 0.62249 0.01303 ,\
  0.71654 0.89413 0.63503 0.01307 ,\
  0.72441 0.89491 0.64752 0.01318 ,\
  0.73228 0.89562 0.65997 0.01336 ,\
  0.74016 0.89624 0.67238 0.01361 ,\
  0.74803 0.89678 0.68476 0.01394 ,\
  0.75591 0.89724 0.69709 0.01433 ,\
  0.76378 0.89761 0.70940 0.01481 ,\
  0.77165 0.89790 0.72168 0.01536 ,\
  0.77953 0.89810 0.73393 0.01599 ,\
  0.78740 0.89821 0.74615 0.01671 ,\
  0.79528 0.89824 0.75836 0.01750 ,\
  0.80315 0.89817 0.77054 0.01838 ,\
  0.81102 0.89801 0.78270 0.01935 ,\
  0.81890 0.89776 0.79485 0.02040 ,\
  0.82677 0.89742 0.80698 0.02155 ,\
  0.83465 0.89698 0.81910 0.02278 ,\
  0.84252 0.89786 0.83060 0.05521 ,\
  0.85039 0.90652 0.83869 0.16361 ,\
  0.85827 0.91487 0.84681 0.23152 ,\
  0.86614 0.92291 0.85497 0.28770 ,\
  0.87402 0.93061 0.86317 0.33810 ,\
  0.88189 0.93798 0.87141 0.38509 ,\
  0.88976 0.94500 0.87969 0.42990 ,\
  0.89764 0.95166 0.88800 0.47322 ,\
  0.90551 0.95794 0.89636 0.51551 ,\
  0.91339 0.96385 0.90476 0.55706 ,\
  0.92126 0.96936 0.91321 0.59808 ,\
  0.92913 0.97446 0.92169 0.63872 ,\
  0.93701 0.97914 0.93022 0.67911 ,\
  0.94488 0.98340 0.93879 0.71932 ,\
  0.95276 0.98721 0.94740 0.75941 ,\
  0.96063 0.99057 0.95606 0.79946 ,\
  0.96850 0.99345 0.96476 0.83948 ,\
  0.97638 0.99586 0.97350 0.87953 ,\
  0.98425 0.99776 0.98229 0.91961 ,\
  0.99213 0.99915 0.99112 0.95977 ,\
  1.0 1.0 1.0 1.0)

# END