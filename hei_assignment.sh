gameover=$((0))
throw=$((1))
dice1=$((1 + $RANDOM % 6))
dice2=$((1 + $RANDOM % 6))
point=$(($dice1+$dice2))
dice_sum=$((0))
while [[ $gameover -eq 0 ]]
do
    dice_sum=$(($dice1 + $dice2))
    echo "Round $throw; First Dice is $dice1; Second Dice is $dice2; Sum = $dice_sum"
    if [[ $throw -eq 1 ]]
    then
        case $dice_sum in
            2)
                echo "You Win!"
                gameover=$((1))
                ;;
            3)
                echo "You Win!"
                gameover=$((1))
                ;;
            7)
                echo "You Lose!"
                gameover=$((1))
                ;;
            11)
                echo "You Lose!"
                gameover=$((1))
                ;;
            12)
                echo "You Lose!"
                gameover=$((1))
                ;;
            *)
                echo "Your point is $dice_sum."
                throw=$(($throw+1))
                ;;
        esac
    else
        if [[ $dice_sum -eq 7 ]]
        then
            echo "You lose!"
            gameover=$((1))
        elif [[ $dice_sum -eq $point ]]
        then
            echo "You win!"
            gameover=$((1))
        else
            throw=$(($throw+1))
        fi
    fi
    dice1=$((1 + $RANDOM % 6))
    dice2=$((1 + $RANDOM % 6))
done