import yaml 
import docker


MATRIX_PATH = "/code/matrix.yml"
DOCKER_FILE = """
FROM {{image_name}}
RUN apt-get update && apt-get install {{python}}
RUN pip install pytest
WORKDIR /code
COPY . /code
CMD ["pytest test_sample.py"]
"""

def load_test_matrix():
    print("loading matrix")
    with open(MATRIX_PATH) as stream:
        print(stream)
        try:
            return yaml.load(stream)
        except yaml.YAMLError as exc:
            print(exc)


def ():



def run():
    test_matrix = load_test_matrix()
    print(test_matrix)

if __name__ == "__main__":
    run()
