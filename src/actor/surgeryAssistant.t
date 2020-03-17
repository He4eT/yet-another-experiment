surgeryAssistant: Person
  'robotic surgery robot/cyborg/assistant'
  'surgeon assistant'
  @redRoom
  " The torso of cybernetic assistant surgeon
    is wired to the ceiling. "

  isHim = true
  iobjFor (AttachTo) remapTo(AttachTo, DirectObject, dataPort)
 ;

+ dataPort: PlugAttachable, Attachable, Fixture
  'data port/outlet/socket'
  'data port'
  "Industry standard port for automated assistants. "
;

+ HermitActorState
  specialDesc = "
    There's a surgical assistant in the corner of the room. "
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

+ robotOnline: InConversationState
  specialDesc = "
    The surgical assistant examines the room. "
  stateDesc = "
    <br>Cameras are scanning the room.
    various servos, units and cables make distinctive sounds,
    the bulky arms slowly sway. "
;

++ DefaultAnyTopic, ShuffledEventList [
  '<q>You don\'t have permission.</q>',
  '<q>Access Denied.</q>',
  '<q>The request was rejected for security reasons.</q>'
];

++ HelloTopic, ShuffledEventList
  [
     '<q>Hello there,</q> you say.\b
      <q>Assistant surgeon, model \'oN11ug7\'.
      How can I help you?</q> the robot looks at you.'
  ]
  [
     '<q>Er...</q> you start.\b
      <q>How can I help you?</q> he asks. ',
      '<q>It\'s me again.</q> you tell.\b
      <q>How can I help you?</q> he answers.'
  ]
;
