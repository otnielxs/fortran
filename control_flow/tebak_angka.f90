program tebak_angka
        implicit none

        integer :: rahasia, tebakan

        rahasia = 12112026

        print *, "Tebak angka (range berapapun):"
        read(*,*) tebakan

        if (tebakan == rahasia) then
                print *, "Selamat tebakan benar!, Kamu jago"
        else if (tebakan < rahasia) then
                print *, "Coba angka yang lebih besar lagi"
        else
                print *, "Coba angka yang lebih kecil" 
        end if

end program tebak_angka
