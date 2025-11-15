program determinant

    implicit none
    integer, parameter :: dim = 4
    real, dimension(dim, dim) :: M
    real, dimension(dim - 1, dim - 1) :: C
    real, dimension(1, 1)    :: D
    real    :: coeff
    integer :: i,j

    !ouverture du fichier
    open( 10, file="entree.txt", status="old")
    
    !lecture du fichier
    do i = 1, dim, 1
        read(10, *) (M(i,j), j = 1, dim)
    end do

    !fermeture du fichier
    close(10)

    !triangularisation superieur
    coeff = 1
    do i = 2, dim
        do j = 1, i-1
            if ( M(i,j) /= 0 ) then
                coeff = coeff * M(j,j)
                M(i,:) = M(i,:)*M(j,j)-M(j,:)*M(i,j)  
            end if
        end do
    end do

    !le determinant
    D = 1
    do i = 1, dim, 1
        D = D * M(i,i)
    end do
    D = D / coeff
    ! affichage de la matrice M
    write(*,*) "La matrice M:"
    do i = 1, dim, 1
        write(*, *) (M(i,j), j = 1, dim)
    end do

    !affichage du resultat
    write(*,*) "Le determinant D:"
    write(*, *) D

end program determinant
