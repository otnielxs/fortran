program newton
    implicit none

    real(8) :: x
    real(8) :: xbaru
    real(8) :: tol
    integer :: iter

    x = 10.0d0
    tol = 1.0d-6

    iter = 0

    do

        iter = iter + 1

        xbaru = x - f(x)/df(x)

        print *, "Iterasi =", iter
        print *, "x lama  =", x
        print *, "x baru  =", xbaru
        print *, "f(x)    =", f(xbaru)
        print *, "error   =", abs(xbaru - x)
        print *, "------------------------"

        if (abs(xbaru - x) < tol) exit

        x = xbaru

    end do

    print *
    print *, "Akar =", xbaru
    print *, "Jumlah iterasi =", iter

contains

    real(8) function f(x)
        real(8), intent(in) :: x

        f = x**2 - 4.0d0

    end function f

    real(8) function df(x)
        real(8), intent(in) :: x

        df = 2.0d0*x

    end function df

end program newton
