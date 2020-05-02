# Readiness probe demo

## Prepare

In order to follow along with these tests you will need a local instance of minikube running, with the `ingress` addon enabled.

As we will use an ingress you should also add `<your-minikube-ip> cluster.local` to `/etc/hosts`

### Initial deployment

Run `./reset.sh 1` to deploy the initial set-up of step 1.

### Prepare screens

We need two screens for this exercise:

- The screen showing the status of the pods, running `./watch.sh`
- the screen showing the deployment and the results of queries: `./deploy.sh 1` runs the deployment for step1, `./reset.sh 2` followed by `./deploy.sh 2` will show the results of the queries during the deployment of `step2`

### Helpers

`./record.sh` starts an OBS recording.

## Step 1

1. Run `./reset.sh 1` to set the initial state for step1
1. Run `./watch.sh` in a terminal, to see the state of the pods
1. Run `./deploy.sh 1` and observe the transaction being dropped when the new pods becomes "Ready"

## Step 2

1. Run `./reset.sh 2` to set the initial state for step1
1. Run `./watch.sh` in a terminal, to see the state of the pods
1. Run `./deploy.sh 2` and observe the transaction being successfull, since the new pod does not become ready straight away, as Kubernetes takes the results of the liveness probe into account.
