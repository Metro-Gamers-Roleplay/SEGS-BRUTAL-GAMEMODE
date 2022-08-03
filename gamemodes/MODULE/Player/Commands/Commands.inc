//#include <YSI_Server\y_colors>
CMD:stopanim(playerid, params[])
{
    ClearAnimations(playerid);
    //StopLoopingAnim(playerid);
    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
    TogglePlayerControllable(playerid, 1);
    return 1;
}
CMD:blowjob(playerid, params[])
{
    new choice[128];
    if(sscanf(params, "s[32]", choice))
    {
        SendClientMessage(playerid, -1, "Syntax: {FFFFFF}/blowjob [1/10]");
        return 1;
    }
    if(strcmp(choice, "1", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Car_End_P", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "2", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Car_End_W", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "3", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Car_Loop_P", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "4", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Car_Start_W", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "5", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Couch_End_P", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "6", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Couch_End_W", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "7", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Couch_Loop_P", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "8", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Couch_Loop_W", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "9", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Stand_Start_P", 4.1, 0, 1, 1, 1, 1, 1);
    }
    if(strcmp(choice, "10", true) == 0)
    {
        ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Stand_Start_W", 4.1, 0, 1, 1, 1, 1, 1);
    }
    return 1;
}

/* 
		BJ_Car_Start_W	140	2.33	Start pumping in car	
no	BLOWJOBZ	BJ_Couch_End_P	460	7.67	Finish getting pumped on couch	
no	BLOWJOBZ	BJ_Couch_End_W	460	7.67	Finish pumping on couch	
no	BLOWJOBZ	BJ_Couch_Loop_P	120	2.00	Getting pumped on couch	
no	BLOWJOBZ	BJ_Couch_Loop_W	120	2.00	Pumping on couch	
no	BLOWJOBZ	BJ_Couch_Start_P	320	5.33	Start getting pumped on couch	
no	BLOWJOBZ	BJ_Couch_Start_W	320	5.33	Start pumping on couch	
no	BLOWJOBZ	BJ_Stand_End_P	292	4.87	Finish getting pumped up	
no	BLOWJOBZ	BJ_Stand_End_W	320	5.33	Finish pumping up	
no	BLOWJOBZ	BJ_Stand_Loop_P	40	0.67	Getting pumped up	
no	BLOWJOBZ	BJ_Stand_Loop_W	40	0.67	Pumping up	
no	BLOWJOBZ	BJ_Stand_Start_P	120	2.00	Start getting pumped up	
no	BLOWJOBZ	BJ_Stand_Start_W */