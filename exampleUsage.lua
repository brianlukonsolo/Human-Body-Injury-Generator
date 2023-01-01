local bodyGen = require("lib.humanBodyInjuryGenerator")

local human = bodyGen.getHumanBody()
human.causeInjuries()

print(human.getPrettyMedicalReport("Lt. John Doe"))