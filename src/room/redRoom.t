redRoom: Room
  'Operating room'
  " Operating room"

  west = operatingRoomDoor
;

+ operatingRoomDoor: Door, RoomPartItem
  'armored operating door*doors'
  'armored door'
  "An armored door with a massive locking mechanism. "
  specialNominalRoomPartLocation = defaultWestWall
;
