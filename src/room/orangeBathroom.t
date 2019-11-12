orangeBathroom: Room
  'Bathroom'
  " Tiny bathroom with shower cabine, toilet and sink.
    <br>On the wall you can see a locker with a mirror door.<.p>
    The only exit leads to the east."
  east = orangeRoom
;

+ Decoration
  'shower cabine'
  'shower cabine'
  "It's a minimalistic shower cabine."
;

+ Decoration
  'toilet'
  'toilet'
  "An ordinary toilet."
;

+ Decoration
  'faucet sink'
  'sink'
  "There's a water faucet and a small sink."
;

+ OpenableContainer, Fixture
  'mirror/locker/door'
  'locker with mirror door'
  " <<isOpen
      ? 'This is'
      : 'You see your face in the mirror door of'>>
    a locker for toiletries.<br>"
;

++ painkillers: Thing
  'pills/painkillers'
  'painkillers'
  "A small orange bottle of pills.";
