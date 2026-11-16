program test_lapack

    implicit none

    integer :: n
    integer :: lda
    integer :: info
    integer :: lwork

    real(8) :: A(2,2)
    real(8) :: W(2)

    real(8), allocatable :: WORK(:)

    external dsyev

    n = 2
    lda = 2

    A = reshape( [ &
        2.0d0, 1.0d0, &
        1.0d0, 2.0d0 ], &
        [2,2] )

    lwork = 100

    allocate(WORK(lwork))

    call dsyev( &
        'V', &
        'U', &
        n, &
        A, &
        lda, &
        W, &
        WORK, &
        lwork, &
        info )

    print *, "Eigenvalues"

    print *, W

end program test_lapack
