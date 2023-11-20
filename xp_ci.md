
<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
# Continuous Integration #
#### Otherwise known as CI ####

## Table Of Contents ##

- [Section 1: Summary](#user-content-summary)
- [Section 2: Goal](#user-content-goal)
- [Section 3: Benefits](#user-content-benefits)
- [Section 4: What are my responsibilities](#user-content-what-are-my-responsibilities)
- [Section 5: How do I go about it](#user-content-how-do-i-go-about-it)
- [Section 6: Hot Tips and Tricks](#user-content-hot-tips-and-tricks)
- [Section 7: F.A.Q.](#user-content-f.a.q.)
- [Section 8: Other Resources](#user-content-other-resources)
- [Section 9: Back To Other Documents](#user-content-back-to-other-documents)

## Summary ##

Continuous Integration (CI) is a practice where code is compiled and run against every check-in. Every commit to the source code repository compiles all the code and runs all the tests. It is recommended that at least a small portion of the tests execute the full stack to ensure that all parts of the system work together.
    

## Goal ##

The goal of CI is to give the team some assurance that the system is always deployable into production. This practice wants to catch when a breaking change enters the system as close to the creation of the bug as possible. By performing these actions automatically on every commit on remote servers you can ensure that environment issues present on the development machine are not causing false negatives.
    

## Benefits ##

* A more stable code base.
* A safety net that enables quicker development.
* Smaller footprint for bugs to be introduced.
* A nearly always deployable code base.
* Less pain during deployment.
    

## What are my responsibilities ##

### Customer/Product Owner ###

It is everyone’s responsibility to know when the deployment pipeline is broken. A broken pipeline directly effects the customer as it means that features that the customer wants cannot be delivered.

### Coach ###

Help the team see the benefits of a CI pipeline. Get out of the development team’s way when they start to implement. Draw attention to when the pipeline fails and ensure the team retrospects on what caused it.

### Development Team ###

Advocate for a CI pipeline. Take time to learn how to do it correctly, utilize it. If you have branches that don’t run the pipeline, fix that. Pay attention when it breaks.
    

## How do I go about it ##

<table style="border=none!important">
<tr><td width=30%></td><td width=40%></td><td width=30%></td></tr>
<tr>
<tr>
    <td><img src="./images/ci/pexels-fauxels-3184292.jpg"></td>
    <td colspan="2">
    <strong>Define CI strategy and project requirements:</strong>
    <br>
    Understand the goals of your project and determine the frequency of code integration, testing platforms, and required tools. This step helps establish a clear direction for your CI setup.
    </td>
</tr>
<tr>
    <td colspan="2">
    <strong>Choose a suitable CI platform:</strong>
    <br>
    Evaluate different CI platforms like Jenkins, Travis CI, CircleCI, GitLab CI/CD, or other based on features, scalability, ease of use, and integration capabilities. Select the one that best fits your project requirements.
    </td>
    <td><img src="./images/ci/pexels-pixabay-159275.jpg"></td>
</tr>
<td><img src="./images/ci/pexels-markus-spiske-1921326.jpg"></td>
<td colspan="2">
    <strong>Develop a build script and configure automated tests:</strong>
    <br>
    Create a build script using the tools appropriate with the CI system you are using. This script should compile code, run tests, and generate necessary artifacts. Configure automated testing frameworks to run unit tests, integration tests, and end-to-end tests to validate code changes.
    </td>
</tr>
<tr>
    <td colspan="2">
    <strong>Integrate CI with version control, define build triggers, monitor builds, and continuously improve the setup:</strong>
    <br>
    Connect your chosen CI platform with the version control system, enabling automatic builds triggered by code changes. Define build triggers such as commits, pull requests, or scheduled builds. Monitor build progress, analyze metrics, test coverage, and code quality reports. Continuously review and refine the CI setup based on feedback, identifying areas for improvement to optimize the CI workflow.
    </td>
    <td><img src="./images/ci/pexels-enric-cruz-lópez-6642546.jpg"></td>
</tr>

</table>
    

## Hot Tips and Tricks ##

### TBD ###

TBD
    

## F.A.Q. ##

### TBD ###

TBD
    

## Other Resources ##

TBD
    

## Back To Other Documents ##

[Documents about XP Practices](README.md)
    

<!-- GENERATED DOCUMENT! DO NOT EDIT! -->
    