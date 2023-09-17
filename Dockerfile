#Use miniconda base image
FROM continuumio/miniconda3

# Create a new environment
RUN conda create -n arcGIS_env python=3.8

# Activate environment (arcGIS API requires older python thus requiring a new env)
RUN /bin/bash -c "source activate arcGIS_env \
&& conda install -y -c pandas numpy=1.20 matplotlib seaborn \
&& conda install -y -c anaconda jupyter notebook \
&& conda install -c esri arcgis"

# This isn't best practice, but gets the job done
ENV PATH /opt/conda/envs/arcGIS_env/bin:$PATH

# Optional: if we want to auth. notebook
# ENV JUPYTER_TOKEN=my_easy_token

# Expose the Jupyter port
EXPOSE 8888

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]