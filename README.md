docker-gitalist
===============

Self contained gitalist docker container.
Project home page: http://www.gitalist.com/


Point a volume and run
======================

```
docker run -d --name gitalist -v /host/projects:/r -e GITALIST_REPO_DIR=/r jmmills/gitalist
```

Run as a fastcgi
================
```
docker run -d --name=gitalist -e GITALIST_REPO_DIR=/r -v /projects/r/:/r jmmills/gitalist gitalist_fastcgi -listen 0.0.0.0:3000
```

Et voila!
