program harmonic_oscillator
    implicit none

    integer :: i
    integer :: nstep

    real(8) :: x
    real(8) :: v
    real(8) :: a

    real(8) :: t
    real(8) :: dt

    real(8) :: m
    real(8) :: k

    m = 1.0d0
    k = 1.0d0

    x = 1.0d0
    v = 0.0d0

    t = 0.0d0
    dt = 0.1d0

    nstep = 100

    print *, "Step", "Time", "Position", "Velocity"

    do i = 0, nstep

        print *, i, t, x, v

        a = -(k/m)*x

        x = x + v*dt
        v = v + a*dt

        t = t + dt

    end do

end program harmonic_oscillator
