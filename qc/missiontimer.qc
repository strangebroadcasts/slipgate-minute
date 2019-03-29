void() InitializeMissionTimer =
{
	MissionTimer = 25.0;
	if(mapname == "e1m7") {
		MissionTimer = 50.0;
	}
	
	if (skill == 0) {
		MissionTimer = MissionTimer * MissionTimeMultiplierEasy;
	}
	if (skill == 1) {
		MissionTimer = MissionTimer * MissionTimeMultiplierMedium;
	}
}

void() UpdateMissionTimer =
{
	local string a;
	local float timeLeft = MissionTimer - time;
	if (timeLeft < 0 && self.deadflag == DEAD_NO)
	{
		self.health = -50;
		PlayerDie();
		centerprint(self, "TIME'S UP!\n");
		
	}
	a = ftos (timeLeft);
	centerprint(self, a);
}

void(float msn_time) AddMissionTime =
{
	local string a;
	a = ftos(msn_time);
	MissionTimer += msn_time;
}