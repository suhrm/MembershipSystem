# CMake generated Testfile for 
# Source directory: /home/suhrm/gateway/gatewayCPP/lib/json/test/cmake_import
# Build directory: /home/suhrm/gateway/gatewayCPP/lib/json/test/cmake_import
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_import_configure "/usr/bin/cmake" "-G" "Unix Makefiles" "-A" "" "-DCMAKE_CXX_COMPILER=/usr/bin/c++" "-Dnlohmann_json_DIR=/home/suhrm/gateway/gatewayCPP/lib/json" "/home/suhrm/gateway/gatewayCPP/lib/json/test/cmake_import/project")
set_tests_properties(cmake_import_configure PROPERTIES  FIXTURES_SETUP "cmake_import")
add_test(cmake_import_build "/usr/bin/cmake" "--build" ".")
set_tests_properties(cmake_import_build PROPERTIES  FIXTURES_REQUIRED "cmake_import")
