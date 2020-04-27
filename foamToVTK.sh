#!/bin/bash
echo "--------------------------------------------------------"
echo " For ParaView (to show values at start time):"
echo "--------------------------------------------------------"
echo " Copy extra scalar fields to 0..."
cp zeroGradScalar ./0/betaD && \
cp zeroGradScalar ./0/wallBetaD && \
cp zeroGradScalar ./0/etaEff && \
cp zeroGradScalar ./0/rhoPhi && \
cp zeroGradScalar ./0/shearRate && \
cp zeroGradScalar ./0/shearRateAlpha1 && \
cp zeroGradScalar ./0/rho && \
echo "--------------------------------------------------------"
echo " Copy extra vector fields to 0..."
cp zeroGradVector ./0/Ualpha1 && \
cp zeroGradVector ./0/VdjGR && \
cp zeroGradVector ./0/VdjSR && \
echo "--------------------------------------------------------"
nohup foamToVTK &

