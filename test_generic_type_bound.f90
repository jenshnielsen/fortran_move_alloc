program test_generic_type_bound
    use container_module
    implicit none
    type(container_type), pointer :: pv
    type(container_type), target :: v
    integer ix
    complex cx
    pv => v
    call passpointer(pv)
    call pv%extract(ix)
    call pv%extract(cx)
    write(*,*) ix
    write(*,*) cx

contains
    subroutine passpointer(pv)
        type(container_type), pointer, intent(inout) :: pv
        integer i
        complex c
        i = 100
        c = (100., -100.)
        call pv%set(i)
        call pv%set(c)
    end subroutine
end program test_generic_type_bound


