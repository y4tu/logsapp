run:
	docker run -d -p 3000:3000 -v logs:/app/data --rm --name logsapp y4tu/logsapp:volumes
run-dev:
		docker run -d -p 3000:3000 -v "/home/pkorchagin/projects/logs-app:/app" -v /app/node_modules -v logs:/app/data --rm --name logsapp y4tu/logsapp:volumes
stop:
	docker stop logsapp