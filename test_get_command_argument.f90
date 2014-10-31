
PROGRAM test_get_command_argument
    INTEGER :: i
    CHARACTER(len=32) :: arg
    INTEGER :: count
    count = command_argument_count()
    WRITE (*,*) count
    DO i=0,count
        CALL get_command_argument(i, arg)
        IF (LEN_TRIM(arg) == 0) THEN
            EXIT
            END IF
        WRITE (*,*) TRIM(arg)
    END DO
END PROGRAM