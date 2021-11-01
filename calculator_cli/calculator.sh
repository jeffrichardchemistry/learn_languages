#!/bin/bash

Main(){

    declare -A store_oper

    cnt=0
    while :; do
        echo "--------- Calculator -----------"

        if [[ $cnt -gt 0 ]]; then
            echo -n "Do you want see the store operations? [y/n]:"
            read stored_array 
        fi                            
        if [[ $stored_array == "y" ]]; then
            echo -e "${store_oper[@]}\n"
        fi      

        echo -n "Type:"
        echo -n "Operation [1/2/3/4/5/6/q] (Sum/Subtraction/Division/Multiplication/Pow/Sqrt/Quit): "
        read operation
        if [[ $operation -eq "q" ]]; then
            break
        fi

        if [[ $operation -eq "6" ]]; then
            echo -n "Type first number:"
            read num1
        else
            echo -n "Type first number:"
            read num1
            echo -n "Type second number:"
            read num2
        fi
        
        if [[ $operation -eq "1" ]]; then
            SUM    
        elif [[ $operation -eq "2" ]]; then
            SUBTRACTION
        elif [[ $operation -eq "3" ]]; then
            DIVISION
        elif [[ $operation -eq "4" ]]; then
            MULTIPLICATION
        elif [[ $operation -eq "5" ]]; then
            POW
        elif [[ $operation -eq "6" ]]; then
            SQRT
        fi

        store_oper[$cnt]=$resultado #store all results in array ordenado
        
        cnt=$((cnt+1))
        
    done 
}

SUM(){
    #-e interpreta o \n
    resultado=$(echo $((num1+num2)))
    echo -e "Result: $((num1+num2))\n" #How to make math operations
}
SUBTRACTION(){
    #-e interpreta o \n
    resultado=$(echo $((num1-num2)))
    echo -e "Result: $((num1-num2))\n" #How to make math operations
}
DIVISION(){
    #-e interpreta o \n
    if [[ $num2 -lt 0 ]]; then
        echo -e "Division by 0.\n"
    else
        resultado=$(echo $((num1/num2)))
        echo -e "Result: $((num1/num2))\n" #How to make math operations
    fi
}
MULTIPLICATION(){
    #-e interpreta o \n
    resultado=$(echo $((num1*num2)))
    echo -e "Result: $((num1*num2))\n" #How to make math operations
}
POW(){
    #-e interpreta o \n
    resultado=$(echo $((num1**num2)))
    echo -e "Result: $((num1**num2))\n" #How to make math operations
}
SQRT(){
    #-e interpreta o \n
    #echo -e $("Result: sqrt($num1)" | bc -l) #How to make math operations
    resultado=$(echo -e "sqrt($num1)" | bc -l)
    echo -e "Result: $resultado \n"
}


Main
