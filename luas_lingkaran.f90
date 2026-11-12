program luas_lingkaran
        implicit none

        real :: r
        real :: luas
        real, parameter :: pi = 3.14159

        print *, "Masukkan jari-jari: "
        read(*,*) r

        luas = pi * r * r

        print *, "Lingkaran memiliki luas = ", luas
end program luas_lingkaran
