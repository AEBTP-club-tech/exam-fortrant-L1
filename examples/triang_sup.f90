program triangularisation_superieur

    implicit none
    integer, parameter :: dim = 3
    integer, dimension(dim,dim) :: A
    integer :: i,j

    !ouverture du dossier texte
    open(1, file="entree.txt", status="old")

    !lecture de la matrice
    do i = 1, dim
        read(1,*) (A(i,j), j=1,dim)
    end do

    !affichage de A
    call affichage()

    !triangularisation
    do i = 2, dim
        do j = 1, i-1
            A(i,:) = -A(i,:)*A(j,j)+A(j,:)*A(i,j)
        end do
    end do

    !affichage de sa transposee
    call affichage()

contains

    subroutine affichage
        print*," "
        do i = 1, dim
            write(*,*) (A(i,j),j=1,dim)
        end do
        print*," "
    end subroutine affichage

end program triangularisation_superieur
