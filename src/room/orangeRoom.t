orangeRoom: DarkRoom
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
  south = orangeDoor
;

/* Doors */

+ orangeDoor: Door, AutoClosingDoor
  'white sliding door'
  'sliding door'
  "White sliding door in south wall.<br>"
  isListed = true;

/* Lights */

+ OnOffControl, Fixture
  'small luminous switch/light/lights'
  'small luminous switch'
  "It's a small luminous switch on the wall"

  isListed = true
  brightness = 1

  dobjFor (TurnOn) {
    preCond = inherited + actorStanding
    action () { inherited(); }
  }
  makeOn (val) {
    inherited(val);
    location.brightness = val ? 3 : 0;
    isListed = val ? nil : true;

    val
      ? "You hear slight hum of neon lamps, followed with bright light."
      : "Darkness filled the room.";
  }
;

+ Decoration
  'neon lamp/lamps'
  'neon lamps'
  "Ordinary neon lamps emit cold light."
;

/* Content */

+ Decoration
  'orange digits/number'
  'orange number'
  " Orange, huge and neat digits
    without additional explanation."
;

+ orangeBed: Bed, Heavy
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
