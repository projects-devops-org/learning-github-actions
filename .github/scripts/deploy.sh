BRANCH_NAME=$1

if [ "$BRANCH_NAME" == "main" ]; then
  PWD_PATH="/home/azureuser/learning-github-actions"
if [ "$BRANCH_NAME" == "certi" ]; then
  PWD_PATH="/home/azureuser/certi"
else
  PWD_PATH="/home/azureuser/develop"
fi


ssh -o StrictHostKeyChecking=no azureuser@40.82.162.21 <<HTML

  cd $PWD_PATH
  git pull origin $BRANCH_NAME

HTML