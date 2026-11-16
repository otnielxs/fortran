program schrodinger_box

    implicit none

    integer, parameter :: n = 100

    integer :: i
    integer :: j
    integer :: info
    integer :: lwork

    real(8) :: pi
    real(8) :: L
    real(8) :: h
    real(8) :: norm

    real(8), allocatable :: D2(:,:)
    real(8), allocatable :: Ham(:,:)

    real(8), allocatable :: eig(:)
    real(8), allocatable :: work(:)

    real(8), allocatable :: x(:)

    external dsyev

    pi = acos(-1.0d0)

    L = pi

    h = L/(n+1)

    allocate(D2(n,n))
    allocate(Ham(n,n))
    allocate(eig(n))
    allocate(x(n))

    D2 = 0.0d0

    !
    ! Grid interior
    !
    do i=1,n
        x(i) = i*h
    end do

    !
    ! Second derivative matrix
    !
    do i=1,n

        D2(i,i) = -2.0d0

        if (i > 1) then
            D2(i,i-1) = 1.0d0
        end if

        if (i < n) then
            D2(i,i+1) = 1.0d0
        end if

    end do

    D2 = D2/(h*h)

    !
    ! Infinite square well
    ! V(x)=0
    !
    Ham = -0.5d0*D2

    !
    ! LAPACK workspace
    !
    lwork = 3*n

    allocate(work(lwork))

    call dsyev( &
        'V', &
        'U', &
        n, &
        Ham, &
        n, &
        eig, &
        work, &
        lwork, &
        info )

    if (info /= 0) then

        print *, "LAPACK error =", info
        stop

    end if

    print *
    print *, "First 5 eigenvalues"
    print *

    do i=1,5

        print '(I3,2X,F12.6)', i, eig(i)

    end do

    print *
    print *, "Exact values"
    print *

    do i=1,5

        print '(I3,2X,F12.6)', i, 0.5d0*dble(i*i)

    end do

    !
    ! Normalize eigenvectors
    !
    do j=1,3

        norm = sqrt( sum(Ham(:,j)**2)*h )

        Ham(:,j) = Ham(:,j)/norm

    end do

    !
    ! Save first 3 wavefunctions
    !
    open(unit=10,file="wavefunctions.dat",status="replace")

    write(10,'(A)') &
    '# x psi1 psi2 psi3'

    do i=1,n

        write(10,*) &
        x(i), &
        Ham(i,1), &
        Ham(i,2), &
        Ham(i,3)

    end do

    close(10)

    print *
    print *, "Wavefunctions saved:"
    print *, "wavefunctions.dat"

end program schrodinger_box
