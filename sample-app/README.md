Demo React Application

## About

The project demonstrates how to dockerize a react application with external configs.

The following could be said about building react application naively
 * The configuration files for different environments are in the code
 * While building the application, the environment name is specified.
 * In the build procss, based on the environment name specified, the environment file is selected
 * The selected configuration file and the code is minified together. This output is specific for an environment

The problem with the naive approach
 * The build is per environment. So for every environment the code has to be built
 * When a environement configuration is changed, the code has to be rebuilt
 * This does not fit 'build once deploy many' 

What's done in this project
 * The react application is dockeized with local configuration
 * The configuration file is not minified in the build process
 * There is a mechanism to modify the config before the deployment process
 
## Scripts Available

### Local
 * Prerequisite : npm is installed
 * npm start - server the application in localhost:3000
 * npm run build - builds the application
 * ~/sample-app/public/environmentConfig.js config file for local development
 
### Docker
 * Prerequisite : docker is installed
 * `docker-local-image-build.sh` script to build docker image locally
 * On commit and push, github actions is triggered and docker image is built and pushed to docker packages
 * `docker-local-image-build.sh` script to build the local image
 * `docker-local-image-run.sh` script to run the local container
 * `docker-local-image-stop.sh` script to stop the local container
 * `docker-github-image-run.sh` script to pull the docker image from github packages and run locally
 * `~/sample-app/docker-environmentConfig.js` configuration file for dockerized application
