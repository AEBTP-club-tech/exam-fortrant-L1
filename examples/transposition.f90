program transposition

    implicit none
    integer, parameter :: L=3,C=3
    integer, dimension(L,C) :: A
    integer, dimension(C,L) :: tA
    integer :: i,j

    !ouverture du dossier texte
    open(1, file="entree.txt", status="old")

    !lecture de la matrice
    do i = 1, L, 1
        read(1,*) (A(i,j), j=1,C)
    end do
    
    !affichage de A
    do i = 1, L, 1
        write(*,*) (A(i,j), j=1,C)
    end do

    print*," "

    !transposition
    do i = 1, C, 1
        tA(:,i) = A(i,:)
    end do

    print*," "

    !affichage de sa transposee
    do i = 1, C, 1
        write(*,*) (tA(i,j), j=1,L)
    end do

end program transposition
