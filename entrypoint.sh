#!/bin/bash
# Since this is a public facing, we don't need a token for our notebook
jupyter notebook --ip='localhost' --port=8888 --no-browser --allow-root --NotebookApp.token=''
