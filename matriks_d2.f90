program d2_matrix

    implicit none

    integer, parameter :: n = 5

    integer :: i

    integer :: D2(n,n)

    D2 = 0

    do i = 1, n

        D2(i,i) = -2

        if (i > 1) then
            D2(i,i-1) = 1
        end if

        if (i < n) then
            D2(i,i+1) = 1
        end if

    end do

    print *, "Turunan Kedua Matrix"

    do i=1,n
        print *, D2(i,:)
    end do

end program d2_matrix
