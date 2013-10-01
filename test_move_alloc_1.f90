program test_move_alloc
  integer,allocatable::a(:),b(:)
  n=2
  allocate (a(n), b(n*2))
  a=(/(i,i=1,n)/)
  b=-1
  print *, ' Old a = ',a
  print *, ' Old b = ',b
  print *, ' Allocated(a), allocated(b) = ', allocated(a), allocated(b)
  b(1:n)=a   ! Copy all of a into low end of b (the only copy) 
  print *, ' New b = ',b
  call move_alloc(b,a) ! Make a the container, deallocate b (NO copy!)
  print *, ' New a = ',a
  print *, ' Allocated(a), allocated(b) = ', allocated(a), allocated(b)
end program
