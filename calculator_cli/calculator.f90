program Calculator
implicit none

! Declaração de tipos e variáveis
    real :: num1, num2

    write(*,*)"Type first number:"             
    read(*,*)num1

    write(*,*)"Type second number:"             
    read(*,*)num2

    print*,"Result: ",soma(num1,num2)
    

CONTAINS
    REAL FUNCTION soma(a,b)
        implicit none 
        REAL::a,b,calc_soma

        calc_soma = a+b
        RETURN
    END FUNCTION soma

end program Calculator 