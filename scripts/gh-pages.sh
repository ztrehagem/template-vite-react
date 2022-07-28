#!/bin/sh

BUILD_COMMAND=${BUILD_COMMAND:-'npm run build'}
DIST_DIR=${DIST_DIR:-'dist'}
GH_PAGES_BRANCH=${GH_PAGES_BRANCH:-'gh-pages'}
REPO_URL=`git remote get-url ${REMOETE:-'origin'}`
REV=`git rev-list --max-count=1 HEAD`

if [ ! -d $DIST_DIR ]; then
  echo not found DIST_DIR: $DIST_DIR.
  exit 1
fi

cd $DIST_DIR
git init
git add -A
git commit -m "deploy $REV"
git branch -M $GH_PAGES_BRANCH
git push -f $REPO_URL $GH_PAGES_BRANCH:$GH_PAGES_BRANCH
rm -rf .git
cd -
