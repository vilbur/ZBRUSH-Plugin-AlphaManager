

$MENU	:= "~AlphaManager"
$SUBEMNU	:= "Masks"
$file_path := A_LineFile "\..\..\UI-LoadMaskButtons.txt"


$create_submenu := "[ISubPalette, """ $MENU	":" $SUBEMNU """]`n`n"



FileDelete, %$file_path%


FileAppend, %$create_submenu%, %$file_path%


Loop, 20
{
	$menu_path := $MENU ":" $SUBEMNU ":"

	$btn_name	:= "Mask " A_Index
	$tooltip	:= "Load Alpha " A_Index " as mask"

	$enabled := "1"

	$command	:= "[RoutineCall, maskLoad, " A_Index "]"

	$width	:= "56"
	$height	:= "50"

	$button	:= "[IButton, """ $menu_path $btn_name """, """ $tooltip """,	" $command ",	" $enabled ", " $width ",,, " $height "]`n"

	FileAppend, %$button%, %$file_path%
}
