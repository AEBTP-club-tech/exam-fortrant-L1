program Pascal

    implicit none
    integer :: n,j,i
    integer, dimension(40,40) :: A

    print*, "entrez le nombre de ligne :"
    read(*,*) n

    !initialisation des 2 premieres lignes
    A(1,1) = 1
    A(2,2) = 1 
    A(2,1) = 1

    !creation du triangle inferieur
    do i = 3, n, 1
        A(i,1 ) = 1 ! sur la premiere colone
        A(i,i) = 1 !la diagonale

        do j = 2, i-1
            A(i,j) = A(i-1,j-1)+A(i-1,j)
        end do
    end do 

    !affichage
    do i = 1, n, 1
        write(*,*) (A(i,j), j=1,i)
    end do


end program Pascal
