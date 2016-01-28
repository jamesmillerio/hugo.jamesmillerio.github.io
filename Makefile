build:
	hugo

commit: build
	git add .
	git commit -m "$(MSG)"
	git push origin master
	cd public
	git add .
	git commit -m "$(MSG)"
	git push origin master

serve:
	hugo server -ws ./
