@Echo off
SetLocal EnableDelayedExpansion
:: this batch is used to generate the menu items from a list of folders.

md ports
md xbox

(
	Echo ^<content^>
	Echo 		^<item id^="0"^>
	Echo 				^<label^>^$LOCALIZE^[5^]^</label^>
	Echo 				^<label2^>^$LOCALIZE^[5^]^</label2^>
	Echo 				^<onclick^>ActivateWindow^(Settings,return^)^</onclick^>
	Echo 				^<icon^>layouts/settings/art/system_art.png^</icon^>
	Echo 				^<thumb^>layouts/settings/art/logo.png^</thumb^>
	Echo 		^</item^>
	Echo 		^<item id^="1"^>
	Echo 				^<label^>^$LOCALIZE^[518^] ^$LOCALIZE^[427^]^</label^>
	Echo 				^<label2^>^$LOCALIZE^[427^]^</label2^>
	Echo 				^<onclick^>PlayDVD^(^)^</onclick^>
	Echo 				^<icon^>layouts/disc/art/system_art.png^</icon^>
	Echo 				^<thumb^>layouts/disc/art/logo.png^</thumb^>
	Echo 				^<visible^>System.HasMediaDVD^</visible^>
	Echo 		^</item^>
	Echo 		^<item id^="2"^>
	Echo 				^<label^>$INFO^[Skin.String^(favs_games^)^]^</label^>
	Echo 				^<label2^>favs^</label2^>
	Echo 				^<onclick^>RunScript^(special://emustation_scripts/menu_loader.py^)^</onclick^>
	Echo 				^<icon^>layouts/favourites/art/system_art.png^</icon^>
	Echo 				^<thumb^>layouts/favourites/art/logo.png^</thumb^>
	Echo 		^</item^>
)>>"system_list.xml"

Set /a count=3
for /f "Tokens=*" %%a in ('dir /b /A:D "*"') do (
	Echo  %%~na
	if not "%%~na"=="ports" if not "%%~na"=="xbox" if not "%%~na"=="atarijaguar" if not "%%~na"=="mame" if not "%%~na"=="neogeocd" (
		Echo 		^<item id^="!count!"^>
		Echo 				^<label^>$INFO^[Skin.String^(%%~na_games^)^]^</label^>
		Echo 				^<label2^>%%~na^</label2^>
		Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
		Echo 				^<onclick^>RunScript^(special://emustation_scripts/menu_loader.py^)^</onclick^>
		Echo 				^<icon^>layouts/%%~na/art/system_art.png^</icon^>
		Echo 				^<thumb^>layouts/%%~na/art/logo.png^</thumb^>
		Echo 				^<visible^>Skin.HasSetting^(%%~na_exists^)^</visible^>
		Echo 		^</item^>
	)>>"system_list.xml"

	if "%%~na"=="atarijaguar" (
		Echo 		^<item id^="!count!"^>
		Echo 				^<label^>Launch Emulator: $INFO^[Skin.String^(%%~na_games^)^]^</label^>
		Echo 				^<label2^>%%~na^</label2^>
		Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
		Echo 				^<onclick^>RunScript^(special://emustation_scripts/direct_launch_emulator.py,1^)^</onclick^>
		Echo 				^<icon^>layouts/%%~na/art/system_art.png^</icon^>
		Echo 				^<thumb^>layouts/%%~na/art/logo.png^</thumb^>
		Echo 				^<visible^>Skin.HasSetting^(%%~na_exists^)^</visible^>
		Echo 		^</item^>
	)>>"system_list.xml"
	
	if "%%~na"=="mame" (
		Echo 		^<item id^="!count!"^>
		Echo 				^<label^>Launch Emulator: $INFO^[Skin.String^(%%~na_games^)^]^</label^>
		Echo 				^<label2^>%%~na^</label2^>
		Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
		Echo 				^<onclick^>RunScript^(special://emustation_scripts/direct_launch_emulator.py,1^)^</onclick^>
		Echo 				^<icon^>layouts/%%~na/art/system_art.png^</icon^>
		Echo 				^<thumb^>layouts/%%~na/art/logo.png^</thumb^>
		Echo 				^<visible^>Skin.HasSetting^(%%~na_exists^)^</visible^>
		Echo 		^</item^>
	)>>"system_list.xml"

	if "%%~na"=="neogeocd" (
		Echo 		^<item id^="!count!"^>
		Echo 				^<label^>Launch Emulator: $INFO^[Skin.String^(%%~na_games^)^]^</label^>
		Echo 				^<label2^>%%~na^</label2^>
		Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
		Echo 				^<onclick^>RunScript^(special://emustation_scripts/direct_launch_emulator.py,1^)^</onclick^>
		Echo 				^<icon^>layouts/%%~na/art/system_art.png^</icon^>
		Echo 				^<thumb^>layouts/%%~na/art/logo.png^</thumb^>
		Echo 				^<visible^>Skin.HasSetting^(%%~na_exists^)^</visible^>
		Echo 		^</item^>
	)>>"system_list.xml"
	
	if "%%~na"=="ports" (
		Echo 		^<item id^="!count!"^>
		Echo 				^<label^>$INFO^[Skin.String^(%%~na_games^)^]^</label^>
		Echo 				^<label2^>%%~na^</label2^>
		Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
		Echo 				^<onclick^>RunScript^(special://emustation_scripts/menu_loader.py^)^</onclick^>
		Echo 				^<icon^>layouts/%%~na/art/system_art.png^</icon^>
		Echo 				^<thumb^>layouts/%%~na/art/logo.png^</thumb^>
		Echo 		^</item^>
)>>"system_list.xml"

if "%%~na"=="xbox" (
		Echo 		^<item id^="!count!"^>
		Echo 				^<label^>$INFO^[Skin.String^(%%~na_games^)^]^</label^>
		Echo 				^<label2^>%%~na^</label2^>
		Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
		Echo 				^<onclick^>RunScript^(special://emustation_scripts/menu_loader.py^)^</onclick^>
		Echo 				^<icon^>layouts/%%~na/art/system_art.png^</icon^>
		Echo 				^<thumb^>layouts/%%~na/art/logo.png^</thumb^>
		Echo 				^<visible^>IntegerGreaterThan^(Skin.String^(xbox_games^),0^)^</visible^>
		Echo 		^</item^>
	)>>"system_list.xml"

	Set /a count+=1
)
(
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customtile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile1Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile1SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile1Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile1Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customtile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile2Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile2SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile2Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile2Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customtile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile3Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile3SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile3Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile3Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customTile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile4Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile4SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile4Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile4Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customTile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile5Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile5SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile5Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile5Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customTile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile6Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile6SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile6Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile6Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customTile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile7Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile7SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile7Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile7Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customTile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile8Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile8SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile8Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile8Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customTile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile9Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile9SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile9Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile9Enabled^)^</visible^>
	Echo 		^</item^>
	Set /a count+=1
	Echo 		^<item id^="!count!"^>
	Echo 				^<label^>Direct Launch^</label^>
	Echo 				^<label2^>customTile^</label2^>
	Echo 				^<onclick^>SetFocus^(9100^)^</onclick^>
	Echo 				^<onclick^>RunXBE^(^$INFO^[Skin.String^(CustomHomeTile10Xbe^)^]^)^</onclick^>
	Echo 				^<icon^>^$INFO^[Skin.String^(CustomHomeTile10SystemArt^)^]^</icon^>
	Echo 				^<thumb^>^$INFO^[Skin.String^(CustomHomeTile10Logo^)^]^</thumb^>
	Echo 				^<visible^>Skin.HasSetting^(CustomHomeTile10Enabled^)^</visible^>
	Echo 		^</item^>
)>>"system_list.xml"

Echo ^</content^>>>"system_list.xml"

rd ports
rd xbox