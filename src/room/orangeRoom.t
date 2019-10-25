orangeRoom: Room
  'Orange room'
  " You're standing in the large room.
    <br>The walls, floors and ceiling are
    completely covered with white plastic panels.
    <.p>
    In the upper left corner of the north wall
    you can see the orange number
    <q><<gameMain.experimentNumber>></q>
    half a meter high.
    <.p>
    The room contains
    an ascetic bed
    and a desk against the east wall."
;

+ Decoration
  'orange digits/number'
  'orange number'
  " Orange, huge and neat digits
    without additional explanation."
;

+ bed: Bed, Heavy
  'ascetic bed'
  'ascetic bed'
  "It has a plastic frame and an unsprung mattress."
;

+ desk: Heavy, Surface
  'white desk/table'
  'white desk'
  " This white desk has some marks on working surface
    and a single drawer."
;

  ++ Decoration
    'letters/label/mark/marks'
    'some scratched letters'
    "You can't make out the inscription."
  ;

  ++ drawer: Component, OpenableContainer
    'drawer'
    'drawer'
    "It looks like it should open easily. "
  ;

    +++ whiteCube: Thing
      'white cube'
      'white cube'
      "Small glossy white cube";

    +++ blackCube: Thing
      'black cube'
      'black cube'
      "Small glossy black cube";
