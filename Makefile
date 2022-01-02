all:
	docker build -t torport .
	docker run -d -p 8080:80 torport
