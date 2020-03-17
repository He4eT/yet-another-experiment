surgeryAssistant: Person
  'robotic surgery robot/cyborg/assistant'
  'surgeon assistant'
  @redRoom
  " The torso of cybernetic assistant surgeon
    is wired to the ceiling. "
;

+ HermitActorState
  specialDesc = "
    Ttttest"
  stateDesc = "
    <br>The mechanism shows no signs of life
    and indicators show the missing network connection.
    <br>
    <br>You can see an empty data port
    on the robot's body
    and a data cable hanging from the ceiling. "
  noResponse = "
    The surgical robot is not responding.
    <br>You can see the message
    <q>Connection lost</q> on the indicator display. "
  isInitState = true
;

+ robotOnline: ConversationReadyState
  specialDesc = "
    Robot ready to talk. "
  stateDesc = "
    <br>Cameras are scanning the room.
    various servos, units and cables make distinctive sounds,
    the bulky arms slowly sway. "
;

dataPort: PlugAttachable, Attachable, Fixture
  'data port/outlet/socket'
  'data port'
  @redRoom
  "Industry standard connector for automated assistants. "
;
