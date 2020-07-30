For every pull request pushed to EdgeGallery projects, we will run some code compliance verification tests against the code.

Tools used in EdgeGallery pull request compliance verification:

1.  CheckStyle (Java)

2.  PMD (Java)

3.  FindBugs (Java)

4.  ESLint (Java Script / Vue)

5.  golangci-lint (golang)

**Note:** In addition to the tools listed above, submitted code **MUST** pass each project’s compilation process.

You can find the GitHub pull request compliance verification result on the pull request page.

![](https://edgegallery.atlassian.net/wiki/download/attachments/364094/Snipaste_2020-03-18_11-40-12.png?api=v2)

* * *

CheckStyle
----------

For EdgeGallery projects written in Java, we use [CheckStyle](https://maven.apache.org/plugins/maven-checkstyle-plugin/) as part of GitHub pull request verification test.

**Checkstyle** is an open source tool that checks code against a configurable set of rules.

### How EdgeGallery uses CheckStyle

EdgeGallery projects use [Google Java Style](https://google.github.io/styleguide/javaguide.html) with 2 modifications:

*   4.2 Block indentation: +4 spaces

*   4.4 Column limit: 120

Our jenkins CI job will perform CheckStyle analysis on submitted code against https://github.com/EdgeGallery/infra/blob/master/configs/edgegallery_checks.xml. All ‘warning’ severity level is considered a violation.

* * *

PMD
---

For EdgeGallery projects written in Java, we use [PMD](https://github.com/pmd/pmd) (Programming Mistake Detector) as part of GitHub pull request verification test.

**PMD** is a static source code analyzer. It finds common programming flaws like unused variables, empty catch blocks, unnecessary object creation, and so forth. It’s mainly concerned with **Java and Apex**, but **supports six other languages**.

PMD is able to detect flaws or possible flaws in source code, like:

*   _Possible bugs_—Empty try/catch/finally/switch blocks.

*   _Dead code_—Unused local variables, parameters and private methods.

*   Empty if/while statements.

*   _Overcomplicated expressions_—Unnecessary if statements, for loops that could be while loops.

*   _Suboptimal code_—Wasteful String/StringBuffer usage.

*   Classes with high Cyclomatic Complexity measurements.

*   _Duplicate code_—Copied/pasted code can mean copied/pasted bugs, and decreases maintainability.

### How EdgeGallery uses PMD

All PMD violations with priority level 1 (most severe) and 2 are required to be fixed before PR is merged.

#### Reference

PMD Java rules: [https://pmd.github.io/latest/pmd\_rules\_java.html](https://pmd.github.io/latest/pmd_rules_java.html)

* * *

FindBugs
--------

For EdgeGallery projects written in Java, we use [FindBugs](https://gleclaire.github.io/findbugs-maven-plugin/) as part of GitHub pull request verification test.

**FindBugs** uses static analysis to inspect Java bytecode for occurrences of bug patterns.

### How EdgeGallery uses FindBugs

All FindBugs warnings are required to be fixed before PR is merged.

#### Reference

FindBugs Bug descriptor: [http://findbugs.sourceforge.net/bugDescriptions.html](http://findbugs.sourceforge.net/bugDescriptions.html)

* * *

ESLint
------

For EdgeGallery projects written in Java Script, we use [ESLint](https://eslint.org/) and [eslint-plugin-vue](https://eslint.vuejs.org/) as part of GitHub pull request verification test.

**ESLint** is a tool for identifying and reporting on patterns found in ECMAScript/JavaScript code, with the goal of making code more consistent and avoiding bugs.

eslint-plugin-vue is the official ESLint plugin for Vue.js.

### How EdgeGallery uses ESLint

EdgeGallery uses eslint-plugin-vue [base rules](https://eslint.vuejs.org/rules/#base-rules-enabling-correct-eslint-parsing), [essential rules](https://eslint.vuejs.org/rules/#priority-a-essential-error-prevention) and [strongly-recommended rules](https://eslint.vuejs.org/rules/#priority-b-strongly-recommended-improving-readability).

All issues are required to be fixed before PR is merged.

#### Reference

eslint-plugin-vue rules: [https://eslint.vuejs.org/rules/](https://eslint.vuejs.org/rules/)

* * *

golangci-lint
-------------

For EdgeGallery projects written in Go, we use [golangci-lint](https://golangci.com/) as part of GitHub pull request verification test.

golangci-lint is a linters aggregator. It's fast: on average 5 times faster than gometalinter. It's easy to integrate and use, has nice output and has a minimum number of false positives. It supports go modules.

### How EdgeGallery uses golangci-lint

All golangci-lint issues are required to be fixed before PR is merged.

#### Reference

https://github.com/golangci/golangci-lint#go