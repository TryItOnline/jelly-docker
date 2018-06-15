# Dockerized Jelly

Build:

```bash
docker build --no-cache -t andrewsav/jelly .
```

Issue: <https://github.com/pre-commit/pre-commit/issues/655>

Publish:

```bash
docker login
docker tag andrewsav/jelly andrewsav/jelly:v0.1
docker push andrewsav/jelly
docker push andrewsav/jelly:v0.1
```


Run:

```bash
docker run -it --rm andrewsav/jelly eun '“3ḅaė;œ»'
```

Installing selinux / docker on fresh Fedora 27:

```bash
dnf upgrade -y
dnf -y install dnf-plugins-core
#dnf install psmisc selinux-policy-sandbox policycoreutils-sandbox selinux-policy-devel -y
dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
dnf install docker-ce -y
sudo systemctl enable docker
sudo systemctl start docker
```
