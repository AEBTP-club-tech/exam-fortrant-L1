program triangle

    implicit none
    integer :: n
    integer :: i,j

    print*, "entrez un nombre entier: "
    read(*,*) n

    do i = 1, n
        write(*,*) ("*",j=1,i)
    end do

end program triangle
