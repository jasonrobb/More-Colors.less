#!/bin/sh

numberA=0
numberB=%fill:numbers%

until [ $numberA == %fill:numbers% ]; do
    echo "@black$numberB: fadeout(@black, $numberA%);"
    numberA=$((numberA + 1))
    numberB=$((numberB - 1))
done

# numberA=0
# numberB=%fill:cycles%
# 
# until [ $numberA == %fill:cycles% ]; do
#     echo "-$numberA $numberA 0 mix(@color, @black, 90%),"
#     numberA=$((numberA + 1))
#     numberB=$((numberB - 1))
# done
# 
# 
# number=1
# 
# until [ $number == %fill:cycles% ]; do
#     echo "$number"
#     number=$((number + 1))
# done
#
# 
# numberA=0
# numberB=%fill:numbers%
# 
# until [ $numberA == %fill:numbers% ]; do
#     echo "@black$numberB: fadeout(@black, $numberA%);"
#     numberA=$((numberA + 1))
#     numberB=$((numberB - 1))
# done