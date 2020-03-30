.PHONY: shell
shell:
	docker-compose run -p 4000:4000 shell

.PHONY: build
build:
	docker-compose build shell
