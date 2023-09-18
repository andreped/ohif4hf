---
title: 'dsa4hf: Project to showcase AI solutions for medical applications in OHIF'
colorFrom: indigo
colorTo: indigo
sdk: docker
app_port: 8080
emoji: 🔬
pinned: false
license: mit
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
docker build -t ohif4hf .
docker run -e PORT=8080 -p 3000:8080/tcp --name ohif4hf-container ohif4hf
```

To go inside docker image and debug, at the bottom of the Dockerfile, add `ENTRYPOINT [ "/bin/sh" ]` before running.

## Credit

I did not develop OHIF, only implemented some plugins and showcased deployment on Hugging Face space.
Credit should be given to the developers of OHIF for making such an amazing open software solution!
