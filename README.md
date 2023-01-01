# A library to simulate realistic injuries on a game agent.

### Example usage:

'local human = require("lib.humanBodyInjuryGenerator")

local body = human.getHumanBody()
body.causeInjuries()

print(body.getPrettyMedicalReport("Lt. John Doe"))'