#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

PLFILE=(rplpl-slurm*.out)
SPLFILE=(rplspl-slurm*.out)

echo "Start Times"
echo "==> ${PLFILE[0]} <=="
head ${PLFILE[0]} -n 1
echo
echo "==> ${SPLFILE[0]} <=="
head ${SPLFILE[0]} -n 1
echo
echo "End Times"
echo "==> ${PLFILE[0]} <=="
tail ${PLFILE[0]} -n 5
echo "==> ${SPLFILE[0]} <=="
tail ${SPLFILE[0]} -n 5
