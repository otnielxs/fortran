program tebak_angka_2
        implicit none

        integer :: rahasia, tebakan, i

        rahasia = 12112026

        print *, "Anda memiliki 3 kesempatan menebak"

        do i = 1,3

                print *, "Tebakan ke-", i
                read(*,*) tebakan

                if (tebakan == rahasia) then
                        print *, "Tebakan Anda benar!"
                        stop
                else if (tebakan < rahasia) then
                        print *, "Terlalu kecil. Tebak lagi"
                else
                        print *, "Terlalu besar. Tebak lagi"
                end if
        end do

        print *, "Kesempatan habis"
        print *, "Angka rahasia adalah", rahasia
end program tebak_angka_2
