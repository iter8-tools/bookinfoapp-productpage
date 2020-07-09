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


### Reward Metric branch:
- Added a reward metric as seen after the line: <https://github.com/iter8-tools/bookinfoapp-productpage/blob/reward_metric/productpage.py#L203>
- There are two images available on Docker for `bookinto-iter8`:
  - `iter8/productpage:reward-v1`: Generates a reward between 1-5 every time the productpage service is pinged
  - `iter8/productpage:reward-v2`: Generates a reward between 5-10 every time the productpage service is pinged
- Any deployment created from these images should contain two environment variables: `DEPLOYMENT` and `namespace`
- The name of the Prometheus metric where this value is reported is `number_of_books_purchased_total`
- To change the reward metric to any other value change the random number being generated
- To change the kind of metric to any other metric, follow the tutorial [here](https://github.com/iter8-tools/metrics-collection)
