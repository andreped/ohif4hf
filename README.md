---
title: 'ohif4hf: Project to showcase AI solutions for medical applications in OHIF'
colorFrom: indigo
colorTo: indigo
sdk: docker
emoji: 🔬
pinned: false
license: mit
custom_headers:
  cross-origin-embedder-policy: require-corp
  cross-origin-opener-policy: same-origin
  cross-origin-resource-policy: cross-origin
---

# ohif4hf

This project was made to showcase developed plugins for OHIF through hosting on Hugging Face spaces.

The project is a work-in-progress. I will make a release when I have it working. Stay tuned!

## Getting started

#### Deployment

When the solution is ready, the website should be accessible on [Hugging Face](https://huggingface.co/spaces/andreped/ohif4hf).

#### Development

```
git clone https://github.com/andreped/ohif4hf.git
docker build --no-cache -t ohif4hf .
docker run ohif4hf
```

To go inside docker image and debug, at the bottom of the Dockerfile, add `ENTRYPOINT [ "/bin/sh" ]` before running.

## Credit

I did not develop OHIF, only implemented some plugins and showcased deployment on Hugging Face space.
Credit should be given to the developers of OHIF for making such an amazing open software solution!
