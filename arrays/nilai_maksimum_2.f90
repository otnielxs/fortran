program nilai_maksimum_2
        implicit none

        integer :: nilai(5), maks, i

        print *, "Masukkan 5 angka:"

        do i = 1, 5
                read(*,*) nilai(i)
        end do

        maks = nilai(1)

        do i = 2, 5
                if (nilai(i) > maks) then
                        maks = nilai(i)
                end if
        end do

        print *, "Nilai maksimum =", maks
end program nilai_maksimum_2
