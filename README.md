# Bookinfo Productpage Application

Created from [the source of the Istio sample Bookinfo service productpage](https://github.com/istio/istio/tree/master/samples/bookinfo/src/productpage) with the following changes:

- Added kustomize folder for deployment of service as follows:

    kustomize build ./kustomize | kubectl apply --filename -

- Added `iter8/experiment.yaml` as a sample iter8 `Experiment` resource.

This was further modified to make the _get_ function in `getProductReviews()` to 30 seconds. This modified code was used to produce `iter8/examples-bookinfo-productpage:iter8-v1` avaiable from dockerhub.

This was further modified to add the following after <https://github.com/iter8-tools/bookinfoapp-productpage/blob/master/templates/productpage.html#L100:>.
This modified code was used to create `iter8/examples-bookinfo-productpage:iter8-v2` also avaiable from dockerhub.

    {% if serviceVersion == "v2": %}
      <p>It has been adapted for opera, stage, screen and musical theatre numerous times worldwide.</p>
    {% endif %}
