# Sample Docker Commands
> _Reference: https://github.com/anitguru/checkov-pipeline-demo_

	mkdir docker_project
	cd docker_project
	git clone git@github.com:anitguru/checkov-pipeline-demo.git
	cd checkov-pipeline-demo
	build -t svagml/checkovdemo .
	docker images | grep checkov
	docker run -dit --name steves_site -p 8080:80 svagml/checkovdemo
	docker ps | grep steve