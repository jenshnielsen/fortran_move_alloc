CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
project ("Test move alloc" Fortran)

enable_language(Fortran)

add_executable(test_move_alloc_1 test_move_alloc_1.f90)
add_executable(test_move_alloc_2 test_move_alloc_2.f90)
add_executable(test_get_command_argument test_get_command_argument.f90)
add_executable(test_flush test_flush.f90)

add_library(container_mod STATIC container_module.f90)

add_executable(test_generic_type_bound test_generic_type_bound.f90)
target_link_libraries(test_generic_type_bound container_mod)