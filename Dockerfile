FROM jupyter/base-notebook

COPY . .

RUN python --version

RUN pip install --upgrade -r requirements.txt

CMD jupyter --to notebook --execute notebook/iris_model.ipynb --output-dir output/iris_model_output.ipynb

