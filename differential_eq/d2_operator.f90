program test_d2_operator

    implicit none

    integer, parameter :: n = 101

    integer :: i

    real(8) :: pi
    real(8) :: h

    real(8) :: D2(n,n)

    real(8) :: x(n)
    real(8) :: psi(n)

    real(8) :: d2psi(n)
    real(8) :: exact(n)

    pi = acos(-1.0d0)

    h = pi/(n-1)

    D2 = 0.0d0

    do i = 1,n

        D2(i,i) = -2.0d0

        if (i > 1) then
            D2(i,i-1) = 1.0d0
        end if

        if (i < n) then
            D2(i,i+1) = 1.0d0
        end if

    end do

    D2 = D2/(h*h)

    do i = 1,n

        x(i) = (i-1)*h

        psi(i) = sin(x(i))

        exact(i) = -sin(x(i))

    end do

    d2psi = matmul(D2, psi)

    open(unit=10,file="d2_test.dat",status="replace")

    write(10,'(A)') '# x numerical exact'

    do i = 1,n

        write(10,*) x(i), d2psi(i), exact(i)

    end do

    close(10)

    print *, "Data disimpan (file .dat)"

end program test_d2_operator
