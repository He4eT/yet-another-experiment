pinkRoom: Room
  'Changing room'
  "Empty room with keycard reader."

  east = cyanRoom
;

+ Decoration, RoomPartItem
  'keycard reader'
  'keycard reader'
  "Small security device without any visible indicators."
  specialNominalRoomPartLocation = defaultSouthWall
;

+ Decoration
  'label'
  'label'
  "Label says <q>CAUTION! Do Not Load Over Top of Container</q>."
;

+ dumpster: OpenableContainer
  'big garbage container/dumpster'
  'dumpster'
  " A large metal container. <br>
    The label says
    <q>CAUTION! Do Not Load Over Top of Container</q>.
    <br>"
;


++ Decoration
  'construction waste/bricks/fragments/remains'
  'construction waste'
  " Gray bricks,
    fragments of the wall and
    the remains of the nearest door.
    <br>Nothing intresting."
  isListed = true
;
