program tambah_matriks
        implicit none

        integer :: A(2,2)
        integer :: B(2,2)
        integer :: C(2,2)


        integer :: i, j

        print *, "Masukkan elemen matriks A"

        do i = 1, 2
                do j = 1, 2
                        read (*,*) A(i,j)
                end do
        end do

        print *, "Masukkan elemen matriks B"

        do i = 1, 2
                do j = 1, 2
                        read (*,*) B(i,j)
                end do
        end do

        do i = 1, 2
                do j = 1, 2
                        C(i,j) = A(i,j) + B(i,j)
                end do
        end do

        print *, "Penjumlahan kedua matriks:"

        do i = 1, 2
                print *, C(i,:)
        end do
end program tambah_matriks
