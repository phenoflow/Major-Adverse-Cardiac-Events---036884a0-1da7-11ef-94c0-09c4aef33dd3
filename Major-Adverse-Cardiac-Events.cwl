cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  major-adverse-cardiac-events-mace-infarct---primary:
    run: major-adverse-cardiac-events-mace-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  major-adverse-cardiac-events-mace-aborted---primary:
    run: major-adverse-cardiac-events-mace-aborted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-infarct---primary/output
  major-adverse-cardiac-events-mace-myocard---primary:
    run: major-adverse-cardiac-events-mace-myocard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-aborted---primary/output
  subendocardial-major-adverse-cardiac-events-mace---primary:
    run: subendocardial-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-myocard---primary/output
  major-adverse-cardiac-events-mace-cereb---primary:
    run: major-adverse-cardiac-events-mace-cereb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: subendocardial-major-adverse-cardiac-events-mace---primary/output
  coronary-major-adverse-cardiac-events-mace---primary:
    run: coronary-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-cereb---primary/output
  major-adverse-cardiac-events-mace-lacunar---primary:
    run: major-adverse-cardiac-events-mace-lacunar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: coronary-major-adverse-cardiac-events-mace---primary/output
  major-adverse-cardiac-events-mace-precerebr---primary:
    run: major-adverse-cardiac-events-mace-precerebr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-lacunar---primary/output
  lateral-major-adverse-cardiac-events-mace---primary:
    run: lateral-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-precerebr---primary/output
  other-major-adverse-cardiac-events-mace---primary:
    run: other-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: lateral-major-adverse-cardiac-events-mace---primary/output
  major-adverse-cardiac-events-mace-brainstem---primary:
    run: major-adverse-cardiac-events-mace-brainstem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-major-adverse-cardiac-events-mace---primary/output
  major-adverse-cardiac-events-mace-occlus---primary:
    run: major-adverse-cardiac-events-mace-occlus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-brainstem---primary/output
  major-adverse-cardiac-events-mace-asystole---primary:
    run: major-adverse-cardiac-events-mace-asystole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-occlus---primary/output
  major-adverse-cardiac-events-mace-unspecif---primary:
    run: major-adverse-cardiac-events-mace-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-asystole---primary/output
  major-adverse-cardiac-events-mace-basal---primary:
    run: major-adverse-cardiac-events-mace-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-unspecif---primary/output
  major-adverse-cardiac-events-mace-steno---primary:
    run: major-adverse-cardiac-events-mace-steno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-basal---primary/output
  major-adverse-cardiac-events-mace-capsule---primary:
    run: major-adverse-cardiac-events-mace-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-steno---primary/output
  major-adverse-cardiac-events-mace-hemisphere---primary:
    run: major-adverse-cardiac-events-mace-hemisphere---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-capsule---primary/output
  major-adverse-cardiac-events-mace-communicating---primary:
    run: major-adverse-cardiac-events-mace-communicating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-hemisphere---primary/output
  major-adverse-cardiac-events-mace-haemorrhage---primary:
    run: major-adverse-cardiac-events-mace-haemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-communicating---primary/output
  major-adverse-cardiac-events-mace-sided---primary:
    run: major-adverse-cardiac-events-mace-sided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-haemorrhage---primary/output
  major-adverse-cardiac-events-mace-elevation---primary:
    run: major-adverse-cardiac-events-mace-elevation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-sided---primary/output
  major-adverse-cardiac-events-mace-muscle---primary:
    run: major-adverse-cardiac-events-mace-muscle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-elevation---primary/output
  intracranial-major-adverse-cardiac-events-mace---primary:
    run: intracranial-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-muscle---primary/output
  subarachnoid-major-adverse-cardiac-events-mace---primary:
    run: subarachnoid-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: intracranial-major-adverse-cardiac-events-mace---primary/output
  major-adverse-cardiac-events-mace-embolism---primary:
    run: major-adverse-cardiac-events-mace-embolism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: subarachnoid-major-adverse-cardiac-events-mace---primary/output
  major-adverse-cardiac-events-mace-ruptur---primary:
    run: major-adverse-cardiac-events-mace-ruptur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-embolism---primary/output
  vertebral-major-adverse-cardiac-events-mace---primary:
    run: vertebral-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-ruptur---primary/output
  right-major-adverse-cardiac-events-mace---primary:
    run: right-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: vertebral-major-adverse-cardiac-events-mace---primary/output
  septal-major-adverse-cardiac-events-mace---primary:
    run: septal-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: right-major-adverse-cardiac-events-mace---primary/output
  ischaemic-major-adverse-cardiac-events-mace---primary:
    run: ischaemic-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: septal-major-adverse-cardiac-events-mace---primary/output
  nontraumatic-major-adverse-cardiac-events-mace---primary:
    run: nontraumatic-major-adverse-cardiac-events-mace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ischaemic-major-adverse-cardiac-events-mace---primary/output
  major-adverse-cardiac-events-mace-infarctn---primary:
    run: major-adverse-cardiac-events-mace-infarctn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: nontraumatic-major-adverse-cardiac-events-mace---primary/output
  major-adverse-cardiac-events-mace-posterior---primary:
    run: major-adverse-cardiac-events-mace-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-infarctn---primary/output
  adverse---primary:
    run: adverse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: major-adverse-cardiac-events-mace-posterior---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: adverse---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
