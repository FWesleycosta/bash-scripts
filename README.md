# bash-scripts

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)]()
[![GitHub license](https://img.shields.io/github/license/FWesleyCosta/bash-scripts.svg)](https://github.com/FWesleyCosta/bash-scripts/blob/main/LICENSE)
[![Shell](https://img.shields.io/badge/Shell-Scripting-blue)]()
[![GitHub last commit](https://img.shields.io/github/last-commit/FWesleyCosta/bash-scripts.svg)](https://github.com/FWesleyCosta/bash-scripts/commits/main)
[![GitHub pull-requests](https://img.shields.io/github/issues-pr/FWesleyCosta/bash-scripts.svg)](https://github.com/FWesleyCosta/bash-scripts/pulls)
[![GitHub forks](https://img.shields.io/github/forks/FWesleyCosta/bash-scripts.svg?style=social&label=Fork&maxAge=2592000)](https://github.com/FWesleyCosta/bash-scripts/network)
[![GitHub stars](https://img.shields.io/github/stars/FWesleyCosta/bash-scripts.svg?style=social&label=Star&maxAge=2592000)](https://github.com/FWesleyCosta/bash-scripts/stargazers)

## This repository is dedicated to storing a collection of diverse scripts designed to be executed within the Shell Script.

## Table of Contents
- [Table of Contents](#table-of-contents)
  - [1. Introduction](#1-introduction)
  - [2. Installation](#2-installation)
  - [3. Usage](#3-usage)
  - [3.1 Reset Password Cognito](#31-reset-password-cognito)

## 1. Introduction

<p>This repository is dedicated to storing a collection of diverse scripts designed to be executed within the Shell Script. The scripts are designed to automate tasks, such as installing software, managing files, and performing system maintenance. The scripts are organized into categories based on their functionality, making it easy to find the script you need. The scripts are well-documented and easy to understand, making them suitable for users of all skill levels. Whether you are a beginner looking to learn more about Shell Scripting or an experienced user looking to automate tasks, this repository has something for you.</p>


## 2. Installation

To use the scripts in this repository, you will need to have a Unix-based operating system, such as Linux or macOS. You will also need to have the Bash shell installed on your system. Most Unix-based operating systems come with Bash pre-installed, so you should not need to install it separately. To run a script, simply download it to your computer and make it executable using the `chmod` command. You can then run the script by typing its name into the terminal. For example, to run a script called `install.sh`, you would type:

```bash
./install.sh
```

If you encounter any issues while running a script, please refer to the script's documentation for troubleshooting tips.

## 3. Usage

### 3.1 Reset Password Cognito:

This is script is used to reset the password of a user in Cognito. The script requires the following parameters:

- `user-pool-id`: The ID of the user pool in which the user is registered.
- `username`: The username of the user whose password you want to reset.
- `password`: The new password that you want to set for the user.

To run the script, simply download it to your computer and make it executable using the `chmod` command. You can then run the script by typing its name into the terminal, followed by the required parameters. For example, to reset the password of a user with the username `john.doe` in a user pool with the ID `us-east-1_123456789`, you would type:

### Prerequisites: 
 - You need to have the AWS CLI installed and configured on your machine to run this script.
 - You need set the environment variables `AWS_REGION` and `AWS_PROFILE` before running the script.

<u>Command to set script executable:</u>
```bash
  chmod +x reset-password-cognito.sh
```
<u>Command to run the script:</u>
```bash
./reset-password-cognito.sh
```
