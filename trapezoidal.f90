program trapezoidal
    implicit none

    integer :: i
    integer :: n

    real(8) :: a
    real(8) :: b
    real(8) :: h
    real(8) :: x
    real(8) :: integral

    a = 0.0d0
    b = 3.141592653589793d0
    n = 100 

    h = (b - a) / n

    integral = 0.5d0 * (f(a) + f(b))

    print *, "i", "x", "f(x)"

    do i = 1, n-1

        x = a + i*h

        print *, i, x, f(x)

        integral = integral + f(x)

    end do

    integral = integral * h

    print *
    print *, "Integral =", integral

contains

    real(8) function f(x)
        real(8), intent(in) :: x

        f = sin(x) 

    end function f

end program trapezoidal
