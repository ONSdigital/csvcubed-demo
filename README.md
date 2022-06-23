# csvcubed-demo
Demonstration database for csvcubed


## Building The image

To update the cloud shell image.

_Please note: I've redacted <PROJECT_ID> for security considerations. Check the console or ask in slack._

If you have not before, you'll need to install the [gcloud](https://cloud.google.com/sdk/docs/install) cli.

* `glcoud auth login`
* `gcloud auth configure-docker`
* `docker build -t csvcubed-cloudshell .`
* `docker tag csvcubed-cloudshell gcr.io/<PROJECT_ID>/cvcubed-cloudshell`
* `docker push gcr.io/<PROJECT_ID>/cvcubed-cloudshell`
