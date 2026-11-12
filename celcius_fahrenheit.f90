program celcius_fahrenheit
        implicit none

        real :: c
        real :: f

        print *, "Masukan nilai suhu dalam satuan Celcius"
        read(*,*) c

        f = (9.0/5.0) * c + 32.0

        print *, "Suhu dalam satuan Fahrenheit =", f
end program celcius_fahrenheit
