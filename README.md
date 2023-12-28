# Python 2.7 Environment with PyPy, NumPy, and Pandas in Docker Native for Apple M1+ Silicon (ARM64) and Intel/AMD (x86_64) Containers

This repository hosts a Dockerfile that creates a Docker image with PyPy2, NumPy, and Pandas. This setup is tailored for data scientists and developers needing to run legacy Python 2.7 code. The performance is enhanced by the PyPy JIT (Just-In-Time) compiler. The Dockerfile supports both Apple Silicon (ARM architecture) and Intel/AMD Silicon (x86 architecture).

## **Features**

-   **Python 2.7 Compatibility**: Enables running older Python code without modifications if packages are compatible.

-   **Enhanced Performance with PyPy**: Utilizes PyPy's JIT compiler for [faster execution](https://speed.pypy.org) of Python code compared to CPython. My bioinformatic workflow experienced a 29% reduction in processing time using PyPy compared to CPython. Significant for longer running code, such as my aforementioned workflow that runs for days. 

-   **NumPy and Pandas**: Integrates PyPy 2.7 compatible versions of essential libraries for data processing and analysis.

-   **Cross-Platform Support**: Natively compatible with both Apple Silicon and Intel/AMD architectures for wide-ranging hardware support.

## **Prerequisites**

-   Docker installed on your machine. Easiest way to do this is by installing [Docker Desktop](https://www.docker.com/products/docker-desktop/).

-   Basic knowledge of Docker commands. Examples are given below.

## **Usage**