program triangularisation_inferieur

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
    !ici on parcour les colonnes avec i et les lignes avec j
    do i = 2, dim
        do j = 1, i-1
            A(:,i) = A(:,i)*A(j,j)-A(:,j)*A(j,i)
        end do
    end do

    !affichage du resultat stocké dans A
    call affichage()

contains

    subroutine affichage
        print*," "
        do i = 1, dim
            write(*,*) (A(i,j),j=1,dim)
        end do
        print*," "
    end subroutine affichage

end program triangularisation_inferieur
