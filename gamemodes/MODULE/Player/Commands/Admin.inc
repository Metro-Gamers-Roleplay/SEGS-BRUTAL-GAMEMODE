CMD:getadmin(playerid, params[])
{
    PlayerInfo[playerid][pAdmin] = 6;
    return 1;
}