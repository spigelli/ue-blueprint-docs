#! /bin/bash
CYAN='\033[0;36m'
NC='\033[0m'
GREEN='\033[0;32m'

echo -e "${CYAN} Removing old files ... ${NC}\n"
rm -r ./build/*

echo -e "${CYAN} Sourcing python dependencies... ${NC}\n"
source ../.venv/bin/activate

echo -e "${CYAN} Finding restructured text files... ${NC}"
FILENAMES=$(find . -type f -name "*.rst");

COMMA_SEPPARATED=""
for ARG in $FILENAMES
do
    COMMA_SEPPARATED="$COMMA_SEPPARATED"$(printf "%s, " $ARG)
done

echo -e "${CYAN} Building files for $COMMA_SEPPARATED ${NC}"

exec 3>&1
exec 1> >(paste /dev/null -)
  sphinx-build -b html "./source" "./build" $FILENAMES
exec 1>&3 3>&-

echo -e "${CYAN} Reseting server... ${NC}"

exec 3>&1
exec 1> >(paste /dev/null -)
    make -b html
    ./../docker/docker_command_reference
exec 1>&3 3>&-

echo -e "${GREEN} SERVER IS RUNNING! ${NC}"


