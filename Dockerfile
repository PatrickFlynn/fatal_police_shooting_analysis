FROM continuumio/miniconda3

# Install Jupyter Notebook
RUN conda install -y -c anaconda notebook

# Install Pandas, Numpy, Matplotlib, and Seaborn
RUN conda install -y -c pandas numpy matplotlib seaborn

# Optional: Disable Jupyter Notebook token
ENV JUPYTER_TOKEN=my_easy_token

# Expose the Jupyter port
EXPOSE 8888

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]