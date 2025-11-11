# R Wiki

## contributing
- Clone the repository to your local machine
- dont forget to fetch remote status before actions by running
>git fetch 

- create a new branch
```bash
git checkout -b <branch-name>
```
- work there
- push changes to github
```bash
git add .
git commit -m "your message"
git push origin <branch-name>
```
- on `dev` branch, we will merge all remote changes. to prepare for this we need to
    1) update our local version to the state of the `dev` branch
    2) integrate the changes (so that we dont lose the newest/correct version) in the merge editor
    3) upload the changes 
```bash
# 1
git merge -no-ff dev

# 2 do the merging

# 3 then upload the new version
git add .
git commit -m "your merge message"
git push
``` 

### advanced
Create a pull-request in github to move dev changes to main branch.

## HowTo

### open a local HTML in browser:
- paste the complete file path in your browsers search field

### open a remote HTML in browser:

- open https://htmlpreview.github.io and paste github link
- open https://htmlpreview.github.io?[link]

example: https://htmlpreview.github.io/?https://github.com/GebTorte/r-wiki/blob/main/ggplot2.html


### open in Positron/VSC/RStudio:
- hit the preview button

## dev test
hi