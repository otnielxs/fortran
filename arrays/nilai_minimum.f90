program nilai_minimum
        implicit none

        integer :: nilai(5), mini, i

        print *, "Masukkan 5 angka:"

        do i = 1, 5
                read(*,*) nilai(i)
        end do

        mini = nilai(1)

        do i = 2, 5
                if (nilai(i) < mini) then
                        mini = nilai(i)
                end if
        end do

        print *, "Nilai minimum =", mini
end program nilai_minimum
