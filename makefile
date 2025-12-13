gen_css:
	sass ./styles/styles.scss ./styles/styles.css

deploy:
	surge ./ positivus-denisov-pavel.surge.sh