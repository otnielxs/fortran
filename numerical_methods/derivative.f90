program numerical_derivative
    implicit none

    real(8) :: x
    real(8) :: h
    real(8) :: df_num
    real(8) :: df_exact

    x = 3.141592653589793d0 / 4.0d0

    h = 1.0d-6

    df_num = (f(x+h) - f(x)) / h

    df_exact = cos(x)

    print *, "x =", x
    print *, "Turunan numerik =", df_num
    print *, "Turunan eksak   =", df_exact
    print *, "Error           =", abs(df_num-df_exact)

contains

    real(8) function f(x)
        real(8), intent(in) :: x

        f = sin(x)

    end function f

end program numerical_derivative
