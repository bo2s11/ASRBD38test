# Fonction pour afficher les choix.
function RegleDuJeu
{
                                                                                                     
    echo "+-----------------+"
    echo "| [ 1 ] : Pierre  |"
    echo "| [ 2 ] : Feuille |"
    echo "| [ 3 ] : Ciseaux |"
    echo "+-----------------+"
}

[Int] $scoreUser = 0
[Int] $scoreCpu = 0


function The1 {

    While ($true) {

        RegleDuJeu
    
        [Int] $user = Read-Host "Faite votre choix "
        [Int] $cpu = Get-Random -Maximum 4 -Minimum 0
    
        switch ($user) {
            1 { $userChoice = "Pierre"  }
            2 { $userChoice = "Feuille" }
            3 { $userChoice = "Ciseaux" }
            default { exit 0}
        }
        switch ($cpu) {
            1 { $cpuChoice = "Pierre"  }
            2 { $cpuChoice = "Feuille" }
            3 { $cpuChoice = "Ciseaux" }
        }
    
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Pierre")) {
        $res = "Égalité"
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Pierre")) {
        $res = "You Win EZ"
        $scoreUser++
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Pierre")) {
        $res = "You lose Noob!"
        $scoreCpu++
        }
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Feuille")) {
        $res = "You lose Noob!"
        $scoreCpu++
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Feuille")) {
        $res = "Égalité"
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Feuille")) {
        $res = "You Win EZ"
        $scoreUser++
        }
        if (($userChoice -eq "Pierre") -and ($cpuChoice -eq "Ciseaux")) {
        $res = "You Win EZ"
        $scoreUser++
        }
        if (($userChoice -eq "Feuille") -and ($cpuChoice -eq "Ciseaux")) {
        $res = "You lose Noob!"
        $scoreCpu++
        }
        if (($userChoice -eq "Ciseaux") -and ($cpuChoice -eq "Ciseaux")) {
        $res = "Égalité"
        }

        clear
        Write-host "Joueur: $userChoice"
        sleep 1
        Write-host "Ordinateur: $cpuChoice"
        sleep 1
        Write-host "Résultat: $res"
        sleep 2
        clear
        Write-host "Score Joueur: $scoreUser"
        sleep 1
        Write-host "Score Ordinateur: $scoreCpu"
        sleep 1
        clear
    }
}
clear
The1 