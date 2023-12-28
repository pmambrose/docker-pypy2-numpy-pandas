# Pip Installed Package Versions:
# Package         Version
# --------------- ------------
# cffi            1.15.1
# futures         3.4.0
# greenlet        0.4.13
# numpy           1.16.6
# pandas          0.24.2
# pip             20.3.4
# python-dateutil 2.8.2
# pytz            2023.3.post1
# readline        6.2.4.1
# setuptools      44.0.0
# six             1.16.0
# wheel           0.37.1
 
# Use the official PyPy 2.7 base image                                         
FROM pypy:2.7

# Install build dependencies for numpy                                         
RUN apt-get update && apt-get install -y \                                     
    build-essential \                                                          
    && rm -rf /var/lib/apt/lists/*

RUN /opt/pypy/bin/pypy -m pip install --upgrade pip                                        
                                                                                
# Install numpy and pandas using pip                                                      
RUN pypy -m ensurepip && pypy -m pip install numpy && pypy -m pip install pandas
# && pypy -m pip install futures # Install futures if some python 3 features are necessary

CMD ["/bin/bash"]