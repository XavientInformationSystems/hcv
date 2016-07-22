Verification scripts basically composed of idea to run a smoke test against any Hadoop component using shell script.

This repository contains unix shell scripts. Each script as individual components smoke testing script with driving script name "verification_script.sh".
Configuration file name is config.txt

These scripts are tested on HDP Sanbox 2.4.2 and HDP cluster 2.4.

Contributions welcome!

If you have anything to add or improve, please don't hesitate to send pull requests.

License

The contents of this repository are licensed under the Xavient Information System.
# hcv

How it works?
1. Copy bundled scripts to one of Hadoop cluster node and unzip it.
2. Modify config.txt for required parameters to test. By default its Null means no components test.
3. Change permission to executable to all shell scripts.
4. Run verification_script.sh.
5. Check output in summary output in output.txt and details output in out.txt.

How to use?
1. Hadoop verification scripts can run directly on any node where hadoop components are isntalled.
2. Check config.txt file for required componets to be tested.
3. Once permissions i.e. "chmod 777 *.sh" set run "./verification_script.sh"
4. Verify summary result of verification scripts in output.txt.
5. Verify detail output in case of any error in out.txt.

How to contribute?
1. Fork this repository
2. git clone it
3. Create a branch you'll work on
4. To use/test the step just follow the "How to use" section
5. Do the changes you want to
6. Run/test the your steps before sending your contribution
7. Once you're done just commit your changes & create a Pull Request

