! This program uses MOVE_ALLOC to make an allocated array X bigger and
! keep the old values of X by only making one copy of the old values of X
program test_move_alloc_2
  integer :: n = 2
  real, allocatable :: x(:), y(:)
  allocate (x(n), y(2*n))         ! Y is bigger than X
  x = (/(i,i=1,n)/)       ! put "old values" into X
  Y = -1                  ! put different "old values" into Y
  print *, ' allocated of X is ', allocated (X)
  print *, ' allocated of Y is ', allocated (Y)
  print *, ' old X is ', X
  print *, ' old Y is ', Y
  y (1:n) = x             ! copy all of X into the first locations of Y
  ! this is the only copying of values required
  print *, ' new Y is ', y
  call move_alloc (y, x)  ! X is now twice a big as it was, Y is
  ! deallocated, the values were not copied
  print *, ' allocated of X is ', allocated (X)
  print *, ' allocated of Y is ', allocated (Y)
  print *, ' new X is ', x  
end program test_move_alloc_2
