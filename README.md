# Bookinfo Productpage Application

Created from [the source of the Istio sample Bookinfo service productpage](https://github.com/istio/istio/tree/master/samples/bookinfo/src/productpage) with the following changes:

- Added kustomize folder for deployment of service as follows:

    kustomize build ./kustomize | kubectl apply --filename -

- Added `iter8/experiment.yaml` as a sample iter8 `Experiment` resource.

This was further modified to make the _get_ function in `getProductReviews()` to 30 seconds. This modified code was used to produce `iter8/examples-bookinfo-productpage:iter8-v1` avaiable from dockerhub.
