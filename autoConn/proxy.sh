#!/bin/bash
ssh -qTfnN -D 7070 molly
ssh -qTfnN -D 7071 qa
ssh -qTfnN -D 7072 vpn
ssh -qTfnN -D 7073 sonia
ssh -qTfnN -D 7074 julia
#ssh -N -f -R 6000:localhost:22 vpn
