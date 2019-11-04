yellowRoom: Room
  'Yellow room'
  " This is another room which every surface
    covered with matte white panels.
    <.p>
    There is a door in the north direction."
  north = orangeDoorOutside
;

/* Doors */

+ orangeDoorOutside: Door -> orangeDoor
  'sliding door'
  'door number <<gameMain.experimentNumber>>'
  "Door number <<gameMain.experimentNumber>>.<br>"
;
