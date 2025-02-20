[Nextflow](https://www.nextflow.io/) is a tool for writing computational pipelines in cluster environments.


## What is a pipeline?

A research pipeline is any set of processes required for an analysis. 
So that collection of bash scripts you stapled together in your closet counts `:)`. Nextflow takes this a step further by handling package management
and spliting each "task" in your pipeline into a unit called a ["process"](https://www.nextflow.io/docs/latest/reference/syntax.html#process).

Each process is isolated from each other process and can have unique environments. 
So as long as processes are split, they can have separate R versions, python versions, etc. Processes interact with each other by defining inputs and outputs.

A ["workflow"](https://www.nextflow.io/docs/latest/reference/syntax.html#workflow) organizes these processes and directs them into each other. 
An easy way to think about it is that processes are functions and the worflow is the program. 

## Using on the cluster
The cluster has nextflow already installed. However, if you run `nextflow`, you'll notice that it appears to be missing. 
That is because nextflow is available through an environment module.

```bash
module load nextflow
nextflow # this should work now
```

## LSF integration
[LSF](https://en.wikipedia.org/wiki/IBM_Spectrum_LSF) is the platform that the cluster uses to facilitate "jobs" or tasks that run on "compute nodes" with 
a given amount of computing power. Nextflow has integration with this platform, but the integration needs to be manually enabled through the use of a 
nextflow configuration file. Whenever you plan to run a pipeline, create a `nextflow.config` file in the directory where the pipeline will be run. Inside the 
config file, insert the following:

```nextflow
process.executor = "lsf"
```

# FAQ
## What is nf-core?

[nf-core](https://nf-co.re/) is a collection of nextflow pipelines used for scientific analysis (typically bioinformatics).




