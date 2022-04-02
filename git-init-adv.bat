@echo off

pause

if exist ".git" (
    echo .git already exist. && goto END
)

if not exist ".gitignore" (
    (
    echo .gitignore
    )> ".gitignore"
)

if not exist ".gitattributes" (
    (
    echo *	text=auto
    )> ".gitattributes"
) 

if not exist "README.md" (
    (
    echo # README.md
    )> "README.md"
)

if not exist "LICENSE" (
    (
    echo LICENSE
    )> "LICENSE"
)

git init --initial-branch=main
git add .
git commit -m "Initial commit"

:END
