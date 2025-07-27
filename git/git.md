## Init
git config --global user.name $NAME && git config --global user.email $EMAIL
git config --global core.autocrlf false

## Удалить последний коммит из удаленного репозитория

```
git reset --hard HEAD~1
```

```
git push origin HEAD --force
```