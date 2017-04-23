build:
	docker build -t testing:2.7.13 -f Dockerfile.2.7.13 . && \
	docker build -t testing:3.3.6 -f Dockerfile.3.3.6 . && \
	docker build -t testing:3.4.6 -f Dockerfile.3.4.6 . && \
	docker build -t testing:3.5.3 -f Dockerfile.3.5.3 . && \
	docker build -t testing:3.6.1 -f Dockerfile.3.6.1 .