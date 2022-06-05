#!/bin/sh

function unit0 { ruby ../tests/unit/scanner_test.rb; }
function unit1 { ruby ../tests/unit/parser_test.rb; }
function unit2 { ruby ../tests/unit/env_test.rb; }

function integ0 { ruby ../tests/int/toolchain_test.rb; }

function listunit
{
	echo "== unit tests:"
	echo "0 - scanner_test"
	echo "1 - parser_test"
	echo "2 - env_test"
}

function listinteg
{
	echo "== integration tests:"
	echo "0 - toolchain_test"
}

case $1 in
	-u)
		if [ -z $2 ]
		then
			unit0; unit1; unit2;
		else
			case $2 in
				0)
					unit0
					;;
				1)
					unit1
					;;
				2)
					unit2
					;;
				*)
					echo "Unit test #$2 does not exist."
					;;
			esac
		fi
		;;
	-i)
		if [ -z $2 ]
		then
			integ0
		else
			case $2 in
				0)
					integ0
					;;
				*)
					echo "Integration test #$2 does not exist."
					;;
			esac
		fi
		;;
	-a)
		unit0; unit1; unit2; integ0;
		;;
	-l)
		if [ -z $2 ]
		then
			listunit
			listinteg	
		else
			if [ $2 = "u" ]
			then
				listunit
			elif [ $2 = "i" ]
			then
				listinteg
			else
				echo "Unkown option '$2', please use 'u' or 'i', or leave blank."
			fi
		fi
		;;
	-h)
		echo "man for 'run_tests.sh'"
		echo "script for conducting dev tests. Updated 2022_06"
		echo "-u n | Run unit test n. Leave blank to run all unit tests."
		echo "-i n | Run integration test n. Leave blank to run all integration tests."
		echo "-a   | Run all tests"
		echo "-l n | n=u: list all unit tests. n=i: list all integration tests. Leave blank to list all tests."
		echo "-h   | help"
		;;
	*)
		echo "Unknown option '$1', try running with -h for man."
		;;
esac
