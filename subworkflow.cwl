#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: Workflow

inputs:
  - id: input_state
    type: string

outputs:
  - id: echo_filename_output
    type: File
    outputSource: echo_filename/output

steps:
  - id: echo_filename
    run: echo.cwl
    in:
      - id: input
        source: input_state
    out:
      - id: output
