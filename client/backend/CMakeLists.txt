cmake_minimum_required(VERSION 2.8.9)
project(ClientBackend)
set(JSON_BuildTests OFF CACHE INTERNAL "")

#add_definitions(-DTEXT_CONFIG) # For text based version --taken as commandline argument now
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DDEBUG") # Custom debug flag

LINK_DIRECTORIES(
    ${CMAKE_CURRENT_SOURCE_DIR}/lib/json
)


include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/inc
    ${CMAKE_CURRENT_SOURCE_DIR}/lib/json/single_include/nlohmann 
)


file(GLOB SOURCES "src/*.cpp")
add_executable(main ${SOURCES})
set_property(TARGET main PROPERTY CXX_STANDARD 17)
set_target_properties(main PROPERTIES OUTPUT_NAME "client_backend")
install(TARGETS main DESTINATION bin)

target_link_libraries(main 
    pthread
    -L${CMAKE_CURRENT_SOURCE_DIR}/lib/json
)
