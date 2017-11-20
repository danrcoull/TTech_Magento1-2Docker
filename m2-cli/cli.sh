#!/bin/bash -x
if [ $MAGE_VER == 1 ]
then
	/n98-magerun.phar --root-dir=$MAGE_ROOT_DIR $@
else
	/n98-magerun2.phar --root-dir=$MAGE_ROOT_DIR $@
fi
