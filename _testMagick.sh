#!/bin/sh

# This script will take the output of the BulkFSH tool (JSON files)
# and will place individual files into appropriate subdirectories
# so the tester can easily remove or change data per test case in their
# IG. The process is quite simple:
#
#  1. Get the contents of the input directory
#  2. For each CQL file in the input/cql directory create the appropriate test structure
#  3. ???
#  4. Test!


# Read a yes or no answer from user
read_yesno() {
    local inp=''
    while [ "$inp" != "y" ] && [ "$inp" != "n" ];
    do
        read -p "$1 [y/n]:" inp
    done 

    eval $2="$inp"
}

# Where the Bulk FSH output in format Patient-XXXXXX is located
declare FSH_OUTPUT_ROOT='./input/tests'
# Where the output for test library should be output
declare TEST_OUTPUT='./input/tests/library'
# CQL Source code
declare CQL_SOURCE='./input/cql'
# Test Case Prefix
declare TEST_PREFIX='IMMZ-Patient'

if [ ! -d $CQL_SOURCE ]; then
	>&2 echo "Missing $CQL_SOURCE directory! Do you have CQL files located there?"
	exit 999
fi
if [ ! -d $FSH_OUTPUT_ROOT ]; then
	>&2 echo "Missing the $FSH_OUTPUT_ROOT! Have you run the FSH generator?"
	exit 911
fi
if [ ! -d $TEST_OUTPUT ]; then
	mkdir $TEST_OUTPUT
else
	read_yesno "$TEST_OUTPUT exists - do you want to remove it and re-copy the test cases?" REMOVE_SOURCE
	if [ "$REMOVE_SOURCE" = "y" ]; then
		rm -rf $TEST_OUTPUT
		mkdir $TEST_OUTPUT
	fi
fi

echo "Scanning for Libraries"
# Find the library IDs from the CQL files
cat $(ls $CQL_SOURCE/*.cql) | grep "^library\s.*$" | sed -E 's/library\s([A-Za-z0-9]*).*$/\1/ig' | while read LIB ; do

	# Create output directory
	declare LIB_DIR=$TEST_OUTPUT/$LIB
	echo "$LIB => $LIB_DIR"
	if [ ! -d $LIB_DIR ]; then
		mkdir $LIB_DIR
	fi

	# For each FSH file copy them
	ls $FSH_OUTPUT_ROOT/*.json | sed -E 's/^\.\/input\/tests\/(.*)$/\1/I' | while read RESOURCE ; do
		declare TEST_CASE_ID=`echo $RESOURCE | sed -E 's/^.*-(.*?)-([m|f])\.json$/\1-\2/g'`
		declare SOURCE_FILE=$FSH_OUTPUT_ROOT/$RESOURCE
		declare DEST_DIR=$TEST_OUTPUT/$LIB/$TEST_PREFIX-$TEST_CASE_ID
		declare DEST_FILE=`echo $RESOURCE | sed -E 's/^[^\-]*-(.*?)$/\1/g'`
		if [ ! -d $DEST_DIR ]; then
			mkdir $DEST_DIR
		fi
		cp $SOURCE_FILE $DEST_DIR/$DEST_FILE
	done
done
