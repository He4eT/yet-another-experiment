dataCable: PlugAttachable, Attachable, RoomPart
  'data cable/wire/cord'
  'data cable'
  @redRoom
  " Thick data cable with
    <<jack.isBroken ? 'damaged' : 'ugly'>>
    connector. "

  canAttachTo (obj) {
    return !jack.isBroken && obj == dataPort;
  }

  explainCannotAttachTo(obj) {
    obj != dataPort
      ? "This data cable can only be connected to the data port. "
      : jack.isBroken
        ? "The connector on data cable is broken. "
        : "";
  }

  dobjFor (Repair) remapTo(Repair, jack)
  dobjFor (RepairWith) remapTo(Repair, self)

  dobjFor (AttachTo) {
    action () {
      surgeryAssistant.setCurState(robotOnline);
      " Data cable pluged in.
        <br>There were service sounds and
        the surgical assistant began to show signs of life. ";
    }
  }
;

+ jack: Component
  'connector/jack'
  'connector'
  "<<jack.isBroken
    ? 'Broken connector.
      <br>One of the components of its body should be
      fixed with glue, duct tape or something similar'
    : 'Fixed connector.
      <br>The broken part is held carelessly'
  >>. "
  isBroken = true

  dobjFor (AttachTo) remapTo(AttachTo, dataCable, IndirectObject)

  dobjFor (Repair) {
    verify() {
      if (jack.isBroken) {
        illogical('
          This connector can be fixed
          with glue, duck tape or something similar. ');
      } else {
        illogical('The connector is already fixed. ');
      }
    }
  }
  dobjFor (RepairWith) {
    verify() {
      if (!jack.isBroken) {
        illogical('The connector is already fixed. ');
      }
      if (gIobj not in (
        dentalFloss,
        pieceOfTape
      )) {
        illogical('
          {That iobj/he} do{es}n\'t look useful
          for fixing the connector. ');
      }
    }
    action() {
      gIobj.moveInto(nil);
      jack.isBroken = nil;
      "The connector is now ugly, but serviceable. ";
    }
  }
;
