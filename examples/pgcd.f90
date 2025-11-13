program maximum

    implicit none
    integer, dimension(10) :: A
    integer :: i,max

    read(*,*) (A(i),i = 1, 10)

    max = A(1)

    do i=1,10
        if ( max<A(i) ) then
            max = A(i)
        end if
    end do

    print*,"le nombre maximum est : ", max

end program maximum

