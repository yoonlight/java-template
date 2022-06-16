# Java Gradle Template

- java
- gradle
- docker
- github-actions
- pre-commit
- git-flow

## Command

### Gradle

- settings

```shell
gradle init
```

- start

```shell
./gradlew run
```

- build

```shell
./gradlew build
```

### Docker

- build

```shell
docker build . -t java-app
```

- start

```shell
docker run java-app java -cp app.jar project.template.App
```

## pre-commit

- install

```shell
pip install pre-commit
```

- init

```shell
pre-commit sample-config >> .pre-commit-config.yaml
pre-commit install
```

- config version update

```shell
pre-commit autoupdate
```

## git-flow

- init

```shell
git flow init
```

## Reference

- <https://docs.gradle.org/current/samples/sample_building_java_applications.html>
- <https://stackoverflow.com/questions/61108021/gradle-and-docker-how-to-run-a-gradle-build-within-docker-container>
- <https://stackoverflow.com/questions/32567167/gradle-no-main-manifest-attribute>
