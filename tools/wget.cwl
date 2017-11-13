#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

baseCommand: wget

inputs:

  output_name:
    type: string
    inputBinding:
      position: 1
      prefix: -O

  url:
    type: string
    inputBinding:
      position: 2

outputs:

  output_file:
    type: File
    outputBinding:
      glob: $(inputs.output_name)
