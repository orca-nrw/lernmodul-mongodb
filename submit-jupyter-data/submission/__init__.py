# Jupyter Extension points
from submission.parameterReader import ParameterReader
from submission.submission import *
from submission.student import Student


def _jupyter_nbextension_paths():
    return [dict(
        section="notebook",
        src="./static",
        dest="submit-jupyter-data",
        require="submit-jupyter-data/main")]
