# descpipe-cwl
Proof of concept CWL-based pipeline with Docker abstraction. Find out more about the Common Workflow Language with this [1 min intro](https://www.youtube.com/watch?v=86eY8xs-Vo8) and official website: http://www.commonwl.org/

Visualize workflow here: https://view.commonwl.org/workflows/github.com/EiffL/descpipe-cwl/blob/master/workflows/test_workflow.cwl

Uses tools from companion repo: https://github.com/EiffL/treecorr_tools

## How to run

Assuming that **Docker** is installed on your machine, all you need is to install `cwltool` :
```
$ pip install --user cwltool
```

Running the workflow is as simple as:
```
$ cwltool workflows/test_workflow.cwl workflows/test.yml
```
