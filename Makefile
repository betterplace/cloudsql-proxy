DOCKER_IMAGE_LATEST = gce-proxy
DOCKER_IMAGE = $(DOCKER_IMAGE_LATEST):$(REVISION)
PROJECT_ID = betterplace-183212
REMOTE_LATEST_TAG := eu.gcr.io/${PROJECT_ID}/$(DOCKER_IMAGE_LATEST)
REMOTE_TAG = eu.gcr.io/$(PROJECT_ID)/$(DOCKER_IMAGE)
REVISION ?= latest
GOPATH := $(shell pwd)/gospace
GOBIN = $(GOPATH)/bin

.EXPORT_ALL_VARIABLES:

all: cloud_sql_proxy

cloud_sql_proxy:
	sh cmd/cloud_sql_proxy/build.sh

setup:
	go mod download

test:
	@go test

coverage:
	@go test -coverprofile=coverage.out

coverage-display: coverage
	@go tool cover -html=coverage.out

clean:
	@rm -f cloud_sql_proxy coverage.out tags

clobber: clean
	@rm -rf $(GOPATH)/*

tags: clean
	@gotags -tag-relative=false -silent=true -R=true -f $@ . $(GOPATH)

build-info:
	@echo $(DOCKER_IMAGE)

build:
	docker build --pull -f Dockerfile.alpine -t $(DOCKER_IMAGE) .
	$(MAKE) build-info

build-force:
	docker build --pull -f Dockerfile.alpine -t $(DOCKER_IMAGE) --no-cache .
	$(MAKE) build-info

debug:
	docker run --rm -it $(DOCKER_IMAGE) bash

pull:
	gcloud auth configure-docker
	docker pull $(REMOTE_TAG)
	docker tag $(REMOTE_TAG) $(DOCKER_IMAGE)

push: build
	gcloud auth configure-docker
	docker tag $(DOCKER_IMAGE) $(REMOTE_TAG)
	docker push $(REMOTE_TAG)

push-latest: push
	docker tag ${DOCKER_IMAGE} ${REMOTE_LATEST_TAG}
	docker push ${REMOTE_LATEST_TAG}
