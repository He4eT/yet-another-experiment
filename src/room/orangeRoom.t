orangeRoom: DarkRoom
  'Living unit'
  " You're standing in the small room.
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
    and a desk against the east wall.
    </p>
    The bathroom is to the west,
    the exit door leads to the south. "
  south = orangeDoor
  west = brightness == 3 ? orangeBathroom : nil
;

/* Doors */

+ orangeDoor: RoomPartItem, Door, AutoClosingDoor
  'white sliding door'
  'sliding door'
  "White sliding door in south wall.<br>"
  specialNominalRoomPartLocation = defaultSouthWall
;

/* Lights */

+ RoomPartItem, OnOffControl, Fixture
  '(small) luminous switch/light*lights'
  'small luminous switch'
  "It's a small luminous switch on the wall. "
  specialNominalRoomPartLocation = defaultSouthWall

  isListed = true
  brightness = 1

  dobjFor (TurnOn) {
    preCond = inherited + actorStanding
  }
  makeOn (val) {
    inherited(val);
    location.brightness = val ? 3 : 0;
    isListed = val ? nil : true;

    val
      ? " You hear slight hum of neon lamps,
          followed with bright light. "
      : " Darkness filled the room. ";
  }
;

/* Content */

+ RoomPartItem, Decoration
  'orange digits*digits/number*numbers'
  'orange number'
  " Orange, huge and neat digits
    without additional explanation. "
  specialNominalRoomPartLocation = defaultNorthWall
;

+ Bed, Heavy
  'ascetic bed'
  'ascetic bed'
  "It has a plastic frame and an unsprung mattress. "
;

+ Heavy, Surface
  'white desk/table'
  'white desk'
  " This white desk has some marks on working surface
    and a single drawer. "
;

++ Decoration
  'letters/label/mark*marks'
  'some scratched letters'
  "You can't make out the inscription. "
;

++ Component, OpenableContainer
  'drawer'
  'drawer'
  "It looks like it should open easily. "
;

+++ Thing
  'lighter'
  'lighter'
  "The lighter that ran out of fuel. ";
