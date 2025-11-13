program inversion

    implicit none
    integer, parameter :: dim=3
    real, dimension(dim,dim) :: A,B
    integer :: i,j,determinant

    !creation de la matrice unite B
    do i = 1, dim
        do j = 1, dim
            if ( i == j ) then
                B(i,j) = 1 
            else
                B(i,j) = 0
            endif
        end do
    end do

    !ouverture du dossier texte
    open(1, file="entree.txt", status="old")

    !lecture de la matrice
    do i = 1, dim
        read(1,*) (A(i,j), j=1,dim)
    end do

    !fermeture du fichier
    close(1)


    !triangularisation superieur
    do i = 2, dim
        do j = 1, i-1
            B(i,:) = B(i,:)*A(j,j)-B(j,:)*A(i,j)
            A(i,:) = A(i,:)*A(j,j)-A(j,:)*A(i,j)    
        end do
    end do

    !triangularisation inférieur
    do i = dim-1, 1, -1
        do j = dim,i+1, -1
            B(i,:) = B(i,:)*A(j,j)-B(j,:)*A(i,j)
            A(i,:) = A(i,:)*A(j,j)-A(j,:)*A(i,j)
        end do
    end do

    !calcul du determinant
    determinant = 1
    do i = 1, dim
        determinant = determinant * A(i,i)
    end do

    !uniformisation de la diagonale
    do i = 1, dim
        do j = 1, dim
            if ( i /= j ) then
                B(i,:) = B(i,:)*A(j,j)
            end if
        end do
    end do
    
    print*," "

    if ( determinant /= 0 ) then
        do i = 1, dim
            B(i,:) = B(i,:)/determinant
        end do
        do i = 1, dim
            write(*,*) (B(i,j), j=1,dim)
        end do
    else
        print*, "la matrice n'est pas inversible"
    end if


end program inversion
