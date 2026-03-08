all:
	nlgc sample.nl
	CLASSPATH=$$CLASSPATH:$$NEVERLANG_HOME/Neverlang.jar javac $$(find . -name '*.java')