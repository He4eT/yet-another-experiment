dataCable: PlugAttachable, Attachable, RoomPart
  'data cable/wire/cord'
  'data cable'
  @redRoom
  "Thick data cable with damaged connector."

  canAttachTo (obj) {
    return !jack.isBroken && obj == dataPort;
  }

  explainCannotAttachTo(obj) {
    obj != dataPort
      ? "This data cable can only be connected to the data port."
      : jack.isBroken
        ? "The connector on data cable is broken."
        : "";
  }

  dobjFor (Repair) remapTo(Repair, jack)
  dobjFor (RepairWith) remapTo(Repair, self)

  dobjFor (AttachTo) {
    action () {
      "Data cable pluged in.";
    }
  }
;

+ jack: Component
  'connector/jack'
  'connector'
  "<<jack.isBroken
    ? 'Broken connector.
      <br>One of the components of its body should be
      fixed with glue, duct tape or something similar.'
    : 'Fixed connector.
      <br>The broken part is held carelessly.'
  >>"
  isBroken = true

  dobjFor (AttachTo) remapTo(AttachTo, dataCable, IndirectObject)

  dobjFor (Repair) {
    verify() {
      illogical('This connector can be fixed
        with glue, duck tape or something similar.');
    }
  }
  dobjFor (RepairWith) {
    verify() {
      illogical('Code here');
    }
  }
;
