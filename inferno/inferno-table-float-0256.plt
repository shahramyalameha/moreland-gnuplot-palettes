
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
  0.00000 0.00281 0.00024 0.01398 ,\
  0.00392 0.00402 0.00098 0.01872 ,\
  0.00784 0.00554 0.00188 0.02443 ,\
  0.01176 0.00735 0.00293 0.03115 ,\
  0.01569 0.00946 0.00412 0.03886 ,\
  0.01961 0.01188 0.00544 0.04716 ,\
  0.02353 0.01460 0.00688 0.05549 ,\
  0.02745 0.01764 0.00843 0.06383 ,\
  0.03137 0.02102 0.01007 0.07226 ,\
  0.03529 0.02474 0.01178 0.08071 ,\
  0.03922 0.02884 0.01357 0.08922 ,\
  0.04314 0.03333 0.01540 0.09781 ,\
  0.04706 0.03822 0.01727 0.10644 ,\
  0.05098 0.04343 0.01915 0.11516 ,\
  0.05490 0.04869 0.02104 0.12397 ,\
  0.05882 0.05400 0.02292 0.13283 ,\
  0.06275 0.05937 0.02477 0.14178 ,\
  0.06667 0.06483 0.02655 0.15083 ,\
  0.07059 0.07035 0.02826 0.15996 ,\
  0.07451 0.07595 0.02989 0.16915 ,\
  0.07843 0.08164 0.03140 0.17841 ,\
  0.08235 0.08743 0.03277 0.18777 ,\
  0.08627 0.09332 0.03398 0.19720 ,\
  0.09020 0.09931 0.03501 0.20668 ,\
  0.09412 0.10540 0.03584 0.21621 ,\
  0.09804 0.11161 0.03644 0.22577 ,\
  0.10196 0.11792 0.03681 0.23535 ,\
  0.10588 0.12434 0.03693 0.24494 ,\
  0.10980 0.13086 0.03677 0.25451 ,\
  0.11373 0.13749 0.03635 0.26403 ,\
  0.11765 0.14421 0.03564 0.27348 ,\
  0.12157 0.15102 0.03467 0.28282 ,\
  0.12549 0.15790 0.03343 0.29202 ,\
  0.12941 0.16484 0.03196 0.30105 ,\
  0.13333 0.17183 0.03029 0.30987 ,\
  0.13725 0.17885 0.02843 0.31844 ,\
  0.14118 0.18588 0.02643 0.32673 ,\
  0.14510 0.19291 0.02435 0.33470 ,\
  0.14902 0.19992 0.02223 0.34233 ,\
  0.15294 0.20690 0.02013 0.34960 ,\
  0.15686 0.21382 0.01809 0.35650 ,\
  0.16078 0.22069 0.01615 0.36300 ,\
  0.16471 0.22748 0.01436 0.36912 ,\
  0.16863 0.23420 0.01274 0.37485 ,\
  0.17255 0.24085 0.01134 0.38020 ,\
  0.17647 0.24741 0.01016 0.38518 ,\
  0.18039 0.25389 0.00923 0.38981 ,\
  0.18431 0.26030 0.00855 0.39411 ,\
  0.18824 0.26663 0.00813 0.39808 ,\
  0.19216 0.27289 0.00797 0.40175 ,\
  0.19608 0.27908 0.00806 0.40514 ,\
  0.20000 0.28522 0.00841 0.40827 ,\
  0.20392 0.29129 0.00901 0.41114 ,\
  0.20784 0.29731 0.00985 0.41379 ,\
  0.21176 0.30329 0.01091 0.41622 ,\
  0.21569 0.30922 0.01220 0.41845 ,\
  0.21961 0.31511 0.01370 0.42049 ,\
  0.22353 0.32098 0.01541 0.42235 ,\
  0.22745 0.32681 0.01730 0.42406 ,\
  0.23137 0.33261 0.01938 0.42561 ,\
  0.23529 0.33839 0.02163 0.42701 ,\
  0.23922 0.34415 0.02405 0.42828 ,\
  0.24314 0.34990 0.02663 0.42943 ,\
  0.24706 0.35563 0.02936 0.43045 ,\
  0.25098 0.36135 0.03222 0.43136 ,\
  0.25490 0.36705 0.03523 0.43216 ,\
  0.25882 0.37275 0.03837 0.43286 ,\
  0.26275 0.37845 0.04160 0.43346 ,\
  0.26667 0.38414 0.04479 0.43396 ,\
  0.27059 0.38982 0.04794 0.43437 ,\
  0.27451 0.39551 0.05106 0.43470 ,\
  0.27843 0.40119 0.05415 0.43494 ,\
  0.28235 0.40687 0.05719 0.43510 ,\
  0.28627 0.41256 0.06020 0.43519 ,\
  0.29020 0.41824 0.06317 0.43519 ,\
  0.29412 0.42393 0.06611 0.43511 ,\
  0.29804 0.42963 0.06901 0.43497 ,\
  0.30196 0.43532 0.07188 0.43474 ,\
  0.30588 0.44103 0.07471 0.43445 ,\
  0.30980 0.44673 0.07752 0.43408 ,\
  0.31373 0.45245 0.08029 0.43364 ,\
  0.31765 0.45816 0.08304 0.43314 ,\
  0.32157 0.46389 0.08576 0.43256 ,\
  0.32549 0.46962 0.08846 0.43191 ,\
  0.32941 0.47535 0.09113 0.43120 ,\
  0.33333 0.48109 0.09379 0.43042 ,\
  0.33725 0.48684 0.09642 0.42956 ,\
  0.34118 0.49259 0.09903 0.42864 ,\
  0.34510 0.49834 0.10163 0.42765 ,\
  0.34902 0.50411 0.10421 0.42660 ,\
  0.35294 0.50988 0.10678 0.42547 ,\
  0.35686 0.51565 0.10933 0.42428 ,\
  0.36078 0.52143 0.11188 0.42301 ,\
  0.36471 0.52721 0.11441 0.42168 ,\
  0.36863 0.53299 0.11694 0.42028 ,\
  0.37255 0.53878 0.11946 0.41882 ,\
  0.37647 0.54458 0.12198 0.41728 ,\
  0.38039 0.55037 0.12450 0.41567 ,\
  0.38431 0.55617 0.12701 0.41400 ,\
  0.38824 0.56197 0.12953 0.41225 ,\
  0.39216 0.56776 0.13205 0.41044 ,\
  0.39608 0.57357 0.13458 0.40856 ,\
  0.40000 0.57936 0.13711 0.40661 ,\
  0.40392 0.58516 0.13965 0.40459 ,\
  0.40784 0.59096 0.14220 0.40250 ,\
  0.41176 0.59675 0.14476 0.40035 ,\
  0.41569 0.60254 0.14734 0.39812 ,\
  0.41961 0.60832 0.14993 0.39583 ,\
  0.42353 0.61411 0.15254 0.39347 ,\
  0.42745 0.61988 0.15517 0.39104 ,\
  0.43137 0.62565 0.15782 0.38854 ,\
  0.43529 0.63141 0.16049 0.38598 ,\
  0.43922 0.63715 0.16318 0.38335 ,\
  0.44314 0.64290 0.16591 0.38065 ,\
  0.44706 0.64862 0.16866 0.37789 ,\
  0.45098 0.65434 0.17144 0.37506 ,\
  0.45490 0.66004 0.17426 0.37217 ,\
  0.45882 0.66573 0.17710 0.36921 ,\
  0.46275 0.67140 0.17999 0.36619 ,\
  0.46667 0.67706 0.18291 0.36311 ,\
  0.47059 0.68270 0.18588 0.35996 ,\
  0.47451 0.68832 0.18888 0.35676 ,\
  0.47843 0.69391 0.19193 0.35350 ,\
  0.48235 0.69949 0.19502 0.35017 ,\
  0.48627 0.70504 0.19816 0.34679 ,\
  0.49020 0.71057 0.20135 0.34335 ,\
  0.49412 0.71607 0.20460 0.33985 ,\
  0.49804 0.72154 0.20789 0.33630 ,\
  0.50196 0.72698 0.21124 0.33269 ,\
  0.50588 0.73240 0.21464 0.32904 ,\
  0.50980 0.73778 0.21810 0.32533 ,\
  0.51373 0.74312 0.22162 0.32157 ,\
  0.51765 0.74844 0.22520 0.31776 ,\
  0.52157 0.75371 0.22884 0.31390 ,\
  0.52549 0.75895 0.23255 0.31000 ,\
  0.52941 0.76414 0.23632 0.30605 ,\
  0.53333 0.76930 0.24016 0.30206 ,\
  0.53725 0.77441 0.24406 0.29802 ,\
  0.54118 0.77948 0.24803 0.29394 ,\
  0.54510 0.78450 0.25207 0.28983 ,\
  0.54902 0.78947 0.25618 0.28567 ,\
  0.55294 0.79440 0.26036 0.28148 ,\
  0.55686 0.79927 0.26462 0.27725 ,\
  0.56078 0.80409 0.26894 0.27298 ,\
  0.56471 0.80886 0.27334 0.26868 ,\
  0.56863 0.81357 0.27781 0.26435 ,\
  0.57255 0.81822 0.28236 0.25999 ,\
  0.57647 0.82282 0.28697 0.25559 ,\
  0.58039 0.82736 0.29166 0.25117 ,\
  0.58431 0.83183 0.29643 0.24671 ,\
  0.58824 0.83624 0.30127 0.24223 ,\
  0.59216 0.84059 0.30618 0.23772 ,\
  0.59608 0.84488 0.31117 0.23319 ,\
  0.60000 0.84909 0.31623 0.22862 ,\
  0.60392 0.85324 0.32137 0.22404 ,\
  0.60784 0.85732 0.32657 0.21942 ,\
  0.61176 0.86133 0.33185 0.21478 ,\
  0.61569 0.86527 0.33720 0.21011 ,\
  0.61961 0.86914 0.34262 0.20542 ,\
  0.62353 0.87293 0.34811 0.20071 ,\
  0.62745 0.87665 0.35366 0.19596 ,\
  0.63137 0.88030 0.35929 0.19119 ,\
  0.63529 0.88387 0.36498 0.18639 ,\
  0.63922 0.88736 0.37074 0.18157 ,\
  0.64314 0.89078 0.37657 0.17671 ,\
  0.64706 0.89411 0.38245 0.17183 ,\
  0.65098 0.89737 0.38840 0.16691 ,\
  0.65490 0.90055 0.39442 0.16196 ,\
  0.65882 0.90365 0.40049 0.15697 ,\
  0.66275 0.90667 0.40662 0.15195 ,\
  0.66667 0.90961 0.41281 0.14688 ,\
  0.67059 0.91247 0.41905 0.14178 ,\
  0.67451 0.91525 0.42535 0.13663 ,\
  0.67843 0.91794 0.43171 0.13144 ,\
  0.68235 0.92055 0.43812 0.12619 ,\
  0.68627 0.92308 0.44458 0.12090 ,\
  0.69020 0.92553 0.45109 0.11555 ,\
  0.69412 0.92789 0.45765 0.11014 ,\
  0.69804 0.93017 0.46426 0.10466 ,\
  0.70196 0.93236 0.47091 0.09912 ,\
  0.70588 0.93447 0.47761 0.09351 ,\
  0.70980 0.93650 0.48436 0.08783 ,\
  0.71373 0.93844 0.49115 0.08206 ,\
  0.71765 0.94030 0.49798 0.07621 ,\
  0.72157 0.94207 0.50485 0.07028 ,\
  0.72549 0.94375 0.51176 0.06425 ,\
  0.72941 0.94535 0.51871 0.05812 ,\
  0.73333 0.94687 0.52570 0.05189 ,\
  0.73725 0.94830 0.53273 0.04556 ,\
  0.74118 0.94964 0.53979 0.03911 ,\
  0.74510 0.95089 0.54688 0.03290 ,\
  0.74902 0.95206 0.55401 0.02723 ,\
  0.75294 0.95315 0.56118 0.02212 ,\
  0.75686 0.95414 0.56838 0.01758 ,\
  0.76078 0.95505 0.57561 0.01364 ,\
  0.76471 0.95587 0.58286 0.01032 ,\
  0.76863 0.95660 0.59015 0.00765 ,\
  0.77255 0.95725 0.59747 0.00565 ,\
  0.77647 0.95780 0.60481 0.00437 ,\
  0.78039 0.95827 0.61219 0.00382 ,\
  0.78431 0.95865 0.61959 0.00404 ,\
  0.78824 0.95894 0.62701 0.00507 ,\
  0.79216 0.95915 0.63446 0.00696 ,\
  0.79608 0.95926 0.64194 0.00974 ,\
  0.80000 0.95928 0.64944 0.01346 ,\
  0.80392 0.95921 0.65696 0.01817 ,\
  0.80784 0.95906 0.66450 0.02392 ,\
  0.81176 0.95881 0.67206 0.03078 ,\
  0.81569 0.95847 0.67965 0.03880 ,\
  0.81961 0.95805 0.68725 0.04755 ,\
  0.82353 0.95753 0.69488 0.05639 ,\
  0.82745 0.95692 0.70252 0.06533 ,\
  0.83137 0.95622 0.71017 0.07436 ,\
  0.83529 0.95544 0.71785 0.08350 ,\
  0.83922 0.95456 0.72553 0.09274 ,\
  0.84314 0.95359 0.73324 0.10210 ,\
  0.84706 0.95253 0.74095 0.11157 ,\
  0.85098 0.95139 0.74868 0.12117 ,\
  0.85490 0.95016 0.75642 0.13090 ,\
  0.85882 0.94884 0.76417 0.14078 ,\
  0.86275 0.94744 0.77192 0.15081 ,\
  0.86667 0.94596 0.77968 0.16101 ,\
  0.87059 0.94440 0.78744 0.17137 ,\
  0.87451 0.94276 0.79520 0.18192 ,\
  0.87843 0.94105 0.80296 0.19267 ,\
  0.88235 0.93926 0.81072 0.20363 ,\
  0.88627 0.93742 0.81848 0.21480 ,\
  0.89020 0.93551 0.82622 0.22622 ,\
  0.89412 0.93356 0.83394 0.23787 ,\
  0.89804 0.93156 0.84165 0.24980 ,\
  0.90196 0.92953 0.84934 0.26200 ,\
  0.90588 0.92748 0.85699 0.27450 ,\
  0.90980 0.92544 0.86461 0.28730 ,\
  0.91373 0.92340 0.87219 0.30044 ,\
  0.91765 0.92141 0.87971 0.31392 ,\
  0.92157 0.91949 0.88716 0.32774 ,\
  0.92549 0.91766 0.89454 0.34196 ,\
  0.92941 0.91597 0.90182 0.35654 ,\
  0.93333 0.91446 0.90900 0.37150 ,\
  0.93725 0.91319 0.91605 0.38683 ,\
  0.94118 0.91220 0.92296 0.40252 ,\
  0.94510 0.91157 0.92971 0.41854 ,\
  0.94902 0.91136 0.93627 0.43483 ,\
  0.95294 0.91163 0.94263 0.45136 ,\
  0.95686 0.91244 0.94877 0.46804 ,\
  0.96078 0.91383 0.95469 0.48479 ,\
  0.96471 0.91584 0.96037 0.50150 ,\
  0.96863 0.91848 0.96583 0.51812 ,\
  0.97255 0.92175 0.97107 0.53454 ,\
  0.97647 0.92562 0.97610 0.55070 ,\
  0.98039 0.93007 0.98095 0.56660 ,\
  0.98431 0.93505 0.98562 0.58210 ,\
  0.98824 0.94052 0.99014 0.59727 ,\
  0.99216 0.94643 0.99453 0.61208 ,\
  0.99608 0.95274 0.99880 0.62654 ,\
  1.0 0.9593995073432898 1.0 0.6406264784793354)

# END