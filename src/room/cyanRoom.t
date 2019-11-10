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
    <br>Enclosed by safety tape,
    the doorway in the west wall
    looks damaged and corrupted.
    <.p>"

  north = yellowRoom
  east = operatingRoomDoorOutside
;

+ Decoration, Fixture
  'central square area/outline'
  'square outline'
  " The central square area on the floor
    looks like some kind of markup.
    <br>Its purpose is unclear to you."
;

+ operatingRoomDoorOutside: LockableWithKey, Door, RoomPartItem
  'armored operating door*doors'
  'armored door'
  " Armored door marked <q>Operating room</q>.
    <br>Next to the door is a keycard reader
    and a sign <q>Restricted area</q>.<br>"
  specialNominalRoomPartLocation = defaultEastWall
;

+ Decoration, Fixture, RoomPartItem
  'keycard reader'
  'keycard reader'
  "Small security device without any visible indicators."
  specialNominalRoomPartLocation = defaultEastWall
;
