program PPCM

    implicit none
    integer :: a,b,c,reste,quotient,a1,b1

    print*, "entrrez 2 nombres A et B :"
    read(*,*) a,b
    a1 =a
    b1 = b

    if ( a<b ) then
        c = a
        a = b
        b = c
    end if

    reste = b
    !algorythme d'Euclide
    do while ( reste /= 0 )
        b = reste
        quotient = a/b
        reste = a-quotient*b
        a = b
    end do

    !ppcm = a*b/pgcd
    a = a1*b1/b

    print*,"le PPCM est :",a

end program PPCM
