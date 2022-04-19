@ECHO OFF
ECHO Getting the latest Git from the upstream
Echo Wait...
git add --all
git diff-index --quiet HEAD || git commit -m "scheduled commit"
git push
Echo ---------------------------------------------------
Set /p Wait="Finished."