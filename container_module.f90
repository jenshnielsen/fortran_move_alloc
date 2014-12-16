module container_module
    private
    type, public :: container_type
        integer, private :: i = 0
        complex, private :: c = (0.,0.)
    contains
        private
        procedure :: xi => extract_integer_from_container
        procedure :: xc => extract_complex_from_container
        procedure :: si => set_integer_in_container
        procedure :: sc => set_complex_in_container
        generic, public :: extract => xi, xc
        generic, public :: set => si, sc
    end type
contains
    subroutine set_integer_in_container(this, val)
        class(container_type), intent(inout)  :: this
        integer, intent(in)                :: val
        this%i = val
    end subroutine set_integer_in_container
    subroutine set_complex_in_container(this, val)
        class(container_type), intent(inout)  :: this
        complex, intent(in)                :: val
        this%c = val
    end subroutine set_complex_in_container
    subroutine extract_integer_from_container(this, val)
        class(container_type), intent(in)  :: this
        integer, intent(out)               :: val
        val = this%i
    end subroutine extract_integer_from_container
    subroutine extract_complex_from_container(this, val)
        class(container_type), intent(in) :: this
        complex, intent(out)              :: val
        val = this%c
    end subroutine extract_complex_from_container

end module container_module