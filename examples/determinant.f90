program determinant

    implicit none
    integer, parameter :: dim = 3
    real, dimension(dim, dim) :: M
    real, dimension(dim - 1, dim - 1) :: C
    real, dimension(1, 1)    :: D
    integer :: i,j

    !ouverture du fichier
    open( 10, file="entree.txt", status="old")
    
    !lecture du fichier
    do i = 1, dim, 1
        read(10, *) (M(i,j), j = 1, dim)
    end do

    !fermeture du fichier
    close(10)

    ! affichage de la matrice M
    write(*,*) "La matrice M:"
    do i = 1, dim, 1
        write(*, *) (M(i,j), j = 1, dim)
    end do

    !affichage de la 2eme colonne
    write(*,*) "La 2eme colonne:"
    write(*,*) M(:, 2)

    !calcul recursif du determinant
    D = det(M, dim)

    !affichage du resultat
    write(*,*) "Le determinant D:"
    write(*, *) D

    !test de coffacteur
    C = coff(M, dim, 3)
    write(*,*) "Le coffacteur C:"
    do i = 1, dim - 1, 1
        write(*, *) C(i,:)
    end do

    contains

    function det(A, dm) result(res)
        integer,intent(in) :: dm
        real, dimension(dm, dm), intent(in) :: A
        real, dimension(dm - 1, dm - 1) :: res
        if ( dm == 2 ) then
            res(1, 1) = A(1,1) * A(2, 2) - A(1, 2)* A(2, 1)
        else
            res(1, 1) = 1000
        end if
    end function det
    function coff(A, dm, i) result(res)
        integer,intent(in) :: dm
        integer,intent(in) :: i
        integer ::  e = 1
        real, dimension(1:dm, 1:dm), intent(inout) :: A
        real, dimension(dm - 1,dm - 1) :: res

        do j = 1, dim, 1
            if ( j /= i ) then
                res(e,:) = A(j, 2:)
                e = e + 1
            end if
        end do
    end function coff
end program determinant
