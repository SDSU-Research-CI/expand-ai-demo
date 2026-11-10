# ExpandAI Workshop

November 9, 2027

Introducing AI computing resources available through the NSF ExpandAI project, the College of Engineering, and other campus and external resources. Hands-on activities cover AI, HPC, machine learning, and deep learning.

## JupyterHub

Follow these steps to sign in and start your notebook for the hands-on portion:
1. [jupyterhub.sdsu.edu](https://jupyterhub.sdsu.edu)
1. Click the radio button for "Vibe Coding Notebook"
1. Click "Start"

## Environment Configuration

Before running the examples, create a local `.env` file from the template:

```bash
cp .env-template .env
```

Open `.env` and replace `your_api_key_here` with your NRP API key. Keep the key
private; `.env` is ignored by Git and should not be shared or committed.

Then open a terminal and run the following to configure your environment for the examples:

```bash
./configure-env.sh
```

Once that has completed, you may then run the following to activate the Python environment:

```bash
source .venv/bin/activate
```
