#!/bin/bash

set -a

source $$WORKSPACE/bin/common.sh

# Requires:
# packageVersion, notes, componentType, componentVersion, componentId or processName, extractComponentXmlFolder,tag
# we will use packageVersion, notes, componentType, componentVersion, componentId, extractComponentXmlFolder
# usage: "$$WORKSPACE/initCreatePackage.sh" componentId=$_compId packageVersion=$compVer componentType=$_compType notes="$compNotes" extractComponentXmlFolder="$CodeFolderXML"

ARGUMENTS=(authToken componentId packageVersion notes componentType extractComponentXmlFolder)

inputs "$@"
if [ "$?" -gt 0 ]
then
	exit $?
fi

$WORKSPACE/bin/createPackage.sh authToken=$authToken componentId=$componentId packageVersion=$packageVersion componentType=$componentType notes="$notes" extractComponentXmlFolder="$extractComponentXmlFolder="
