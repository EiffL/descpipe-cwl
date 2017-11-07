#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

requirements:
- $import: tc_tools-docker.yml

baseCommand: pz_stack

inputs:
  photoz_catalog:
    type: File
    inputBinding:
      position: 1

  tomo_catalog:
    type: File
    inputBinding:
      position: 2

  nz_filename:
    type: string
    inputBinding:
      position: 3


outputs:
  nz_out:
    type: File
    outputBinding:
      glob: $(inputs.nz_filename)
