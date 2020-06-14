FROM jeanblanchard/busybox-java:jdk8
RUN mkdir -p /usr/local/qlys/bin/
COPY ./TCPSocketTestRunnable.jar /usr/local/qlys/bin/ 
COPY ./sendData.sh /bin/
ENTRYPOINT ["java", "-cp", "/usr/local/qlys/bin/TCPSocketTestRunnable.jar", "com.pgx.java.socket.MyServerSocket" ]
