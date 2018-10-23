# Redirection of drnicwilliams.com

I started drnicwilliams.com in 2006 with an amusing article about "Dr Nic's Magic Models" and a more serious article about adding Composite Primary Keys to Ruby on Rails' ActiveModel project. In 2012 I started [Stark & Wayne](https://starkandwayne.com) and all my blog posts have subsequently gone to starkandwayne.com/blog.

Since very little traffic now goes to drnicwilliams.com I'm now redirecting any requests to it to https://starkandwayne.com/blog/about-drnic/

This repo contains the [nginx.conf](nginx.conf) to perform this redirection. It is hosted on [Pivotal Web Services](https://run.pivotal.io) inside a tiny 32M container that costs less than $1/mth to host.

It is deployed using the [Nginx buildpack](https://docs.cloudfoundry.org/buildpacks/nginx/index.html).

For example:

```console
cf push redirect -b https://github.com/cloudfoundry/nginx-buildpack.git -m 32M
```

Or with the [`manifest.yml`](manifest.yml):

```console
cf push
```
