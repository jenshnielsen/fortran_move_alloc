Program slow_dots
  !
  ! This program prints 10 dots, one per second, then finishes.
  !
  Use Iso_Fortran_Env,Only:output_unit
  Implicit None
  Integer i
  Do i = 1,10
     Write(*,'(a)',Advance='No') '.'
     Call delay
     Flush(output_unit)
  End Do
  Print *,'Done.'
Contains
  Subroutine delay
    Integer per_second,start,now
    Intrinsic System_Clock
    Call System_Clock(Count=start,Count_Rate=per_second)
    If (start==-huge(start)) Stop 'No clock.'
    Do
       Call System_Clock(Count=now)
       If (now<start .Or. now>=start+per_second) Exit
    End Do
  End Subroutine delay
End Program slow_dots
