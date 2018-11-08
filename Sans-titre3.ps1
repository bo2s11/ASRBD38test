clear
function calcul {
    while ($true) { 
    try {
     [int] $input1 = Read-Host "premier nombre" 
     }
    catch { 
            echo "voulez vous quitter"
            $quit = read-host " o ou n "
            if ($quit -eq "o") {
                exit 0
                }
            else {
                calcul
                } 

    }        
     echo "[+] : ADD"
     echo "[-] : SOU"
     echo "[/] : DIV"
     echo "[*] : MUL"

     [string] $input2 = Read-Host "OPERATION"

     [int] $input3 = Read-Host "second nombre"

     switch($input2) { "+" { $input1 + $input3 } 
                       "-" { $input1 - $input3 }                
                       "/" { $input1 / $input3 } 
                       "*" { $input1 * $input3 }
                       }
    Sleep 2
    clear
                   
      }

}

calcul