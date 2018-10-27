void() InitializeMissionTimer =
{
	MissionTimer = 25.0;
}

void() UpdateMissionTimer =
{
	local string a;
	local float timeLeft = MissionTimer - time;
	if (timeLeft < 0 && self.deadflag == DEAD_NO)
	{
		self.health = -50;
		PlayerDie();
	}
	a = ftos (timeLeft);
	centerprint(self, "\n\n\n\n\n", a, "\n");
}

void(float msn_time) AddMissionTime =
{
	local string a;
	a = ftos(msn_time);
	MissionTimer += msn_time;
	
	sprint(self, "+", a, "SECONDS"); 
	
}