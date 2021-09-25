# container-image-template

Building, testing and publishing images with Docker, Dive, Goss and Snyk.

Requires Linux, Docker, curl.

A Docker image is published upon tag creation.  Release automation configured in `.github/workflows/build-tags.yaml`.

Release Tags, pinned to a Git SHA, are rebuilt and republished daily to pull in security updates.

Released Docker Images are tagged: `${Docker Repo configured in workflow env var}/${GitHub repo name}:${Git Tag value}`

This approach required mutable Docker Image tags.  This risks publishing breaking changes to a public Docker Image tag.

The risk of publishing breaking changes be mitigated by pinning promised packages and implementing thorough tests in `goss.yaml`.

Deleting and re-publishing tags is highly discouraged, and should only be considered in a `break-glass` situation where a tag breaks due to unpinned required dependencies.

## local use

Full CI workflow.  Installs dependencies and builds image tagged as `test`.

```bash
# install dependencies, build 'test' image from Dockerfile, run tests and scans
make ci

```

Locally you'll want to run `make install` once when first setting up the repo to install dependencies, then repeatedly run `make test` to build and run tests on the image.

Other `make` commands available:

```bash
make install # install dependencies
make test # build 'test' image from Dockerfile, run tests and scans

```

*Note* Dive installation script uses debian installer.  To install Dive on MacOS run `brew install dive`.  [Dive installation instructions](https://github.com/wagoodman/dive#installation
)
