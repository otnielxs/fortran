program second_derivative
    implicit none

    real(8) :: x
    real(8) :: h

    real(8) :: d2f_num
    real(8) :: d2f_exact

    x = 3.141592653589793d0/4.0d0

    h = 1.0d-4

    d2f_num = (f(x+h)-2.0d0*f(x)+f(x-h))/(h*h)

    d2f_exact = -sin(x)

    print *, "x                =", x
    print *, "Numerical d2f    =", d2f_num
    print *, "Exact d2f        =", d2f_exact
    print *, "Error            =", abs(d2f_num-d2f_exact)

contains

    real(8) function f(x)
        real(8), intent(in) :: x

        f = sin(x)

    end function f

end program second_derivative
