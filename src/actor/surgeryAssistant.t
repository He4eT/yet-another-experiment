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

++ AskTopic [me]
  " <q>You are part of an experiment
    taking place on this floor.</q>"
;

++ AskTopic [surgeryAssistant]
  " <q>I am an automatic assistant surgeon,
    model \'oN11ug7\'.
    <br>My main task is to help
    <b>Dr. O'Neill</b> with medical
    interventions and procedures.</q>"
;

++ AskTopic [dataCable, jack, dataPort]
  " <q>Thank you for fixing my data cable.</q>\b
    An old school text emoticon
    flashed across the robot's service display. "
;

++ AskTopic [dentalFloss, toothbrush, toothpaste]
  " <q>This is good for your teeth.</q>"
;

tFloor: Topic 'floor/experiment';
++ AskTopic [tFloor]
  " <q>The experiment involves
    a team and one or more subjects.
    <br>Experiment details
    are not available to you
    for security reasons.</q>"
;

tIncident: Topic 'accident/incident';
++ AskTopic [tIncident, labCoat, dumpster, tapeWall]
  " <q>Yesterday there was an
    accident that resulted in the
    destruction of some elements of the interior,
    equipment and injured <b>Dr. O'Neill</b>.\b
    Details are not available.</q>"
;

tCrew: Topic 'crew/team';
++ AskTopic [tCrew]
  " <q>The team on this floor consists of three people.\b
    The first is <b>Dr. O'Neill</b>, the surgeon.
    <br>The second is <b>Alice Dash</b>, the technician is
    responsible for all the equipment on this floor.
    <br>The third is <b>Mark Hopper</b>, the orderly and janitor.
    \bNames have been changed for security reasons.</q>"
;

tDoc: Topic 'dr dr. doc doctor o\'neill';
++ AskTopic [tDoc]
  " <q><b>Dr. O'Neill</b> is an experienced surgeon
    with extensive knowledge in several fields of medicine.\b
    Friends with <b>Alice Dash</b>.
    <br>He's a big fan of dogs.</q>"
;

tAlice: Topic 'alice dash';
++ AskTopic [tAlice]
  " <q><b>Alice Dash</b> maintains and configures
    the equipment that is used on this floor.\b
    She's a bookworm and a fan of dystopias.
    <br>Her favourite writer is George Orwell.</q>"
;

tMark: Topic 'mark hopper';
++ AskTopic [tMark]
  " <q><b>Mark Hopper</b> is responsible
    for the cleanliness of the floor
    and obedience of the subjects.\b
    Former professional athlete.
    <br>His left leg was replaced with a prosthetic device.</q>"
;
