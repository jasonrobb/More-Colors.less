#!/bin/sh

numberA=0
numberB=%fill:numbers%

until [ $numberA == %fill:numbers% ]; do
    echo "@black$numberB: fadeout(@black, $numberA%);"
    numberA=$((numberA + 1))
    numberB=$((numberB - 1))
done
