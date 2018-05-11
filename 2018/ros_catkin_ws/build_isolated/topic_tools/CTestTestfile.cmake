# CMake generated Testfile for 
# Source directory: /home/pi/ros_catkin_ws/src/ros_comm/topic_tools
# Build directory: /home/pi/ros_catkin_ws/build_isolated/topic_tools
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_topic_tools_gtest_topic_tools-utest "/home/pi/ros_catkin_ws/build_isolated/topic_tools/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/gtest-topic_tools-utest.xml" "--return-code" "/home/pi/ros_catkin_ws/devel_isolated/topic_tools/lib/topic_tools/topic_tools-utest --gtest_output=xml:/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/gtest-topic_tools-utest.xml")
add_test(_ctest_topic_tools_rostest_test_shapeshifter.test "/home/pi/ros_catkin_ws/build_isolated/topic_tools/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/rostest-test_shapeshifter.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/ros_comm/topic_tools --package=topic_tools --results-filename test_shapeshifter.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results\" /home/pi/ros_catkin_ws/src/ros_comm/topic_tools/test/shapeshifter.test ")
add_test(_ctest_topic_tools_rostest_test_throttle.test "/home/pi/ros_catkin_ws/build_isolated/topic_tools/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/rostest-test_throttle.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/ros_comm/topic_tools --package=topic_tools --results-filename test_throttle.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results\" /home/pi/ros_catkin_ws/src/ros_comm/topic_tools/test/throttle.test ")
add_test(_ctest_topic_tools_rostest_test_throttle_simtime.test "/home/pi/ros_catkin_ws/build_isolated/topic_tools/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/rostest-test_throttle_simtime.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/ros_comm/topic_tools --package=topic_tools --results-filename test_throttle_simtime.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results\" /home/pi/ros_catkin_ws/src/ros_comm/topic_tools/test/throttle_simtime.test ")
add_test(_ctest_topic_tools_rostest_test_drop.test "/home/pi/ros_catkin_ws/build_isolated/topic_tools/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/rostest-test_drop.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/ros_comm/topic_tools --package=topic_tools --results-filename test_drop.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results\" /home/pi/ros_catkin_ws/src/ros_comm/topic_tools/test/drop.test ")
add_test(_ctest_topic_tools_rostest_test_relay.test "/home/pi/ros_catkin_ws/build_isolated/topic_tools/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/rostest-test_relay.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/ros_comm/topic_tools --package=topic_tools --results-filename test_relay.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results\" /home/pi/ros_catkin_ws/src/ros_comm/topic_tools/test/relay.test ")
add_test(_ctest_topic_tools_rostest_test_lazy_transport.test "/home/pi/ros_catkin_ws/build_isolated/topic_tools/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/rostest-test_lazy_transport.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/ros_comm/topic_tools --package=topic_tools --results-filename test_lazy_transport.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results\" /home/pi/ros_catkin_ws/src/ros_comm/topic_tools/test/lazy_transport.test ")
add_test(_ctest_topic_tools_nosetests_test.args.py "/home/pi/ros_catkin_ws/build_isolated/topic_tools/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/nosetests-test.args.py.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/pi/ros_catkin_ws/src/ros_comm/topic_tools/test/args.py --with-xunit --xunit-file=/home/pi/ros_catkin_ws/build_isolated/topic_tools/test_results/topic_tools/nosetests-test.args.py.xml")
subdirs("gtest")
