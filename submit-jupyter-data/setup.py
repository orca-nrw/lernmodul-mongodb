from setuptools import setup

setup(
    name='submit-jupyter-data',
    version='0.0.1',
    author='Johannes Kimmeyer, Michel Schwarz',
    author_email='test',
    packages=[
        'submission',
    ],
    license='MIT',
    package_data={
        'submission': ['submission/static/main.js'],
    },
    description='A Module to send url parameter to a server',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    install_requires=[
        'notebook',
        'requests',
    ],
    data_files=[(
            'share/jupyter/nbextensions/submit-jupyter-data', [
                'submission/static/main.js'
        ]),
        ('etc/jupyter/nbconfig/notebook.d' , ['submission.json'])
    ],
    zip_safe=False,
    include_package_data=True,
)