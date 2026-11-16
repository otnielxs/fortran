program rata_rata
        implicit none

        integer :: nilai(8), i, jumlah
        real :: rata

        jumlah = 0

        print *, "Masukkan 8 angka"

        do i = 1, 8
                read(*,*) nilai(i)
        end do
        
        do i = 1, 8
                jumlah = jumlah + nilai(i)
        end do

        rata = real(jumlah) / 8.0

        print *, "Jumlah =", jumlah
        print *, "Rata-rata", rata
end program rata_rata
