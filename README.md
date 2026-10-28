# truesource-demo-auth-service

Demo authentication service for [TrueSource Viewer](https://github.com/nkuhn-vmw/truesource-viewer-hub-edition).

**Intentionally vulnerable demo. Do not deploy it, do not install from it.** It contains only
manifests and lock files, written by hand: the lock files have no integrity hashes, and the
versions named below are pinned on purpose so that the viewer has something to find.

A Spring Security login service that publishes events over ActiveMQ.

| File | Pins | What the viewer should report |
|---|---|---|
| `pom.xml` | `activemq-client` 5.18.2 | OpenWire remote code execution, CVE-2023-46604, known exploited |
| `pom.xml` | `spring-security-core`/`-web` 5.7.0 | Spring Security 5.7 is past its end of life, with known vulnerabilities |
| `pom.xml` | `commons-collections` 3.2.1, `bcprov-jdk15on` 1.69, `nimbus-jose-jwt` 9.21, `gson` 2.8.6 | Known vulnerabilities |
| `Dockerfile` | `tomcat:9.0.58-jdk17` | An old Tomcat 9 image |
