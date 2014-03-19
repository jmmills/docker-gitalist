docker-gitalist
===============

Self contained gitalist docker container.
Project home page: http://www.gitalist.com/


Point a volume at repository and you are ready to go
=========

```
docker run --name gitalist -v /host/projects:/r -e GITALIST_REPO_DIR=/r jmmills/gitalist
```

Et voila!
