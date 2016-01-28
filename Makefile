build:
	hugo

commit: build
	cd public
	git add .
	git commit -m "$(MSG)"
	git push origin master
	cd ..
	git add .
	git commit -m "$(MSG)"
	git push origin master

serve:
	hugo server -ws ./
