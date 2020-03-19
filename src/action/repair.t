DefineTAction(Repair);

VerbRule(Repair)
  ('repair' | 'fix') singleDobj : RepairAction
  verbPhrase = 'repair/repairing (what)'
;

modify Thing
  dobjFor (Repair) {
    verify () {
      illogical('{You/he} do{es}n\'t know how to repair {that dobj/him}. ');
    }
  }
;

DefineTIAction(RepairWith);

VerbRule(RepairWith)
  ('repair' | 'fix') dobjList 'with' singleIobj : RepairWithAction
  verbPhrase = 'repair/repairing (what) (with what)'
;

modify Thing
  dobjFor (RepairWith) {
    verify () {
      illogical('{That dobj/he} {is}n\'t something {you/he} can fix. ');
    }
  }
  iobjFor (RepairWith) {
    verify () {
      illogical('{That iobj/he} do{es}n\'t look very useful as a tool. ');
    }
  }
;
