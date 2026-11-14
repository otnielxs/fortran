program bisection
    implicit none

    real(8) :: a,b,c
    real(8) :: tol

    a = 1.0d0
    b = 2.0d0
    tol = 1.0d-6

    do

        c = (a+b)/2.0d0

        if (abs(f(c)) < tol) exit

        if (f(a)*f(c) < 0.0d0) then
            b = c
        else
            a = c
        end if

    end do

    print *, "Akar =", c

contains

    real(8) function f(x)
        real(8), intent(in) :: x

        f = x**3 - x - 2.0d0

    end function f

end program bisection





























