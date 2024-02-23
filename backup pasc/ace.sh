#!/bin/sh
#ACE_ILP_ROOT must be set to root dir - depend on local installation!

CURRENT_DIR=`pwd`
SRC_DIR=$ACE_ILP_ROOT/lib
ILP_HOME=$ACE_ILP_ROOT/lib/
UNAME=uname
OS=Linux
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ACE_ILP_ROOT/lib/so
HARDWARE="`$UNAME -n` : `$UNAME -m` running $OS"
export CURRENT_DIR SRC_DIR ILP_HOME OS HARDWARE LD_LIBRARY_PATH

$SRC_DIR/hipP -h4000000 $SRC_DIR/ace $* -a `ls *.s 2>/dev/null`

# echo "set args $SRC_DIR/ace $* -a `ls *.s 2>/dev/null`" > COMMANDS.gdb
# echo "run" >> COMMANDS.gdb
# gdb --command COMMANDS.gdb $SRC_DIR/ilProlog