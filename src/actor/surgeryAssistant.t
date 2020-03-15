surgeryAssistant: Person
  'robotic surgery robot/cyborg/assistant'
  'surgeon assistant'
  @redRoom
  " The torso of cybernetic assistant surgeon
    is wired to the ceiling.
    <br>Cameras are scanning the room.
    various servos, units and cables make distinctive sounds,
    the bulky arms slowly sway."
;

+ HermitActorState
  specialDesc = "Ttttest"
  noResponse = "
    The surgical robot is not responding.
    <br>You can see the message <q>Connection lost</q> on the indicator display."
  isInitState = true
;

dataPort: PlugAttachable, Attachable, Fixture
  'data port/outlet/socket'
  'data port'
  @redRoom
;
