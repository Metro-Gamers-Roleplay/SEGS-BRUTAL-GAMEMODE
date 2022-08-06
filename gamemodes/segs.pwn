#include <a_samp>
#include <core>
#include <float>
#include <sscanf2>
#include <dini>
#include <zcmd>

// --------
// Modules
// --------
#include "MODULE\Player\Commands\Commands.inc"

// --------
// Definition
// --------
#define void public
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
	print("  Gamemode segs brutal Loaded\n  With v0.1.5 Version");
	print("----------------------------------\n");
}

public OnPlayerConnect(playerid)
{
	GameTextForPlayer(playerid,"~w~SA:MP ~r~Segs Brutal",5000,5);
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

	return 0;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerInterior(playerid,0);
	TogglePlayerClock(playerid,0);
	ApplyAnimation(playerid, "BLOWJOBZ", "BJ_Couch_Loop_W", 4.1, 0, 1, 1, 1, 1, 1);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	SetPlayerPos(playerid, 1776.7902,-1935.1401,13.4498);
   	return 1;
}

SetupPlayerForClassSelection(playerid)
{
 	SetPlayerInterior(playerid,14);
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
	SetGameModeText("Segs v0.1.5");
	ShowPlayerMarkers(1);
	ShowNameTags(1);
	AddPlayerClass(265,1776.7902,-1935.1401,13.4498,340.8710,0,0,0,0,0,0);
	return 1;
}
public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	if(!IsPlayerAdmin(playerid))
		return 0;

	SendRconCommand("hostname Admin has depressed");
	
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
