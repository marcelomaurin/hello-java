JCC=javac
SOURCE= \
	./HelloWorld/Hello.java

TARGET= HelloWorld

CLASS=Hello

DEBUG= -g

all: compile run

compile:
	$(JCC) $(DEBUG) $(SOURCE) 

jar:
	jar cfm $(CLASS).jar Manifest.txt  $(TARGET)/$(CLASS).class


run:
	java -cp . $(TARGET).$(CLASS)

runjar:
	java -jar $(CLASS).jar
