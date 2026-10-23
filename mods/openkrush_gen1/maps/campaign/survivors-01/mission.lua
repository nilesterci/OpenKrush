--[[
	Survivors - Missão 1, recriada a partir de SURV_01.LVL do KKnD Xtreme.
	Briefing original: limpar a vila de aberrações perto do acampamento Survivor.
]]

local briefing = "Uma vila horrorosa de aberrações surgiu perto de um dos nossos impecáveis acampamentos de alta tecnologia. Nem que seja só pela estética, vá lá e jogue o lixo fora."

WorldLoaded = function()
	Survivors = Player.GetPlayer("Survivors")
	Evolved = Player.GetPlayer("Evolved")

	KillAll = Survivors.AddPrimaryObjective("Elimine todas as forças Evolved da região.")

	Trigger.OnPlayerWon(Survivors, function()
		Media.DisplayMessage("Região limpa. Bom trabalho, soldado!", "Comando")
	end)

	Trigger.OnPlayerLost(Survivors, function()
		Media.DisplayMessage("Nossas forças foram aniquiladas.", "Comando")
	end)

	local enemies = Evolved.GetGroundAttackers()
	Trigger.OnAllKilled(enemies, function()
		Survivors.MarkCompletedObjective(KillAll)
	end)

	-- Área inicial dos Survivors no mapa original (canto inferior direito).
	Camera.Position = Map.CenterOfCell(CPos.New(41, 31))
	Trigger.AfterDelay(DateTime.Seconds(1), function()
		Media.DisplayMessage(briefing, "Comando")
	end)end

-- HasNoRequiredUnits() só conta prédios quando "Partida curta" está ligada; esta missão não tem prédios.
local function AliveUnits(player)
	return Utils.Where(player.GetActors(), function(a)
		return a.HasProperty("Health") and not a.IsDead
	end)
end

Tick = function()
	if DateTime.GameTime % DateTime.Seconds(1) == 0 and not Survivors.IsObjectiveCompleted(KillAll) and #AliveUnits(Survivors) == 0 then
		Survivors.MarkFailedObjective(KillAll)
	end
end
