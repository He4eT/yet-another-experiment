pinkRoom: Room
  'Changing room'
  " An elevator vestibule with a row of lockers,
    a dumpster and posters with safety rules."

  east = cyanRoom
;

+ Decoration
  'safety rule*rules/poster*posters'
  'posters'
  "<q><<rules.doScript()>></q>"

  rules: ShuffledEventList {[
    '1 day without <b>incident</b>.',
    'Wear personal protective equipment necessary for the job.',
    'Keep your work area clean.',
    'Report all injuries.',
    'Report any unsafe conditions.',
    'Always use equipment/tools/machinery safely and properly.'
  ]}
;

+ Decoration, RoomPartItem
  'keycard reader'
  'keycard reader'
  "Small security device without any visible indicators."
  specialNominalRoomPartLocation = defaultSouthWall
;

+ Decoration
  'dumpster label'
  'dumpster label'
  "Label says <<dumpster.label>>."
;

+ dumpster: OpenableContainer
  'big garbage container/dumpster'
  'dumpster'
  " A large metal container. <br>
    The label says
    <<dumpster.label>>.
    <br>"

  label = '<q>CAUTION! Do Not Load Over Top of Container</q>'
  isListed = nil
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
