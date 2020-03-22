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

+ Decoration
  'indicator display'
  'indicator display'
  "Small indicator display. "
;

+ Decoration
  'servos/units/arms/hands'
  'assistant details'
  "Parts of this mechanism look very technologically advanced. "
;

/* Offline */

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

/* Online */

+ robotOnline: ActorState
  specialDesc = "
    The surgical assistant examines the room. "
  stateDesc = "
    <br>Cameras are scanning the room,
    various servos, units and cables make distinctive sounds,
    the bulky arms slowly sway. "
;

++ DefaultAnyTopic, ShuffledEventList [
  'The assistant ignores you.',
  'The assistant doesn\'t respond.',
  'The robot shows no interest.'
];

++ DefaultAskTellTopic, ShuffledEventList [
  '<q>Bleep! bloop!</q>',
  '<q>I can\'t answer that.</q>',
  '<q>You don\'t have required permission.</q>',
  '<q>Access Denied.</q>',
  '<q>This request was rejected for security reasons.</q>'
];

++ HelloTopic, ShuffledEventList [
  ' <q>Hello there,</q> you say.\b
    <q>Assistant surgeon, model \'oN11ug7\'.
    How can I help you?</q> the robot looks at you.'
][
  ' <q>Er...</q> you start.\b
    <q>How can I help you?</q> he asks. ',
  ' <q>It\'s me again.</q> you tell.\b
    <q>How can I help you?</q> he answers.'
];

tCrew: Topic 'crew/team';
++ AskTopic [tCrew]
  " <q>The team on this floor consists of three people.\b
    The first is Dr. O'Neill, the surgeon.
    <br>The second is Alice Dash, the technician is
    responsible for all the equipment on this floor.
    <br>The third is Mark Hopper, the orderly and janitor.</q>"
;
