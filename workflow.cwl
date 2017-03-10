#!/usr/bin/env cwl-runner

cwlVersion: v1.0

class: Workflow

requirements:
  - class: StepInputExpressionRequirement
  - class: SubworkflowFeatureRequirement

inputs:
  []

outputs:
  - id: subworkflow_output
    type: File
    outputSource: subworkflow/echo_filename_output

steps:
  - id: subworkflow
    run: subworkflow.cwl
    in:
      - id: input_state
        valueFrom: "some_state"
    out:
      - id: echo_filename_output
