CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
project ("Test move alloc" Fortran)

enable_language(Fortran)

add_executable(test_move_alloc_1 test_move_alloc_1.f90)
add_executable(test_move_alloc_2 test_move_alloc_2.f90)
add_executable(test_get_command_argument test_get_command_argument.f90)
add_executable(test_flush test_flush.f90)
