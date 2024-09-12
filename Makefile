.PHONY: dev

dev:
	@docker run \
		-p 8081:80 \
		-d \
		-v $(shell pwd)/Content:/usr/share/nginx/html:ro \
		--name my-website \
		--rm \
		nginx

stop:
	@docker stop my-website
