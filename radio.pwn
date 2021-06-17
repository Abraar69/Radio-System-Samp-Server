#include <a_samp>
#include <zcmd>

#define DIALOG_RADIO 15 // no 15 bisa di ganti kalau ada yg sama :3
#if defined Credits
Credits :
- Tung Tung
- Shoutcast ( for radio )
#endif

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}
public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid, -1, "Type /radio to listen your favourite stations!");
	return 1;
}
CMD:radio(playerid, params[])
{
	new string[512];
	strcat(string, "Radio iWan\n");
	strcat(string, "Jazz\n");
	strcat(string, "Mixed dance pop 80s\n");
	strcat(string, "RAP\n");
	strcat(string, "Rock\n");
	strcat(string, "Top 40\n");
	strcat(string, "Party\n");
	strcat(string, "Radio All One by Wincenzo\n");
	strcat(string, "Stop Radio!");
	ShowPlayerDialog(playerid, DIALOG_RADIO, DIALOG_STYLE_LIST, "Radio Streaming", string, "Oke", "Close");
	return 1;
}
CMD:radiocredits(playerid, params[])
{
	SendClientMessage(playerid, -1, "Thanks To :");
	SendClientMessage(playerid, -1, "- Tung TUng ( make radio system )");
	SendClientMessage(playerid, -1, "- Shoutcast ( for radio online )");
	SendClientMessage(playerid, -1, "- SAMP Team");
	return 1;
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_RADIO)
	{
		if(response)
		{
			if(listitem == 0)
			{
				PlayAudioStreamForPlayer(playerid, "http://188.165.232.7:8287/");
			}
			if(listitem == 1)
			{
				PlayAudioStreamForPlayer(playerid, "http://air.radiolla.com/jiraffe.192k.mp3");
			}
			if(listitem == 2)
			{
				PlayAudioStreamForPlayer(playerid, "http://sanfm.ru:8000/relax");
			}
			if(listitem == 3)
			{
				PlayAudioStreamForPlayer(playerid, "http://us4.internet-radio.com:8107/stream?type=http&nocache=37");
			}
			if(listitem == 4)
			{
				PlayAudioStreamForPlayer(playerid, "https://stream.radioparadise.com/rock-320");
			}
			if(listitem == 5)
			{
				PlayAudioStreamForPlayer(playerid, "http://radionebunya.sytes.net:7575/stream?type=http&nocache=133112");
			}
			if(listitem == 6)
			{
				PlayAudioStreamForPlayer(playerid, "http://chi1.party107.com/Party107-160k");
			}
			if(listitem == 7)
			{
				PlayAudioStreamForPlayer(playerid, "https://servidor14.brlogic.com:7466/live");
			}
			if(listitem == 8)
			{
				StopAudioStreamForPlayer(playerid);
				SendClientMessage(playerid, -1, "Radio stream is stopped :) ");
			}
		}
	}
	return 1;
}
