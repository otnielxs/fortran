program euler_acceleration
    implicit none

    integer :: i
    integer :: nstep

    real(8) :: x
    real(8) :: v
    real(8) :: a

    real(8) :: t
    real(8) :: dt

    x = 0.0d0
    v = 0.0d0

    a = 9.8d0

    t = 0.0d0
    dt = 0.1d0

    nstep = 10

    print *, "Step", "Time", "Position", "Velocity"

    do i = 0, nstep

        print *, i, t, x, v

        x = x + v*dt
        v = v + a*dt

        t = t + dt

    end do

end program euler_acceleration
