# Documentation – Milestone 9: Continuous Integration with Jenkins

## Introduction
This milestone focuses on Continuous Integration (CI) and how it is implemented using Jenkins. CI helps development teams detect issues early by integrating code frequently, building it automatically, and running tests whenever changes are pushed.

---

## What is Continuous Integration
Continuous Integration is a practice where the code is built and tested whenever developers commit changes. This reduces merge conflicts, prevents late-stage failures, and improves collaboration across teams.

CI solves common problems such as:
- Conflicts arising from long-pending merges
- Late discovery of integration issues
- Build failures due to missing dependencies
- Time wasted resolving large integration problems

---

## CI with Jenkins
Jenkins is an open-source automation server widely used for CI/CD.  
It provides:
- Integration with Git and various build tools
- A large plugin ecosystem
- Support for Linux, Windows, and macOS
- Freestyle jobs and Pipeline-as-Code

General CI flow in Jenkins:
1. Developer pushes code to version control  
2. Jenkins fetches latest code  
3. Code is built and tested  
4. Reports and notifications are generated  

---

## Jenkins Pipeline as Code
Jenkins allows defining pipelines using a file called **Jenkinsfile**.  
Pipeline-as-Code enables:
- Version-controlled build and deployment process
- Consistent workflows across environments
- Better visibility and maintenance

Pipeline structure includes:
- Agent
- Stages
- Steps
- Environment variables
- Tools

Typical stages:
- Build
- Test
- Quality Scan
- Package
- Deploy

---

## Code Quality and Analysis in CI
Jenkins integrates with tools like:
- SonarQube
- Checkstyle
- Static code analyzers
- Security scanners

Benefits:
- Detect security vulnerabilities early  
- Identify code smells and errors  
- Enforce consistent coding standards  
- Improve overall software quality  

A typical CI flow includes:
- Source code pull  
- Build  
- Unit testing  
- Code analysis  
- Artifact upload  
- Notification  

---

## Artifact Management
Build output is stored in a repository manager such as:
- Nexus Repository Manager
- Artifactory

Repository managers store:
- Maven packages  
- Docker images  
- Library dependencies  
- Build artifacts  

They help maintain version control, backups, and secure distribution of builds.

---

## Jenkins Master–Agent Architecture
Jenkins supports distributed builds using master and agent nodes.

Advantages:
- Distribution of workload  
- Faster builds  
- Platform-specific builds (Windows, Linux, Mac)  
- Running tests or deployments on remote servers  

Agents require:
- Network access  
- Correct permissions  
- Java installed  
- Tooling needed for builds  

---

## Jenkins Security
Security configuration includes:
- User accounts and login  
- Role-based access control  
- Restricted job permissions  
- Credentials management  
- Plugin access control  

Maintaining proper security ensures safe CI/CD processes and protects credentials.

---

## Jenkins Job Triggers

### Scheduled Builds
Using Cron syntax to run jobs at specific intervals.

### Poll SCM
Jenkins checks the repository for new commits and triggers a build automatically.

### Upstream and Downstream Jobs
A job can be triggered only after another job completes.

### Remote Build Triggering
Jenkins also supports triggering builds remotely by:
- Enabling the remote trigger option  
- Creating a job token  
- Using a user API token  
- Using curl to make a webhook-like request  

This is useful for automation from external systems.

---

## Key Takeaways
- Continuous Integration is essential for modern software development.  
- Jenkins automates build, test, and integration processes.  
- Pipelines provide version-controlled automation.  
- Code analysis enhances quality and security.  
- Artifact repositories store build outputs safely.  
- Master-Agent architecture is useful for distributed builds.  
- Jenkins supports scheduled, SCM-based, and remote builds.

---

## Documentation
This milestone is based on conceptual understanding of Continuous Integration and Jenkins workflows.

