#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

inputs:
  photoz_catalog: File
  bin_column: string
  nbin: int
  zmin: float
  zmax: float
  tomo_filename: string
  nz_filename: string

outputs:
  pz_out:
    type: File
    outputSource: pz_stack/nz_out

steps:
  tomography:
    run: ../tools/tc_tools-tomography.cwl
    in:
      photoz_catalog: photoz_catalog
      bin_column: bin_column
      nbin: nbin
      zmin: zmin
      zmax: zmax
      tomo_filename: tomo_filename
    out: [tomo_catalog]

  pz_stack:
    run: ../tools/tc_tools-pz_stack.cwl
    in:
      photoz_catalog: photoz_catalog
      tomo_catalog: tomography/tomo_catalog
      nz_filename: nz_filename
    out: [nz_out]
