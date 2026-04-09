# Install Java
sudo apt install openjdk-8-jdk -y (Java 8 only works )

# if jar file:
cd ../users
java -jar users.jar

# if jar does not exists:

mvn clean package
java -jar target/users.jar

nohup java -jar users.jar &
