cyanRoom: Room
  'Square room'
  " This is a large square room
    with white plastic panels everywhere.
    <.p>
    In the center
    on the floor is the
    square area's outline.
    <.p>
    The north direction leads to
    living units.
    <br>On the east wall you can see
    the armored door that says <q>Operating room</q>.
    <br><<tapeWall.isRagged
      ? 'The'
      : 'Enclosed by safety tape, the'>>
    doorway in the west wall
    looks damaged and corrupted.
    <.p>"

  north = yellowRoom
  east = operatingRoomDoorOutside
  west: FakeConnector {
    "Striped safety tape blocks your way."
  }
;

+ Decoration
  'central square area/outline'
  'square outline'
  " The central square area on the floor
    looks like some kind of markup.
    <br>Its purpose is unclear to you. "
;

+ Decoration
  'corrupted doorway'
  'doorway'
  "The corrupted doorway. "
  specialNominalRoomPartLocation = defaultWestWall
;

+ operatingRoomDoorOutside: LockableWithKey, Door
  -> operatingRoomDoor
  'armored operating door*doors'
  'armored door'
  " It's an armored door marked <q>Operating room</q>
    and a massive mechanical locking device with a circle keyhole.
    <br>Next to the door is a sign <q>Restricted area</q>.<br>"
  keyList = [ labKey ]
  knownKeyList = [ labKey ]
  specialNominalRoomPartLocation = defaultEastWall
;

++ Decoration
  'massive mechanical locking device'
  'locking device'
  "It's a part of an armored door. "
;
