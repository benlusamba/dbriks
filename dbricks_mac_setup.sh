## Combination of steps that were helpful, based on MS Documentation and a StackOverflow Source:

# Create Appropriate Version of Python
conda create -n py35 python=3.5 


# Activate python version:
conda activate py35

# Create Virtual environment within directory, with currently activated python virtual environment:
python -m venv env 

# Activate VirtualEnv
source env/bin/activate

# Install dependencies (including Databricks Connect Version X.X.X)

# pip install databricks-connect==5.5.1
pip install -r requirements.txt


## JAVA Dependencies (https://stackoverflow.com/questions/24342886/how-to-install-java-8-on-mac):

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/cask-versions

brew update

brew cask install adoptopenjdk8

# Configure Databricks, using the necessary credentials (https://docs.microsoft.com/en-us/azure/databricks/dev-tools/databricks-connect):
databricks-connect configure

# Test Connection:
databricks-connect test


