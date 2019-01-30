FROM jupyter/minimal-notebook

COPY . .

RUN python --version

RUN pip install --upgrade -r requirements.txt

CMD jupyter nbconvert --to notebook --execute notebook/iris_model.ipynb --output-dir /output/iris_model_output.ipynb

