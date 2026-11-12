program nilai_maksimum
        implicit none

        integer :: nilai(7)
        integer :: maks
        integer :: i

        nilai = [10,22,33,18,15,16,17]

        maks = nilai(7)

        do i = 1, 6
                if (nilai(i) > maks) then
                        maks = nilai(i)
                end if
        end do

        print *, "Nilai maksimum =", maks
end program nilai_maksimum
