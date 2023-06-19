#!/bin/bash
#
# This is the rough outline of how I'd preserve projects that sometimes disappear from GitHub
# Mark Nyon 6.9.2023
#
# save_this_project.sh <source repo> <local archive name> <archive repo>
# - Params
# - source repo - The repository to archive
# - local archive name - The name of the local directory to link to the archive repository
# - archive repo - The destination repository to archive

echo "################################"
echo "# save_this_project ############"
echo "################################"
echo "# params: source repo: $1"
echo "# params: local source directory name: $2"
echo "# params: archive repo: $3"
echo "# params: local archive directory name: $4"

cp -R $2 $4
rm -rf $4/.git          # Archive repo name, which is part of the arc
cd $4
pwd=(`pwd`)
echo "################################"
echo "# save_this_project ############"
echo "################################"
echo "# current directory: $pwd ######"
# TODO: Add gh repository creation command
#
git remote add origin $3
git add .
git commit -m "Initial Commit" 
git push origin main 
# TODO: Testing
