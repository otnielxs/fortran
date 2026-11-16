program second_derivative_grid
    implicit none

    integer, parameter :: n = 101

    integer :: i

    real(8) :: pi
    real(8) :: h

    real(8) :: x(n)
    real(8) :: f(n)
    real(8) :: d2f(n)

    pi = acos(-1.0d0)

    h = pi/(n-1)

    do i = 1, n

        x(i) = (i-1)*h

        f(i) = sin(x(i))

    end do

    d2f = 0.0d0

    do i = 2, n-1

        d2f(i) = ( &
            f(i+1) &
            - 2.0d0*f(i) &
            + f(i-1) ) / h**2

    end do

    open(unit=10,file="d2sin.dat",status="replace")

    write(10,'(A)') '# x sin(x) d2f exact'

    do i = 1, n

        write(10,*) &
            x(i), &
            f(i), &
            d2f(i), &
            -sin(x(i))

    end do

    close(10)

    print *, "Data tersimpan (file .dat)"

end program second_derivative_grid
