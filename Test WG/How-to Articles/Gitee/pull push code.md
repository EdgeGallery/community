
### 1. Pull forked branch, Add feature, Push code

1. Clone the forked repo
   eg: git clone https://gitee.com/sharath-boyapally/CICD_test.git
2. Add features , fix issues
3. git add modified-file1
4. git add modified-file2
5. Add all the modifications using git add
6. git commit -s
7. Add commit description
8. ctlr + o
9. ctlr + x
10. enter
11. git push origin feature_branch_name

### 2. sync your fork with upstream[deletes extra commits if you have in your fork]

1. git clone https://gitee.com/sharath-boyapally/CICD_test.git
2. git checkout master
3. git remote add upstream https://gitee.com/EdgeGallery_group/CICD_test.git
4. git fetch upstream
5. git reset --hard upstream/master
6. git push

   sometimes `git push --force` would help

### 3. create new fork branch in sync with upstream:

1. git clone https://gitee.com/sharath-boyapally/CICD_test.git
2. git checkout -b new-branch-name
3. git remote add upstream https://gitee.com/EdgeGallery_group/CICD_test.git
4. git fetch upstream
5. git reset --hard upstream/master
6. git push origin new-branch-name