﻿function Display-LargeText() {
    ## Ascii fonts from http://www.patorjk.com/software/taag/#p=display&f=Colossal&t=Test
    
    param(
        [Parameter(Mandatory=$false)][string]$Text,
        [Parameter(Mandatory=$false)][string]$Colour,
        [Parameter(Mandatory=$false)][string]$Font
    )

    $Colours = [Enum]::GetValues([System.ConsoleColor])
    $Fonts = @{"Colossal" = "11"; "Default" = "11"; "Shadow" = "7"}
    $RainbowArray = @("DarkRed","Red","Yellow","Green","Blue","Cyan","Magenta","DarkMagenta", "DarkRed", "Red","Yellow","Green","Blue","Cyan","Magenta")
    
    if(!($Text)) { $Text = "Works as Intended!" }
    if(!($Colour)) { $Colour = "Red" }
    if(($Colours -contains $Colour) -eq $False) { 
        if($Colour -notmatch "(Rainbow|Random)") {
            Write-Host "Acceptable colours are: $Colours" 
            Break
        }
    }
    if($Colour -eq "Rainbow") { $Rainbow = $True }
    if($Colour -eq "Random") { $Random = $True }
    if(!($Font)) { $Font = "Colossal" }
    if(($Fonts.ContainsKey($Font)) -eq $False) {
        Write-Host "Acceptable fonts are:" $Fonts.Keys
        Break
    }

    $i = 0
    
    foreach($Letter in ($Text[0..$Text.Length])) {
        if($Font -eq "Colossal") {
            if($Letter -ceq "a") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +=" 8888b.  "
                $Line05 +="    '88b "
                $Line06 +=".d888888 "
                $Line07 +="888  888 "
                $Line08 +="'Y888888 "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "b") {
                $Line01 +="888      "
                $Line02 +="888      "
                $Line03 +="888      "
                $Line04 +="88888b.  "
                $Line05 +="888 '88b "
                $Line06 +="888  888 "
                $Line07 +="888 d88P "
                $Line08 +="88888P'  "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "c") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +=" .d8888b "
                $Line05 +="d88P'    "
                $Line06 +="888      "
                $Line07 +="Y88b.    "
                $Line08 +=" 'Y8888P "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "d") {
                $Line01 +="     888 "
                $Line02 +="     888 "
                $Line03 +="     888 "
                $Line04 +=" .d88888 "
                $Line05 +="d88' 888 "
                $Line06 +="888  888 "
                $Line07 +="Y88b 888 "
                $Line08 +=" 'Y88888 "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "e") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +=" .d88b.  "
                $Line05 +="d8P  Y8b "
                $Line06 +="88888888 "
                $Line07 +="Y8b.     "
                $Line08 +=" 'Y8888  "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "f") {
                $Line01 +=" .d888 "
                $Line02 +="d88P'  "
                $Line03 +="888    "
                $Line04 +="888888 "
                $Line05 +="888    "
                $Line06 +="888    "
                $Line07 +="888    "
                $Line08 +="888    "
                $Line09 +="       "
                $Line10 +="       "
                $Line11 +="       "
            }
            if($Letter -ceq "g") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +=" .d88b.  "
                $Line05 +="d88P'88b "
                $Line06 +="888  888 "
                $Line07 +="Y88b 888 "
                $Line08 +=" 'Y88888 "
                $Line09 +="     888 "
                $Line10 +="Y8b d88P "
                $Line11 +=" 'Y88P'  "
            }
            if($Letter -ceq "h") {
                $Line01 +="888      "
                $Line02 +="888      "
                $Line03 +="888      "
                $Line04 +="88888b.  "
                $Line05 +="888 '88b "
                $Line06 +="888  888 "
                $Line07 +="888  888 "
                $Line08 +="888  888 "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "i") {
                $Line01 +="d8b "
                $Line02 +="Y8P "
                $Line03 +="    "
                $Line04 +="888 "
                $Line05 +="888 "
                $Line06 +="888 "
                $Line07 +="888 "
                $Line08 +="888 "
                $Line09 +="    "
                $Line10 +="    "
                $Line11 +="    "
            }
            if($Letter -ceq "j") {
                $Line01 +="   d8b "
                $Line02 +="   Y8P "
                $Line03 +="       "
                $Line04 +="  8888 "
                $Line05 +="  '888 "
                $Line06 +="   888 "
                $Line07 +="   888 "
                $Line08 +="   888 "
                $Line09 +="   888 "
                $Line10 +="  d88P "
                $Line11 +="888P'  "
            }
            if($Letter -ceq "k") {
                $Line01 +="888      "
                $Line02 +="888      "
                $Line03 +="888      "
                $Line04 +="888  888 "
                $Line05 +="888 .88P "
                $Line06 +="888888K  "
                $Line07 +="888 '88b "
                $Line08 +="888  888 "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "l") {
                $Line01 +="888     "
                $Line02 +="888     "
                $Line03 +="888     "
                $Line04 +="888     "
                $Line05 +="888     "
                $Line06 +="888     "
                $Line07 +="888     "
                $Line08 +="888     "
                $Line09 +="        "
                $Line10 +="        "
                $Line11 +="        "
            }
            if($Letter -ceq "m") {
                $Line01 +="              "
                $Line02 +="              "
                $Line03 +="              "
                $Line04 +="88888b.d88b.  "
                $Line05 +="888 '888 '88b "
                $Line06 +="888  888  888 "
                $Line07 +="888  888  888 "
                $Line08 +="888  888  888 "
                $Line09 +="              "
                $Line10 +="              "
                $Line11 +="              "
            }
            if($Letter -ceq "n") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +="88888b.  "
                $Line05 +="888 '88b "
                $Line06 +="888  888 "
                $Line07 +="888  888 "
                $Line08 +="888  888 "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "o") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +=" .d88b.  "
                $Line05 +="d88''88b "
                $Line06 +="888  888 "
                $Line07 +="Y88..88P "
                $Line08 +=" 'Y88P'  "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "p") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +="88888b.  "
                $Line05 +="888 '88b "
                $Line06 +="888  888 "
                $Line07 +="888 d88P "
                $Line08 +="88888P'  "
                $Line09 +="888      "
                $Line10 +="888      "
                $Line11 +="888      "
            }
            if($Letter -ceq "q") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +=" .d88888 "
                $Line05 +="d88' 888 "
                $Line06 +="888  888 "
                $Line07 +="Y88b 888 "
                $Line08 +=" 'Y88888 "
                $Line09 +="     888 "
                $Line10 +="     888 "
                $Line11 +="     888 "
            }
            if($Letter -ceq "r") {
                $Line01 +="        "
                $Line02 +="        "
                $Line03 +="        "
                $Line04 +="888d888 "
                $Line05 +="888P'   "
                $Line06 +="888     "
                $Line07 +="888     "
                $Line08 +="888     "
                $Line09 +="        "
                $Line10 +="        "
                $Line11 +="        "
            }
            if($Letter -ceq "s") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +=".d8888b  "
                $Line05 +="88K      "
                $Line06 +="'Y8888b. "
                $Line07 +="     X88 "
                $Line08 +=" 88888P' "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "t") {
                $Line01 +="888     "
                $Line02 +="888     "
                $Line03 +="888     "
                $Line04 +="888888  "
                $Line05 +="888     "
                $Line06 +="888     "
                $Line07 +="Y88b.   "
                $Line08 +=" 'Y888  "
                $Line09 +="        "
                $Line10 +="        "
                $Line11 +="        "
            }
            if($Letter -ceq "u") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +="888  888 "
                $Line05 +="888  888 "
                $Line06 +="888  888 "
                $Line07 +="Y88b 888 "
                $Line08 +=" 'Y88888 "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "v") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +="888  888 "
                $Line05 +="888  888 "
                $Line06 +="Y88  88P "
                $Line07 +=" Y8bd8P  "
                $Line08 +="  Y88P   "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "w") {
                $Line01 +="              "
                $Line02 +="              "
                $Line03 +="              "
                $Line04 +="888  888  888 "
                $Line05 +="888  888  888 "
                $Line06 +="888  888  888 "
                $Line07 +="Y88b 888 d88P "
                $Line08 +=" 'Y8888888P'  "
                $Line09 +="              "
                $Line10 +="              "
                $Line11 +="              "
            }
            if($Letter -ceq "x") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +="888  888 "
                $Line05 +="'Y8bd8P' "
                $Line06 +="  X88K   "
                $Line07 +=".d8''8b. "
                $Line08 +="888  888 "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }
            if($Letter -ceq "y") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +="888  888 "
                $Line05 +="888  888 "
                $Line06 +="888  888 "
                $Line07 +="Y88b 888 "
                $Line08 +=" 'Y88888 "
                $Line09 +="     888 "
                $Line10 +="Y8b d88P "
                $Line11 +=" 'Y88P'  "
            }
            if($Letter -ceq "z") {
                $Line01 +="         "
                $Line02 +="         "
                $Line03 +="         "
                $Line04 +="88888888 "
                $Line05 +="   d88P  "
                $Line06 +="  d88P   "
                $Line07 +=" d88P    "
                $Line08 +="88888888 "
                $Line09 +="         "
                $Line10 +="         "
                $Line11 +="         "
            }


            if($Letter -ceq " ") {
                $Line01 +="      "
                $Line02 +="      "
                $Line03 +="      "
                $Line04 +="      "
                $Line05 +="      "
                $Line06 +="      "
                $Line07 +="      "
                $Line08 +="      "
                $Line09 +="      "
                $Line10 +="      "
                $Line11 +="      "
            }

            if($Letter -ceq "A") {
                $Line01 += "       d8888 "
                $Line02 += "      d88888 "
                $Line03 += "     d88P888 "
                $Line04 += "    d88P 888 "
                $Line05 += "   d88P  888 "
                $Line06 += "  d88P   888 "
                $Line07 += " d8888888888 "
                $Line08 += "d88P     888 "
                $Line09 += "             "
                $Line10 += "             "
                $Line11 += "             "
            }
            if($Letter -ceq "B") {
                $Line01 += "888888b.   "
                $Line02 += "888  '88b  "
                $Line03 += "888  .88P  "
                $Line04 += "8888888K.  "
                $Line05 += "888  'Y88b "
                $Line06 += "888    888 "
                $Line07 += "888   d88P "
                $Line08 += "8888888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "C") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "888    888 "
                $Line04 += "888        "
                $Line05 += "888        "
                $Line06 += "888    888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "D") {
                $Line01 += "8888888b.  "
                $Line02 += "888  'Y88b "
                $Line03 += "888    888 "
                $Line04 += "888    888 "
                $Line05 += "888    888 "
                $Line06 += "888    888 "
                $Line07 += "888  .d88P "
                $Line08 += "8888888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "E") {
                $Line01 += "8888888888 "
                $Line02 += "888        "
                $Line03 += "888        "
                $Line04 += "8888888    "
                $Line05 += "888        "
                $Line06 += "888        "
                $Line07 += "888        "
                $Line08 += "8888888888 "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "F") {
                $Line01 += "8888888888 "
                $Line02 += "888        "
                $Line03 += "888        "
                $Line04 += "8888888    "
                $Line05 += "888        "
                $Line06 += "888        "
                $Line07 += "888        "
                $Line08 += "888        "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "G") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "888    888 "
                $Line04 += "888        "
                $Line05 += "888  88888 "
                $Line06 += "888    888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P88 "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "H") {
                $Line01 += "888    888 "
                $Line02 += "888    888 "
                $Line03 += "888    888 "
                $Line04 += "8888888888 "
                $Line05 += "888    888 "
                $Line06 += "888    888 "
                $Line07 += "888    888 "
                $Line08 += "888    888 "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "I") {
                $Line01 += "8888888 "
                $Line02 += "  888   "
                $Line03 += "  888   "
                $Line04 += "  888   "
                $Line05 += "  888   "
                $Line06 += "  888   "
                $Line07 += "  888   "
                $Line08 += "8888888 "
                $Line09 += "        "
                $Line10 += "        "
                $Line11 += "        "
            }
            if($Letter -ceq "J") {
                $Line01 += "  888888 "
                $Line02 += "    '88b "
                $Line03 += "     888 "
                $Line04 += "     888 "
                $Line05 += "     888 "
                $Line06 += "     888 "
                $Line07 += "     88P "
                $Line08 += "     888 "
                $Line09 += "   .d88P "
                $Line10 += " .d88P'  "
                $Line11 += "888P'    "
            }
            if($Letter -ceq "K") {
                $Line01 += "888    d8P  "
                $Line02 += "888   d8P   "
                $Line03 += "888  d8P    "
                $Line04 += "888d88K     "
                $Line05 += "8888888b    "
                $Line06 += "888  Y88b   "
                $Line07 += "888   Y88b  "
                $Line08 += "888    Y88b "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "L") {
                $Line01 += "888      "
                $Line02 += "888      "
                $Line03 += "888      "
                $Line04 += "888      "
                $Line05 += "888      "
                $Line06 += "888      "
                $Line07 += "888      "
                $Line08 += "88888888 "
                $Line09 += "         "
                $Line10 += "         "
                $Line11 += "         "
            }
            if($Letter -ceq "M") {
                $Line01 += "888b     d888 "
                $Line02 += "8888b   d8888 "
                $Line03 += "88888b.d88888 "
                $Line04 += "888Y88888P888 "
                $Line05 += "888 Y888P 888 "
                $Line06 += "888  Y8P  888 "
                $Line07 += "888   '   888 "
                $Line08 += "888       888 "
                $Line09 += "              "
                $Line10 += "              "
                $Line11 += "              "
            }
            if($Letter -ceq "N") {
                $Line01 += "888b    888 "
                $Line02 += "8888b   888 "
                $Line03 += "88888b  888 "
                $Line04 += "888Y88b 888 "
                $Line05 += "888 Y88b888 "
                $Line06 += "888  Y88888 "
                $Line07 += "888   Y8888 "
                $Line08 += "888    Y888 "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "O") {
                $Line01 += " .d88888b.  "
                $Line02 += "d88P' 'Y88b "
                $Line03 += "888     888 "
                $Line04 += "888     888 "
                $Line05 += "888     888 "
                $Line06 += "888     888 "
                $Line07 += "Y88b. .d88P "
                $Line08 += " 'Y88888P'  "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "P") {
                $Line01 += "8888888b.  "
                $Line02 += "888   Y88b "
                $Line03 += "888    888 "
                $Line04 += "888   d88P "
                $Line05 += "8888888P'  "
                $Line06 += "888        "
                $Line07 += "888        "
                $Line08 += "888        "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "Q") {
                $Line01 += " .d88888b.  "
                $Line02 += "d88P' 'Y88b "
                $Line03 += "888     888 "
                $Line04 += "888     888 "
                $Line05 += "888     888 "
                $Line06 += "888 Y8b 888 "
                $Line07 += "Y88b.Y8b88P "
                $Line08 += " 'Y888888'  "
                $Line09 += "       Y8b  "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "R") {
                $Line01 += "8888888b.  "
                $Line02 += "888   Y88b "
                $Line03 += "888    888 "
                $Line04 += "888   d88P "
                $Line05 += "8888888P'  "
                $Line06 += "888 T88b   "
                $Line07 += "888  T88b  "
                $Line08 += "888   T88b "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "S") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "Y88b.      "
                $Line04 += " 'Y888b.   "
                $Line05 += "    'Y88b. "
                $Line06 += "      '888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "T") {
                $Line01 += "88888888888 "
                $Line02 += "    888     "
                $Line03 += "    888     "
                $Line04 += "    888     "
                $Line05 += "    888     "
                $Line06 += "    888     "
                $Line07 += "    888     "
                $Line08 += "    888     "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "U") {
                $Line01 += "888     888 "
                $Line02 += "888     888 "
                $Line03 += "888     888 "
                $Line04 += "888     888 "
                $Line05 += "888     888 "
                $Line06 += "888     888 "
                $Line07 += "Y88b. .d88P "
                $Line08 += " 'Y88888P'  "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "V") {
                $Line01 += "888     888 "
                $Line02 += "888     888 "
                $Line03 += "888     888 "
                $Line04 += "Y88b   d88P "
                $Line05 += " Y88b d88P  "
                $Line06 += "  Y88o88P   "
                $Line07 += "   Y888P    "
                $Line08 += "    Y8P     "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "W") {
                $Line01 += "888       888 "
                $Line02 += "888   o   888 "
                $Line03 += "888  d8b  888 "
                $Line04 += "888 d888b 888 "
                $Line05 += "888d88888b888 "
                $Line06 += "88888P Y88888 "
                $Line07 += "8888P   Y8888 "
                $Line08 += "888P     Y888 "
                $Line09 += "              "
                $Line10 += "              "
                $Line11 += "              "
            }
            if($Letter -ceq "X") {
                $Line01 += "Y88b   d88P "
                $Line02 += " Y88b d88P  "
                $Line03 += "  Y88o88P   "
                $Line04 += "   Y888P    "
                $Line05 += "   d888b    "
                $Line06 += "  d88888b   "
                $Line07 += " d88P Y88b  "
                $Line08 += "d88P   Y88b "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "Y") {
                $Line01 += "Y88b   d88P "
                $Line02 += " Y88b d88P  "
                $Line03 += "  Y88o88P   "
                $Line04 += "   Y888P    "
                $Line05 += "    888     "
                $Line06 += "    888     "
                $Line07 += "    888     "
                $Line08 += "    888     "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "Z") {
                $Line01 += "8888888888P "
                $Line02 += "      d88P  "
                $Line03 += "     d88P   "
                $Line04 += "    d88P    "
                $Line05 += "   d88P     "
                $Line06 += "  d88P      "
                $Line07 += " d88P       "
                $Line08 += "d8888888888 "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "1") {
                $Line01 += " d888   "
                $Line02 += "d8888   "
                $Line03 += "  888   "
                $Line04 += "  888   "
                $Line05 += "  888   "
                $Line06 += "  888   "
                $Line07 += "  888   "
                $Line08 += "8888888 "
                $Line09 += "        "
                $Line10 += "        "
                $Line11 += "        "
            }
            if($Letter -ceq "2") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "       888 "
                $Line04 += "     .d88P "
                $Line05 += " .od888P'  "
                $Line06 += "d88P'      "
                $Line07 += "888'       "
                $Line08 += "888888888  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "3") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "     .d88P "
                $Line04 += "    8888'  "
                $Line05 += "     'Y8b. "
                $Line06 += "888    888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "4") {
                $Line01 += "    d8888  "
                $Line02 += "   d8P888  "
                $Line03 += "  d8P 888  "
                $Line04 += " d8P  888  "
                $Line05 += "d88   888  "
                $Line06 += "8888888888 "
                $Line07 += "      888  "
                $Line08 += "      888  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "5") {
                $Line01 += "888888888  "
                $Line02 += "888        "
                $Line03 += "888        "
                $Line04 += "8888888b.  "
                $Line05 += "     'Y88b "
                $Line06 += "       888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "6") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "888        "
                $Line04 += "888d888b.  "
                $Line05 += "888P 'Y88b "
                $Line06 += "888    888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "7") {
                $Line01 += "8888888888 "
                $Line02 += "      d88P "
                $Line03 += "     d88P  "
                $Line04 += "    d88P   "
                $Line05 += " 88888888  "
                $Line06 += "  d88P     "
                $Line07 += " d88P      "
                $Line08 += "d88P       "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "8") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "Y88b. d88P "
                $Line04 += " 'Y88888'  "
                $Line05 += ".d8P''Y8b. "
                $Line06 += "888    888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "9") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "888    888 "
                $Line04 += "Y88b. d888 "
                $Line05 += " 'Y888P888 "
                $Line06 += "       888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "0") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "888    888 "
                $Line04 += "888    888 "
                $Line05 += "888    888 "
                $Line06 += "888    888 "
                $Line07 += "Y88b  d88P "
                $Line08 += " 'Y8888P'  "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
            if($Letter -ceq "!") {
                $Line01 += "888 "
                $Line02 += "888 "
                $Line03 += "888 "
                $Line04 += "888 "
                $Line05 += "888 "
                $Line06 += "Y8P "
                $Line07 += " '  "
                $Line08 += "888 "
                $Line09 += "    "
                $Line10 += "    "
                $Line11 += "    "
            }
            if($Letter -ceq "@") {
                $Line01 += " .d8888888b.  "
                $Line02 += "d88P'   'Y88b "
                $Line03 += "888  d8b  888 "
                $Line04 += "888  888  888 "
                $Line05 += "888  888bd88P "
                $Line06 += "888  Y8888P'  "
                $Line07 += "Y88b.     .d8 "
                $Line08 += " 'Y88888888P' "
                $Line09 += "              "
                $Line10 += "              "
                $Line11 += "              "
            }
            if($Letter -ceq "#") {
                $Line01 += "  888  888   "
                $Line02 += "  888  888   "
                $Line03 += "888888888888 "
                $Line04 += "  888  888   "
                $Line05 += "  888  888   "
                $Line06 += "888888888888 "
                $Line07 += "  888  888   "
                $Line08 += "  888  888   "
                $Line09 += "             "
                $Line10 += "             "
                $Line11 += "             "
            }
            if($Letter -ceq "$") {
                $Line01 += "     88     "
                $Line02 += " .d88888b.  "
                $Line03 += "d88P 88'88b "
                $Line04 += "Y88b.88     "
                $Line05 += " 'Y88888b.  "
                $Line06 += "     88'88b "
                $Line07 += "Y88b 88.88P "
                $Line08 += " 'Y88888P'  "
                $Line09 += "     88     "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "%") {
                $Line01 += "d88b   d88P "
                $Line02 += "Y88P  d88P  "
                $Line03 += "     d88P   "
                $Line04 += "    d88P    "
                $Line05 += "   d88P     "
                $Line06 += "  d88P      "
                $Line07 += " d88P  d88b "
                $Line08 += "d88P   Y88P "
                $Line09 += "            "
                $Line10 += "            "
                $Line11 += "            "
            }
            if($Letter -ceq "^") {
                $Line01 += "    o    "
                $Line02 += "   d8b   "
                $Line03 += "  d888b  "
                $Line04 += " d8P'Y8b "
                $Line05 += "         "
                $Line06 += "         "
                $Line07 += "         "
                $Line08 += "         "
                $Line09 += "         "
                $Line10 += "         "
                $Line11 += "         "
            }
            if($Letter -ceq "&") {
                $Line01 += " .d8888b.     "
                $Line02 += "d88P  '88b    "
                $Line03 += "Y88b. d88P    "
                $Line04 += " 'Y8888P'     "
                $Line05 += ".d88P88K.d88P "
                $Line06 += "888'  Y888P'  "
                $Line07 += "Y88b .d8888b  "
                $Line08 += " 'Y8888P' Y88b"
                $Line09 += "              "
                $Line10 += "              "
                $Line11 += "              "
            }
            if($Letter -ceq "*") {
                $Line01 += "             "
                $Line02 += "      o      "
                $Line03 += "     d8b     "
                $Line04 += "    d888b    "
                $Line05 += "'Y888888888P'"
                $Line06 += "  'Y88888P'  "
                $Line07 += "  d88P'Y88b  "
                $Line08 += " dP'     'Yb "
                $Line09 += "             "
                $Line10 += "             "
                $Line11 += "             "
            }
            if($Letter -ceq "(") {
                $Line01 += "  .d88 "
                $Line02 += " d88P' "
                $Line03 += "d88P   "
                $Line04 += "888    "
                $Line05 += "888    "
                $Line06 += "Y88b   "
                $Line07 += " Y88b. "
                $Line08 += "  'Y88 "
                $Line09 += "       "
                $Line10 += "       "
                $Line11 += "       "
            }
            if($Letter -ceq ")") {
                $Line01 += "88b.   "
                $Line02 += "'Y88b  "
                $Line03 += "  Y88b "
                $Line04 += "   888 "
                $Line05 += "   888 "
                $Line06 += "  d88P "
                $Line07 += ".d88P  "
                $Line08 += "88P'   "
                $Line09 += "       "
                $Line10 += "       "
                $Line11 += "       "
            }
            if($Letter -ceq "-") {
                $Line01 += "       "
                $Line02 += "       "
                $Line03 += "       "
                $Line04 += "       "
                $Line05 += "       "
                $Line06 += "888888 "
                $Line07 += "       "
                $Line08 += "       "
                $Line09 += "       "
                $Line10 += "       "
                $Line11 += "       "
            }
            if($Letter -ceq "_") {
                $Line01 += "         "
                $Line02 += "         "
                $Line03 += "         "
                $Line04 += "         "
                $Line05 += "         "
                $Line06 += "         "
                $Line07 += "         "
                $Line08 += "88888888 "
                $Line09 += "         "
                $Line10 += "         "
                $Line11 += "         "
            }
            if($Letter -ceq "=") {
                $Line01 += "       "
                $Line02 += "       "
                $Line03 += "       "
                $Line04 += "888888 "
                $Line05 += "       "
                $Line06 += "888888 "
                $Line07 += "       "
                $Line08 += "       "
                $Line09 += "       "
                $Line10 += "       "
                $Line11 += "       "
            }
            if($Letter -ceq "+") {
                $Line01 += "        "
                $Line02 += "        "
                $Line03 += "        "
                $Line04 += "   8    "
                $Line05 += " 88888  "
                $Line06 += "   8    "
                $Line07 += "        "
                $Line08 += "        "
                $Line09 += "        "
                $Line10 += "        "
                $Line11 += "        "
            }
            if($Letter -ceq "?") {
                $Line01 += " .d8888b.  "
                $Line02 += "d88P  Y88b "
                $Line03 += "     .d88P "
                $Line04 += "   .d88P'  "
                $Line05 += "   888'    "
                $Line06 += "   888     "
                $Line07 += "           "
                $Line08 += "   888     "
                $Line09 += "           "
                $Line10 += "           "
                $Line11 += "           "
            }
        }

        if($Font -eq "Shadow") {
            if($Letter -eq "a") {
	            $Line01 += " █████╗ "
                $Line02 += "██╔══██╗"
                $Line03 += "███████║"
                $Line04 += "██╔══██║"
                $Line05 += "██║  ██║"
                $Line06 += "╚═╝  ╚═╝"
                $Line07 += "        "
            }
            if($Letter -eq "b") {
                $Line01 += "██████╗ "
                $Line02 += "██╔══██╗"
                $Line03 += "██████╔╝"
                $Line04 += "██╔══██╗"
                $Line05 += "██████╔╝"
                $Line06 += "╚═════╝ "
                $Line07 += "        "
            }
            if($Letter -eq "c") {    
                $Line01 += " ██████╗"
                $Line02 += "██╔════╝"
                $Line03 += "██║     "
                $Line04 += "██║     "
                $Line05 += "╚██████╗"
                $Line06 += " ╚═════╝"
                $Line07 += "        "
            }
            if($Letter -eq "d") {    
                $Line01 += "██████╗ "
                $Line02 += "██╔══██╗"
                $Line03 += "██║  ██║"
                $Line04 += "██║  ██║"
                $Line05 += "██████╔╝"
                $Line06 += "╚═════╝ "
                $Line07 += "        "
            }
            if($Letter -eq "e") {    
                $Line01 += "███████╗"
                $Line02 += "██╔════╝"
                $Line03 += "█████╗  "
                $Line04 += "██╔══╝  "
                $Line05 += "███████╗"
                $Line06 += "╚══════╝"
                $Line07 += "        "
            }
            if($Letter -eq "f") {    
                $Line01 += "███████╗"
                $Line02 += "██╔════╝"
                $Line03 += "█████╗  "
                $Line04 += "██╔══╝  "
                $Line05 += "██║     "
                $Line06 += "╚═╝     "
                $Line07 += "        "
	            }
            if($Letter -eq "g") {
                $Line01 += " ██████╗ "
                $Line02 += "██╔════╝ "
                $Line03 += "██║  ███╗"
                $Line04 += "██║   ██║"
                $Line05 += "╚██████╔╝"
                $Line06 += " ╚═════╝ "
                $Line07 += "         "
            }
            if($Letter -eq "h") {
                $Line01 += "██╗  ██╗"
                $Line02 += "██║  ██║"
                $Line03 += "███████║"
                $Line04 += "██╔══██║"
                $Line05 += "██║  ██║"
                $Line06 += "╚═╝  ╚═╝"
                $Line07 += "        "
            }
            if($Letter -eq "i") {
                $Line01 += "██╗"
                $Line02 += "██║"
                $Line03 += "██║"
                $Line04 += "██║"
                $Line05 += "██║"
                $Line06 += "╚═╝"
                $Line07 += "   "
            }
            if($Letter -eq "j") {
                $Line01 += "     ██╗"
                $Line02 += "     ██║"
                $Line03 += "     ██║"
                $Line04 += "██   ██║"
                $Line05 += "╚█████╔╝"
                $Line06 += " ╚════╝ "
                $Line07 += "        "
            }
            if($Letter -eq "k") {
                $Line01 += "██╗  ██╗"
                $Line02 += "██║ ██╔╝"
                $Line03 += "█████╔╝ "
                $Line04 += "██╔═██╗ "
                $Line05 += "██║  ██╗"
                $Line06 += "╚═╝  ╚═╝"
                $Line07 += "        "
            }
            if($Letter -eq "l") {
                $Line01 += "██╗     "
                $Line02 += "██║     "
                $Line03 += "██║     "
                $Line04 += "██║     "
                $Line05 += "███████╗"
                $Line06 += "╚══════╝"
                $Line07 += "        "
            }
            if($Letter -eq "m") {
                $Line01 += "███╗   ███╗"
                $Line02 += "████╗ ████║"
                $Line03 += "██╔████╔██║"
                $Line04 += "██║╚██╔╝██║"
                $Line05 += "██║ ╚═╝ ██║"
                $Line06 += "╚═╝     ╚═╝"
                $Line07 += "           "
            }
            if($Letter -eq "n") {
                $Line01 += "███╗   ██╗"
                $Line02 += "████╗  ██║"
                $Line03 += "██╔██╗ ██║"
                $Line04 += "██║╚██╗██║"
                $Line05 += "██║ ╚████║"
                $Line06 += "╚═╝  ╚═══╝"
                $Line07 += "          "
            }
            if($Letter -eq "o") {
                $Line01 += " ██████╗ "
                $Line02 += "██╔═══██╗"
                $Line03 += "██║   ██║"
                $Line04 += "██║   ██║"
                $Line05 += "╚██████╔╝"
                $Line06 += " ╚═════╝ "
                $Line07 += "         "
            }
            if($Letter -eq "p") {
                $Line01 += "██████╗ "
                $Line02 += "██╔══██╗"
                $Line03 += "██████╔╝"
                $Line04 += "██╔═══╝ "
                $Line05 += "██║     "
                $Line06 += "╚═╝     "
                $Line07 += "        "
            }
            if($Letter -eq "q") {
                $Line01 += " ██████╗ "
                $Line02 += "██╔═══██╗"
                $Line03 += "██║   ██║"
                $Line04 += "██║▄▄ ██║"
                $Line05 += "╚██████╔╝"
                $Line06 += " ╚══▀▀═╝ "
                $Line07 += "         "
            }
            if($Letter -eq "r") {
                $Line01 += "██████╗ "
                $Line02 += "██╔══██╗"
                $Line03 += "██████╔╝"
                $Line04 += "██╔══██╗"
                $Line05 += "██║  ██║"
                $Line06 += "╚═╝  ╚═╝"
                $Line07 += "        "
            }
            if($Letter -eq "s") {
                $Line01 += "███████╗"
                $Line02 += "██╔════╝"
                $Line03 += "███████╗"
                $Line04 += "╚════██║"
                $Line05 += "███████║"
                $Line06 += "╚══════╝"
                $Line07 += "        "
            }
            if($Letter -eq "t") {
                $Line01 += "████████╗"
                $Line02 += "╚══██╔══╝"
                $Line03 += "   ██║   "
                $Line04 += "   ██║   "
                $Line05 += "   ██║   "
                $Line06 += "   ╚═╝   "
                $Line07 += "         "
            }
            if($Letter -eq "u") {
                $Line01 += "██╗   ██╗"
                $Line02 += "██║   ██║"
                $Line03 += "██║   ██║"
                $Line04 += "██║   ██║"
                $Line05 += "╚██████╔╝"
                $Line06 += " ╚═════╝ "
                $Line07 += "         "
            }
            if($Letter -eq "v") {
                $Line01 += "██╗   ██╗"
                $Line02 += "██║   ██║"
                $Line03 += "██║   ██║"
                $Line04 += "╚██╗ ██╔╝"
                $Line05 += " ╚████╔╝ "
                $Line06 += "  ╚═══╝  "
                $Line07 += "         "
            }
            if($Letter -eq "w") {
                $Line01 += "██╗    ██╗"
                $Line02 += "██║    ██║"
                $Line03 += "██║ █╗ ██║"
                $Line04 += "██║███╗██║"
                $Line05 += "╚███╔███╔╝"
                $Line06 += " ╚══╝╚══╝ "
                $Line07 += "          "
            }
            if($Letter -eq "x") {
                $Line01 += "██╗  ██╗"
                $Line02 += "╚██╗██╔╝"
                $Line03 += " ╚███╔╝ "
                $Line04 += " ██╔██╗ "
                $Line05 += "██╔╝ ██╗"
                $Line06 += "╚═╝  ╚═╝"
                $Line07 += "        "
            }
            if($Letter -eq "y") {
                $Line01 += "██╗   ██╗"
                $Line02 += "╚██╗ ██╔╝"
                $Line03 += " ╚████╔╝ "
                $Line04 += "  ╚██╔╝  "
                $Line05 += "   ██║   "
                $Line06 += "   ╚═╝   "
                $Line07 += "         "
            }
            if($Letter -eq "z") {
                $Line01 += "███████╗"
                $Line02 += "╚══███╔╝"
                $Line03 += "  ███╔╝ "
                $Line04 += " ███╔╝  "
                $Line05 += "███████╗"
                $Line06 += "╚══════╝"
                $Line07 += "        "
            }
            if($Letter -eq "1") {
                $Line01 += " ██╗"
                $Line02 += "███║"
                $Line03 += "╚██║"
                $Line04 += " ██║"
                $Line05 += " ██║"
                $Line06 += " ╚═╝"
                $Line07 += "    "
            }
            if($Letter -eq "2") {
                $Line01 += "██████╗ "
                $Line02 += "╚════██╗"
                $Line03 += " █████╔╝"
                $Line04 += "██╔═══╝ "
                $Line05 += "███████╗"
                $Line06 += "╚══════╝"
                $Line07 += "        "
            }
            if($Letter -eq "3") {
                $Line01 += "██████╗ "
                $Line02 += "╚════██╗"
                $Line03 += " █████╔╝"
                $Line04 += " ╚═══██╗"
                $Line05 += "██████╔╝"
                $Line06 += "╚═════╝ "
                $Line07 += "        "
            }
            if($Letter -eq "4") {
                $Line01 += "██╗  ██╗"
                $Line02 += "██║  ██║"
                $Line03 += "███████║"
                $Line04 += "╚════██║"
                $Line05 += "     ██║"
                $Line06 += "     ╚═╝"
                $Line07 += "        "
            }
            if($Letter -eq "5") {
                $Line01 += "███████╗"
                $Line02 += "██╔════╝"
                $Line03 += "███████╗"
                $Line04 += "╚════██║"
                $Line05 += "███████║"
                $Line06 += "╚══════╝"
                $Line07 += "        "
            }
            if($Letter -eq "6") {
                $Line01 += " ██████╗ "
                $Line02 += "██╔════╝ "
                $Line03 += "███████╗ "
                $Line04 += "██╔═══██╗"
                $Line05 += "╚██████╔╝"
                $Line06 += " ╚═════╝ "
                $Line07 += "         "
            }
            if($Letter -eq "7") {
                $Line01 += "███████╗"
                $Line02 += "╚════██║"
                $Line03 += "    ██╔╝"
                $Line04 += "   ██╔╝ "
                $Line05 += "   ██║  "
                $Line06 += "   ╚═╝  "
                $Line07 += "        "
            }
            if($Letter -eq "8") {
                $Line01 += " █████╗ "
                $Line02 += "██╔══██╗"
                $Line03 += "╚█████╔╝"
                $Line04 += "██╔══██╗"
                $Line05 += "╚█████╔╝"
                $Line06 += " ╚════╝ "
                $Line07 += "        "
            }
            if($Letter -eq "9") {
                $Line01 += " █████╗ "
                $Line02 += "██╔══██╗"
                $Line03 += "╚██████║"
                $Line04 += " ╚═══██║"
                $Line05 += " █████╔╝"
                $Line06 += " ╚════╝ "
                $Line07 += "        "
            }
            if($Letter -eq "0") {
                $Line01 += " ██████╗ "
                $Line02 += "██╔═████╗"
                $Line03 += "██║██╔██║"
                $Line04 += "████╔╝██║"
                $Line05 += "╚██████╔╝"
                $Line06 += " ╚═════╝ "
                $Line07 += "         "
            }
            if($Letter -eq "!") {
                $Line01 += "██╗"
                $Line02 += "██║"
                $Line03 += "██║"
                $Line04 += "╚═╝"
                $Line05 += "██╗"
                $Line06 += "╚═╝"
                $Line07 += "   "
            }
            if($Letter -eq "@") {
                $Line01 += " ██████╗ "
                $Line02 += "██╔═══██╗"
                $Line03 += "██║██╗██║"
                $Line04 += "██║██║██║"
                $Line05 += "╚█║████╔╝"
                $Line06 += " ╚╝╚═══╝ "
                $Line07 += "         "
            }
            if($Letter -eq "#") {
                $Line01 += " ██╗ ██╗ "
                $Line02 += "████████╗"
                $Line03 += "╚██╔═██╔╝"
                $Line04 += "████████╗"
                $Line05 += "╚██╔═██╔╝"
                $Line06 += " ╚═╝ ╚═╝ "
                $Line07 += "         "
            }
            if($Letter -eq "$") {
                $Line01 += "▄▄███▄▄·"
                $Line02 += "██╔════╝"
                $Line03 += "███████╗"
                $Line04 += "╚════██║"
                $Line05 += "███████║"
                $Line06 += "╚═▀▀▀══╝"
                $Line07 += "        "
            }
            if($Letter -eq "%") {
                $Line01 += "██╗ ██╗"
                $Line02 += "╚═╝██╔╝"
                $Line03 += "  ██╔╝ "
                $Line04 += " ██╔╝  "
                $Line05 += "██╔╝██╗"
                $Line06 += "╚═╝ ╚═╝"
                $Line07 += "       "
            }
            if($Letter -eq "^") {
                $Line01 += " ███╗ "
                $Line02 += "██╔██╗"
                $Line03 += "╚═╝╚═╝"
                $Line04 += "      "
                $Line05 += "      "
                $Line06 += "      "
                $Line07 += "      "
            }
            if($Letter -eq "&") {
                $Line01 += "   ██╗   "
                $Line02 += "   ██║   "
                $Line03 += "████████╗"
                $Line04 += "██╔═██╔═╝"
                $Line05 += "██████║  "
                $Line06 += "╚═════╝  "
                $Line07 += "         "
            }
            if($Letter -eq "*") {
                $Line01 += "      "
                $Line02 += "▄ ██╗▄"
                $Line03 += " ████╗"
                $Line04 += "▀╚██╔▀"
                $Line05 += "  ╚═╝ "
                $Line06 += "      "
                $Line07 += "      "
            }
            if($Letter -eq "(") {
                $Line01 += " ██╗"
                $Line02 += "██╔╝"
                $Line03 += "██║ "
                $Line04 += "██║ "
                $Line05 += "╚██╗"
                $Line06 += " ╚═╝"
                $Line07 += "    "
            }
            if($Letter -eq ")") {
                $Line01 += "██╗ "
                $Line02 += "╚██╗"
                $Line03 += " ██║"
                $Line04 += " ██║"
                $Line05 += "██╔╝"
                $Line06 += "╚═╝ "
                $Line07 += "    "
            }
            if($Letter -eq "-") {
                $Line01 += "      "
                $Line02 += "      "
                $Line03 += "█████╗"
                $Line04 += "╚════╝"
                $Line05 += "      "
                $Line06 += "      "
                $Line07 += "      "
            }
            if($Letter -eq "_") {
                $Line01 += "        "
                $Line02 += "        "
                $Line03 += "        "
                $Line04 += "        "
                $Line05 += "███████╗"
                $Line06 += "╚══════╝"
                $Line07 += "        "
            }
            if($Letter -eq "?") {
                $Line01 += "██████╗ "
                $Line02 += "╚════██╗"
                $Line03 += "  ▄███╔╝"
                $Line04 += "  ▀▀══╝ "
                $Line05 += "  ██╗   "
                $Line06 += "  ╚═╝   "
                $Line07 += "        "
            }
            if($Letter -eq " ") {
                $Line01 += "     "
                $Line02 += "     "
                $Line03 += "     "
                $Line04 += "     "
                $Line05 += "     "
                $Line06 += "     "
                $Line07 += "     "
            }
        }
    }

    $IDontKnowWhatImDoingArray = @($Line01,$Line02,$Line03,$Line04,$Line05,$Line06,$Line07,$Line08,$Line09,$Line10,$Line11,$Line12,$Line13,$Line14,$Line15,$Line16,$Line17,$Line18,$Line19,$Line20)

    Write-Host ""
    While($i -le $Fonts.Get_Item($Font)) {
        $ImFineWithThisDotJpeg = $IDontKnowWhatImDoingArray[$i]
        if($Random -eq $True) { $Colour = Get-Random -Input $Colours }
        if($Rainbow -eq $True) { $Colour = $RainbowArray[$i] }
            
        Write-Host -Object ("$ImFineWithThisDotJpeg") -ForegroundColor $Colour
        $i++
    }
}



## This doesn't work how I'd like at the moment
function Create-LargeText() {
    ## Ascii font from http://www.patorjk.com/software/taag/#p=display&f=Colossal&t=Test
    ## Using the above link copy and paste the above characters into notepad one by one on new lines for each character
    ## a-z first then 1-0. All these will automatically be created
    ## The rest will be formated but you'll need to manually enter in their characters

    param(
        [Parameter(Mandatory=$true)][string]$Source,
        [Parameter(Mandatory=$true)][string]$Destination,
        [Parameter(Mandatory=$true)][string]$TextHeight
    )

    $CharacterArray = @("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0")
    if(!($Source)) { $Source = "C:\PSScripts\Newfonts.txt" }
    if(!($Destination)) { $Destination = "C:\PSScripts\Completedfonts.txt" }
    $i = 1

    ## Replaces all the " to ' because I suck :D
    #(Get-Content $Source).replace('"', "'") | Out-File $Destination  -Encoding unicode
    
    Write-Host "1"
    foreach($Line in (Get-Content -Path $Source)) {
        if($i -eq 1) { 
            $a = $i - 1
            Add-Content -Path $Destination "if($Letter -eq <$CharacterArray[$a]<) {" 
        }

        Write-Host "2"

        if($i -le 9) { $Number = "0$i" }
        if($i -ge 10) { $Number = $i }
        
        Add-Content -Path $Destination "    >Line$Number += <$Line<"
        
        if($i -eq $TextHeight) { 
            Add-Content -Path $Destination '}'
            $i = 0
        }
        
        $i++
    }

    ## Replaces all the < to " because I suck :D
    #(Get-Content $Source).replace('<', '"') | Set-Content $Destination
    
    ## Replaces all the > to $ because I suck :D
    #(Get-Content $Source).replace('>', '$') | Set-Content $Destination
}