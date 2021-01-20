var partyKidSkins=[
  "http://assets.tribesthatmay.be/images/skins/chad.png",
  "http://assets.tribesthatmay.be/images/skins/brad.png",
  "http://assets.tribesthatmay.be/images/skins/karen.png",
  "http://assets.tribesthatmay.be/images/skins/kara.png"
];

var partyKidNames=[
  "sparkle",
  "spider",
  "dusty",
  "possum",
  "moist",
  "speedbump",
  "fluffy"
];

var partyKidWorldLines = [
  "I can't find my camp.",
  "I can't find the restrooms.",
  "It's pretty dusty here.",
  "I wonder how hot it gets in the day.",
  "I wonder how cold it gets at night.",
  "I wonder where I left my bag."
]

var partyKidInteractLines = [
  "Did you hear that?",
  "Did you see that?",
  "Did you smell that?",
  "Can you taste these sounds?",
  "Can you hear these smells?",
  "Oh, hello",
  "Do we know each other?",
  "Do you know where Distrikt is?",
  "Do you know where I can find water?",
  "You startled me!",
  "Woah, who are you?",
  "Do you have any water?",
  "Do you know where I can find a grilled cheese?",
  "So I'm looking for this water bottle...",
  "Do you know where I can get a bike repaired?"
];

var partyKidPlayerLines = [
  "Do you know where I can find fuelium?",
  "Have you seen my chocobo?",
  "I can't find my snacks, I left them by a lamp post.",
  "There was a village around here somewhere.",
  "My camp is just past that dune"
];

var partyKidNpcLines = [
  "Can I borrow your bike?",
  "Want to buy some blocks?",
  "Where is Daft Punk playing?",
  "Do you know where Distrikt is?",
  "I've been awake for three days.",
  "I need someone to take a photo of me.",
  "Can I come back to your camp?",
  "This place is kinda freaky.",
  "Do you have any drugs?",
  "Do you know where I can find a bar?"
];

function randomElement(someList, p_dupes) {
  var dupes = [];
  if (p_dupes != undefined) {
    dupes = p_dupes;
  }
  var choices = [];
  for (var i=0; i < someList.length; i++) {
    var a_choice = someList[i]
    if (dupes.indexOf(a_choice) < 0) {
      choices.push(a_choice);
    }
  }
  if (choices.length == 0 ) {
    return null;
  }
  var s_number = Math.floor(Math.random() * choices.length);
  return choices[s_number];
}

function init(event) {
  event.npc.display.setSkinUrl(randomElement(partyKidSkins));
  event.npc.display.setSkinTexture("customnpcs:textures/entity/humanmale/steve.png");
  event.npc.display.setName(randomElement(partyKidNames));
  event.npc.display.setShowName(1);

  event.npc.stats.setMaxHealth(10);
  event.npc.stats.setAggroRange(5);
  event.npc.stats.setRespawnType(3);  // no
  event.npc.stats.setHealthRegen(0);
  event.npc.stats.melee.setStrength(1);
  event.npc.stats.melee.setRange(1);
  event.npc.stats.melee.setDelay(15);

  event.npc.ai.setAnimation(5);       // dancing
  event.npc.ai.setWanderingRange(10);
  event.npc.ai.setWalkingSpeed(5);
  event.npc.ai.setMovingType(1);      // wandering
  event.npc.ai.setNavigationType(0);  // ground

  var w_lines = [];
  for (var slot = 0; slot < 8; slot++) {
    var w_line = randomElement(partyKidWorldLines, w_lines);
    if (w_line != null) {
      event.npc.advanced.setLine(2, slot, w_line, "");
      w_lines.push(w_line);
    }
  }
  var p_lines = [];
  for (var slot = 0; slot < 8; slot++) {
    var p_line = randomElement(partyKidPlayerLines.concat(partyKidInteractLines), p_lines);
    if (p_line != null) {
      event.npc.advanced.setLine(0, slot, p_line, "");
      p_lines.push(p_line);
    }
  }

  var n_lines = [];
  for (var slot = 0; slot < 8; slot++) {
    var n_line = randomElement(partyKidNpcLines.concat(partyKidInteractLines), n_lines);
    if (n_line != null) {
      event.npc.advanced.setLine(5, slot, n_line, "");
      n_lines.push(n_line);
    }
  }

}
