dataCable: PlugAttachable, Attachable, RoomPart
  'data cable/wire/cord/jack/plug'
  'data cable'
  @redRoom
  "Thick data cable with damaged connector."

  explainCannotAttachTo(obj) {
    obj != dataPort
      ? "This data cable can only be connected to the data port."
      : jack.isBroken
        ? "The connector on data cable is broken."
        : "";
  }

  canAttachTo(obj) {
    return !jack.isBroken && obj == dataPort;
  }
;

+ jack: Component
  'connector'
  'connector'
  "<<jack.isBroken
    ? 'Broken connector.
      <br>One of the components of its body should be
      fixed with glue, duct tape or something similar.'
    : 'Fixed connector.
      <br>The broken part is held carelessly.'
  >>"

  dobjFor (AttachTo) remapTo(AttachTo, dataCable, IndirectObject)

  isBroken = true;
;
