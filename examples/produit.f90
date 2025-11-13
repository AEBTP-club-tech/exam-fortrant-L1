program produit_matriciel

    implicit none
    integer, parameter :: dim = 3
    integer, dimension(dim, dim) :: A,B,C
    integer :: i,j,k

    open(1, file="entree.txt", status="old")

    call lire(A)
    read(1,*)
    call lire(B)

    call afficher(A)
    print*," "
    call afficher(B)

    do i = 1, dim
        do j = 1, dim
            C(i,j) = 0
            do k = 1, dim
                C(i,j) = C(i,j) + A(i,k)*B(k,j)
            end do
        end do
    end do

    print*,""

    call afficher(C)

contains
    subroutine lire(M)
        integer, dimension(dim,dim), intent(inout) :: M

        do i = 1, dim
            read(1,*) (M(i,j), j= 1,dim)
        end do
        
    end subroutine lire

    subroutine afficher(M)
        integer, dimension(dim,dim), intent(in) :: M
        print*, " "
        do i = 1, dim
            write(*,*)(M(i,j), j= 1,dim)
        end do
        
    end subroutine afficher

end program produit_matriciel
