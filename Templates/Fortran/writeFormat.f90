Program writeFormat
! ---- write to file ---------------------------------------------------------
open(0,file='Y.csv')
do i = 5,14
  write(0,'(1x,i0,A)',advance='no') i,","
end do
write(0,'(1x,i0)') 105
close(0)

! ---- write to stdout -------------------------------------------------------
do i = 95,104
  write(*,'(1x,F8.3,A)',advance='no') i+0.0123,","
end do
write(*,'(1x,F8.4)') 105+0.0123

End Program writeFormat
