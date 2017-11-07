#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

requirements:
- $import: tc_tools-docker.yml

baseCommand: tomography

inputs:
  bin_column:
    type: string
    inputBinding:
      position: 1
      prefix: --bin_column

  nbin:
    type: int
    inputBinding:
      position: 2
      prefix: --nbin

  zmin:
    type: float
    inputBinding:
      position: 3
      prefix: --zmin

  zmax:
    type: float
    inputBinding:
      position: 4
      prefix: --zmax

  photoz_catalog:
    type: File
    inputBinding:
      position: 5

  tomo_filename:
    type: string
    inputBinding:
      position: 6


outputs:
  tomo_catalog:
    type: File
    outputBinding:
      glob: $(inputs.tomo_filename)
