program euler_motion
    implicit none

    integer :: i
    integer :: nstep

    real(8) :: x
    real(8) :: t
    real(8) :: dt
    real(8) :: v

    x = 0.0d0
    t = 0.0d0

    v = 2.0d0
    dt = 1.0d0

    nstep = 10

    print *, "Step", "Time", "Position"

    do i = 0, nstep

        print *, i, t, x

        x = x + v*dt
        t = t + dt

    end do

end program euler_motion
