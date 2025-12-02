IMAGE = photo-sorter
# PATH_TO_SORT = /media/kanekiezz/photo

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm \
		-v $(PATH_TO_SORT):/data \
		$(IMAGE) /data

clean:
	docker rmi $(IMAGE)

usage:
	@echo "make build && make run PATH_TO_SORT=/media/kanekiezz/photo" 