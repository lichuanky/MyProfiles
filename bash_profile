# Change JDK method 1
export JAVA_6_HOME=$(/usr/libexec/java_home -v 1.6)
export JAVA_7_HOME=$(/usr/libexec/java_home -v 1.7)
alias jdk6="export JAVA_HOME=$JAVA_6_HOME"
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"
# Change JDK method 2 for mac
jvm() {
   export JAVA_HOME=`/usr/libexec/java_home -v "$1"`
   java -version
}
