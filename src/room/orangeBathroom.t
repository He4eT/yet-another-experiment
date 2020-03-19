orangeBathroom: Room
  'Bathroom'
  " Tiny bathroom with shower cabine, toilet and sink.
    <br>On the wall you can see a locker with a mirror door.<.p>
    The only exit leads to the east. "
  east = orangeRoom
;

+ Decoration
  'shower cabine'
  'shower cabine'
  "It's a minimalistic shower cabine. "

  dobjFor (Take) {
    verify () {
      illogical('Not now. ');
    }
  }
;

+ Decoration
  'toilet'
  'toilet'
  "An ordinary toilet. "
;

+ Decoration
  'faucet sink'
  'sink'
  "There's a water faucet and a small sink. "
;

+ bathroomLocker: OpenableContainer, Fixture
  'mirror/locker/door'
  'locker with mirror door'
  " <<isOpen
      ? 'This is'
      : 'You see your face in the mirror door of'>>
    a locker for toiletries.<br>"
;

++ toothbrush: Thing
  'brush/toothbrush'
  'toothbrush'
  "A small white toothbrush. "
;

++ toothpaste: Thing
  'paste/toothpaste'
  'toothpaste'
  "An empty tube of toothpaste. "
;
