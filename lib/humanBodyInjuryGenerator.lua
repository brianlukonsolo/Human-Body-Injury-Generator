local _M = {}

function _M.seedRandomGenerator()
  math.randomseed(os.time())
  math.random()
end

function _M.generateRandomTrueOrFalse(unlikelyhoodChanceOfBoolTrueAsInt)
	math.randomseed(os.time())
	math.random()
	
	local booleanChoice = false
	local rnd = nil

	if unlikelyhoodChanceOfBoolTrueAsInt == nil then
		rnd = math.random(0,1)
	else
		rnd = math.random(0, unlikelyhoodChanceOfBoolTrueAsInt)
	end
	
	if rnd == 1 then
		booleanChoice = true
	end

	return booleanChoice
end

--IMPORTANT: no special characters in any injury names!
function _M.getRandomLegInjury()
	local legInjuries  = {
		{ name = "scratch", isFatal = false, isBleeding = false, isShellshocked = false, isInPain = false },
		{ name = "small cut", isFatal = false, isBleeding = false, isShellshocked = false, isInPain = _M.generateRandomTrueOrFalse() },
		{ name = "deep cut", isFatal = false, isBleeding = true, isShellshocked = false, isInPain = _M.generateRandomTrueOrFalse() },
		{ name = "graze", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = false },
		{ name = "dislocated", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "bone bruise", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() },
		{ name = "broken bone", isFatal = false, isBleeding = true, isShellshocked = _M.generateRandomTrueOrFalse(),  isInPain = true },
		{ name = "severe bruise", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = true },
		{ name = "severe deep cut", isFatal = false, isBleeding = true, isShellshocked = _M.generateRandomTrueOrFalse(),  isInPain = true }
	}
	local randomInjuryIndex = math.random(1, #legInjuries)

	return legInjuries[randomInjuryIndex]
end

function _M.getRandomArmInjury()
	local armInjuries  = {
		{ name = "scratch", isFatal = false, isBleeding = false, isShellshocked = false, isInPain = false },
		{ name = "small cut", isFatal = false, isBleeding = false, isShellshocked = false, isInPain = _M.generateRandomTrueOrFalse() },
		{ name = "deep cut", isFatal = false, isBleeding = true, isShellshocked = false, isInPain = _M.generateRandomTrueOrFalse() },
		{ name = "graze", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = false },
		{ name = "dislocated", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "bone bruise", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() },
		{ name = "broken bone", isFatal = false, isBleeding = true, isShellshocked = _M.generateRandomTrueOrFalse(),  isInPain = true },
		{ name = "severe bruise", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = true },
		{ name = "severe deep cut", isFatal = false, isBleeding = true, isShellshocked = _M.generateRandomTrueOrFalse(),  isInPain = true }
	}
	local randomInjuryIndex = math.random(1, #armInjuries)

	return armInjuries[randomInjuryIndex]
end

function _M.getRandomTorsoInjury()
	local torsoInjuries = {
		{ name = "scratch", isFatal = false, isBleeding = false, isShellshocked = false, isInPain = false },
		{ name = "contusion", isFatal = _M.generateRandomTrueOrFalse(), isBleeding = true, isShellshocked = false,  isInPain = true }, 
		{ name = "fractured rib", isFatal = false, isBleeding = true, isShellshocked = true,  isInPain = true }, 
		{ name = "broken ribs", isFatal = false, isBleeding = true, isShellshocked = true,  isInPain = true }, 
		{ name = "broken rib", isFatal = false, isBleeding = true, isShellshocked = true,  isInPain = true },
		{ name = "flail chest", isFatal = _M.generateRandomTrueOrFalse(), isBleeding = true, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() },
		{ name = "pulmonary laceration", isFatal = false, isBleeding = true, isShellshocked = true,  isInPain = true }, 
		{ name = "hemopneumothorax", isFatal = _M.generateRandomTrueOrFalse(), isBleeding = true, isShellshocked = true,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "tracheobronchial tear", isFatal = _M.generateRandomTrueOrFalse(), isBleeding = true, isShellshocked = true,  isInPain = true },
		{ name = "myocardial contusion", isFatal = false, isBleeding = true, isShellshocked = true,  isInPain = true }, 
		{ name = "cardiac arrest", isFatal = _M.generateRandomTrueOrFalse(), isBleeding = true, isShellshocked = false,  isInPain = true },
		{ name = "heart failure", isFatal = true, isBleeding = true, isShellshocked = false,  isInPain = true },
		{ name = "critical organ damage", isFatal = true, isBleeding = true, isShellshocked = true,  isInPain = true }, 
		{ name = "spinal injury", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }
	}
	local randomInjuryIndex = math.random(1, #torsoInjuries)

	return torsoInjuries[randomInjuryIndex]
end

function _M.getRandomShoulderInjury()
	local shoulderInjuries = {
		{ name = "scratch", isFatal = false, isBleeding = false, isShellshocked = false, isInPain = false },
		{ name = "small cut", isFatal = false, isBleeding = _M.generateRandomTrueOrFalse(), isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "deep cut", isFatal = false, isBleeding = true, isShellshocked = false,  isInPain = true }, 
		{ name = "bruise", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "clavicle fracture", isFatal = false, isBleeding = _M.generateRandomTrueOrFalse(), isShellshocked = false,  isInPain = true }, 
		{ name = "dislocated", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "Hill Sachs lesion", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "humerus fracture", isFatal = false, isBleeding = _M.generateRandomTrueOrFalse(), isShellshocked = _M.generateRandomTrueOrFalse(),  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "scapular fracture", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }
	}
	local randomInjuryIndex = math.random(1, #shoulderInjuries)

	return shoulderInjuries[randomInjuryIndex]
end

function _M.getRandomNeckInjury()
	local neckInjuries = {
		{ name = "scratch", isFatal = false, isBleeding = false, isShellshocked = false, isInPain = false },
		{ name = "small cut", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "minor bruise", isFatal = false, isBleeding = false, isShellshocked = false,  isInPain = _M.generateRandomTrueOrFalse() }, 
		{ name = "severe laceration", isFatal = _M.generateRandomTrueOrFalse(5), isBleeding = true, isShellshocked = true, isInPain = true },
		{ name = "vascular injury", isFatal = true, isBleeding = true, isShellshocked = false,  isInPain = true },
		{ name = "tracheobronchial tear", isFatal = _M.generateRandomTrueOrFalse(), isBleeding = true, isShellshocked = true,  isInPain = true },
		{ name = "decapitation", isFatal = true, isBleeding = true, isShellshocked = true, isInPain = true }
	}
	local randomInjuryIndex = math.random(1, #neckInjuries)

	return neckInjuries[randomInjuryIndex]
end

function _M.getRandomHeadInjury()
	local headInjuries = {
		{ name = "scratch", isFatal = false, isBleeding = false, isShellshocked = false, isInPain = false },
		{ name = "concussion", isFatal = _M.generateRandomTrueOrFalse(15), isBleeding = true, isShellshocked = _M.generateRandomTrueOrFalse(), isInPain = true },
		{ name = "contusion", isFatal = _M.generateRandomTrueOrFalse(14), isBleeding = true, isShellshocked = true, isInPain = true },
		{ name = "intracranial hematoma", isFatal = _M.generateRandomTrueOrFalse(14), isBleeding = true, isShellshocked = true, isInPain = true },
		{ name = "intracerebral hematoma", isFatal = _M.generateRandomTrueOrFalse(), isBleeding = true, isShellshocked = _M.generateRandomTrueOrFalse(), isInPain = true },
		{ name = "skull fracture", isFatal = _M.generateRandomTrueOrFalse(4), isBleeding = _M.generateRandomTrueOrFalse(), isShellshocked = _M.generateRandomTrueOrFalse(), isInPain = true }
	}
	local randomInjuryIndex = math.random(1, #headInjuries)
	
	return headInjuries[randomInjuryIndex]
end

function _M.getHumanBody()
  math.randomseed(os.time())
  math.random()
  local humanBody = {}
  humanBody.isAlive = true
  humanBody.causeOfDeath = "n/a"
	humanBody.body = {
		head = { injure = function() return _M.getRandomHeadInjury() end },
		neck = { injure = function() return _M.getRandomNeckInjury() end },
		leftShoulder = { injure = function() return _M.getRandomShoulderInjury() end },
		rightShoulder = { injure = function() return _M.getRandomShoulderInjury() end },
		leftArm = { injure = function() return _M.getRandomArmInjury() end },
		rightArm = { injure = function() return _M.getRandomArmInjury() end },
		torso = { injure = function() return _M.getRandomTorsoInjury() end },
		leftLeg = { injure = function() return _M.getRandomLegInjury() end },
		rightLeg = { injure = function() return _M.getRandomLegInjury() end }
	}
  humanBody.injuries = {
  	head = {},
		neck = {},
    leftShoulder = {},
    rightShoulder = {},
    leftArm = {},
    rightArm = {},
    torso = {},
    leftLeg = {},
    rightLeg = {}
  }

  humanBody.causeInjuries = function()
    --always seed with current time so that number generation is as random as possible
    _M.seedRandomGenerator()
    
    if humanBody.isAlive == true then
      local injuries = _M.getHumanBody()
      local isFatal = false
      
      for bodyPartName, bodyPart in pairs(humanBody.body) do
        local chanceOfInjury = math.random(0,1)
        if chanceOfInjury > math.random(0,1) then   
          local injury = bodyPart.injure()
          --table.insert(humanBody.injuries, injury)
          
          for key, v in pairs(humanBody.injuries) do
            --matching body part to the one in the injuries table
            if key == bodyPartName then
              --add the description of the injury
              local details = {}
              details[injury.name] = injury

              table.insert(humanBody.injuries[key], details)
            end
          
          end
          --insert injuries

          -- Death
          if injury.isFatal == true then
--            print("\n>>>>> !!! Crewman dead !!! <<<<")
            humanBody.isAlive = false
            --for the medical report
            humanBody.causeOfDeath = injury.name
          end

        end
      end
    end

    return injuries, isFatal
  end
  
  humanBody.generateMedicalReport = function()
    local medicalReport = ""
    
    for bodyPart, injury in pairs(humanBody.injuries) do
    --    print("\n============================ INJURY =============================================")    
    --    print("### [injury type]      : " .. injury.name)
    --    print("    [body part]        : " .. key)
        
    --    local characteristics = ""
    --    if injury.isBleeding == true then
    --      characteristics = characteristics .. "( bleeding )"
    --    end
    --    if injury.isInPain == true then
    --      characteristics = characteristics .. "( painful )"
    --    end
    --    if injury.isFatal == true then
    --      characteristics = characteristics .. "( fatal )"
    --    end
    --    if characteristics ~= "" then
    --      print("    [details]: " .. characteristics)
    --    end
        
    --    -- Death
    --    if isFatalInjury == true then
    --      print("\n>>>>> !!! Crewman dead !!! <<<<")
    --      break
    --    end

      local listOfInjuriesForBodyPart = ""

      for index,  detail in pairs(injury) do
        for injuryDescription, injuryDetailsTable in pairs(detail) do
          if listOfInjuriesForBodyPart == "" then
            listOfInjuriesForBodyPart = listOfInjuriesForBodyPart .. injuryDescription
            --====================================================================================
            local modifiers = ""
            if injuryDetailsTable.isBleeding == true then
              modifiers = modifiers .. "bleeding,"
            end
            
            if injuryDetailsTable.isShellShocked == true then
              modifiers = modifiers .. "shell-shock,"
            end
            
            if injuryDetailsTable.isInPain == true then
              modifiers = modifiers .. "painful,"
            end
            
            if injuryDetailsTable.isFatal == true then
              modifiers = modifiers .. "fatal,"
            end
            --remove last comma
            modifiers = modifiers:sub(1, -2)
            --append to report
            if modifiers:gsub("^%s*(.-)%s*$", "%1") ~= "" then --in lua, spaces count as characters so we trim before checking
              listOfInjuriesForBodyPart = listOfInjuriesForBodyPart .. " " .. "(" .. modifiers .. ")"
            end
            --====================================================================================
          else
            if string.find(listOfInjuriesForBodyPart, injuryDescription) then--if the injury already exists dont duplicate
              --do nothing
            else
              -- Describe the injuries
              listOfInjuriesForBodyPart = listOfInjuriesForBodyPart .. ", " .. injuryDescription
              --====================================================================================
              local modifiers = ""
              if injuryDetailsTable.isBleeding == true then
                modifiers = modifiers .. "bleeding,"
              end
              
              if injuryDetailsTable.isShellShocked == true then
                modifiers = modifiers .. "shell-shock,"
              end
              
              if injuryDetailsTable.isInPain == true then
                modifiers = modifiers .. "painful,"
              end
              
              if injuryDetailsTable.isFatal == true then
                modifiers = modifiers .. "fatal,"
              end
              --remove last comma
              modifiers = modifiers:sub(1, -2)
              --append to report
              if modifiers:gsub("^%s*(.-)%s*$", "%1") ~= "" then --in lua, spaces count as characters so we trim before checking
                listOfInjuriesForBodyPart = listOfInjuriesForBodyPart .. " " .. "(" .. modifiers .. ")"
              end
              --====================================================================================
            end
          end
        end
      end

      if listOfInjuriesForBodyPart:gsub("^%s*(.-)%s*$", "%1") ~= "" then
        --append details to the medical report
        if medicalReport == "" then
          medicalReport = medicalReport .. "" .. "    [" .. bodyPart .. "]: " .. listOfInjuriesForBodyPart
        else
          medicalReport = medicalReport .. "\n" .. "    [" .. bodyPart .. "]: " .. listOfInjuriesForBodyPart
        end
      end
    end
    
    local prettyReport = ""
    if humanBody.isAlive then
      prettyReport = prettyReport .. "### Status : Alive\n\n"
    else
      prettyReport = prettyReport .. "### Status : Dead"
      prettyReport = prettyReport .. "\n    [Cause] : " .. humanBody.causeOfDeath .. "\n\n"
    end
    prettyReport = prettyReport .. "### Body injury report\n"
    return prettyReport .. medicalReport .. "\n"
  end
  
  humanBody.getPrettyMedicalReport = function(name)
    local prettyReport = "#=========== Medical report ===========#"
    prettyReport = prettyReport .. "\n### Subject: " .. name

    prettyReport = prettyReport ..  "\n" .. humanBody.generateMedicalReport()
    prettyReport = prettyReport .. "#======================================#"
    
    return prettyReport
  end

	return humanBody
end



return _M