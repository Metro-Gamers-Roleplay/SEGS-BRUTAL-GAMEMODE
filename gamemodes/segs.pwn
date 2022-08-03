#include <a_samp>
#include <core>
#include <float>
//#include <Pawn.CMD>
#include <sscanf2>
//#include <YSI_Storage\y_ini>
#include <dini>
#include <zcmd>
// Module
//#include "MODULE\Player\Commands\Commands.inc"
//#include "MODULE\Player\Commands\Admin.inc"
//#define IsPlayerAndroid(%0)                 GetPVarInt(%0, "NotAndroid") == 0

#pragma tabsize 0

enum playerInfo
{
	pID,
	pAdmin,
	pLevel
}
new PlayerInfo[MAX_PLAYERS][playerInfo];

main()
{
	print("\n----------------------------------");
	print("  Gamemode segs brutal Loaded\nWith v0.1 Version");
	print("----------------------------------\n");
}

public OnPlayerConnect(playerid)
{
	GameTextForPlayer(playerid,"~w~OPEN-MP: ~r~Segs Brutal",5000,5);
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	new idx;
	new cmd[256];
	
	cmd = strtok(cmdtext, idx);

	if(strcmp(cmd, "/yadayada", true) == 0) {
    	return 1;
	}
	/*if(strcmp(cmd, "/stopanim", true) == 0)
	{
		ClearAnimations(playerid);
		//StopLoopingAnim(playerid);
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
		TogglePlayerControllable(playerid, 1);
	}*/

	return 0;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerInterior(playerid,0);
	TogglePlayerClock(playerid,0);
	ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Couch_Loop_W", 4.1, 0, 1, 1, 1, 1, 1);
	/*if (IsPlayerAndroid(playerid))
 		return SendClientMessage(playerid, -1, "You're connected from android");*/
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
   	return 1;
}

SetupPlayerForClassSelection(playerid)
{
 	SetPlayerInterior(playerid,14);
	//SetPlayerPos(playerid,258.4893,-41.4008,1002.0234);
	SetPlayerPos(playerid, 1776.7902,-1935.1401,13.4498);
	ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Couch_Loop_W", 4.1, 0, 1, 1, 1, 1, 1);
	SetPlayerFacingAngle(playerid, 270.0);
	SetPlayerCameraPos(playerid,256.0815,-43.0475,1004.0234);
	SetPlayerCameraLookAt(playerid,258.4893,-41.4008,1002.0234);
}

public OnPlayerRequestClass(playerid, classid)
{
	SetupPlayerForClassSelection(playerid);
	return 1;
}

public OnGameModeInit()
{
	SetGameModeText("Segs v0.1");
	ShowPlayerMarkers(1);
	ShowNameTags(1);
	//AllowAdminTeleport(1);

	AddPlayerClass(265,1958.3783,1343.1572,15.3746,270.1425,0,0,0,0,-1,-1);
	//AddPlayerClass(265,1776.7902,-1935.1401,13.4498,340.8710,0,0,0,0,0,0);
	return 1;
}
public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	if(!IsPlayerAdmin(playerid))
		return 1;
	if(IsPlayerAdmin(playerid))
		return SendRconCommand("hostname Admin has depressed");
	
	return 1;
}

strtok(const string[], &index)
{
	new length = strlen(string);
	while ((index < length) && (string[index] <= ' '))
	{
		index++;
	}

	new offset = index;
	new result[20];
	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}
	result[index - offset] = EOS;
	return result;
}
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
	TogglePlayerControllable(playerid, false);
    return 1;
}