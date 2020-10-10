# Redirection of drnicwilliams.com

I started drnicwilliams.com in 2006 with an amusing article about "Dr Nic's Magic Models" and a more serious article about adding Composite Primary Keys to Ruby on Rails' ActiveModel project. In 2012 I started [Stark & Wayne](https://starkandwayne.com) and all my blog posts have subsequently gone to starkandwayne.com/blog.

Since very little traffic now goes to drnicwilliams.com I'm now redirecting any requests to it to <https://starkandwayne.com/blog/about-drnic/>

This repo contains the [nginx.conf](nginx.conf) to perform this redirection.

It is deployed to Google Cloud Run.

```plain
docker build -t gcr.io/amplified-land-292123/drnicwilliams-com:redirect .
docker push gcr.io/amplified-land-292123/drnicwilliams-com:redirect
gcloud run deploy drnicwilliams-com-redirect --image gcr.io/amplified-land-292123/drnicwilliams-com:redirect
```
