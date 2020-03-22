redRoom: Room
  'Operating room'
  " Spacious operating room.
    <br>In the center of the room,
    under a system of lights,
    there is an operating table
    surrounded by medical equipment.
    <br>A table with medical supplies
    is located against the wall. "

  west = operatingRoomDoor
;

+ operatingRoomDoor: LockableWithKey, Door, RoomPartItem
  'armored operating door*doors'
  'armored door'
  "An armored door with a massive locking mechanism. "
  specialNominalRoomPartLocation = defaultWestWall
;

+ Bed, Heavy
  'operating table'
  'operating table'
  " Adjustable operating table with
    multiple clips and mounts.
    <br>It looks scary and
    as uncomfortable as possible. "
;

+ Decoration
  'light*lights/lamp*lamps/system'
  'light system'
  " Complex lighting system.
    <br>Only a few lamps are lit. "
;
