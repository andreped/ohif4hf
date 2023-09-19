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

<div align="center">
<h1 align="center">ohif4hf</h1>
<h3 align="center">Project to showcase AI solutions for medical applications in OHIF</h3>

[![license](https://img.shields.io/github/license/DAVFoundation/captain-n3m0.svg?style=flat-square)](https://github.com/DAVFoundation/captain-n3m0/blob/master/LICENSE)
[![CI/CD](https://github.com/andreped/ohif4hf/actions/workflows/deploy.yml/badge.svg)](https://github.com/andreped/ohif4hf/actions/workflows/deploy.yml)
<a target="_blank" href="https://huggingface.co/spaces/andreped/neukit"><img src="https://img.shields.io/badge/🤗%20Hugging%20Face-Spaces-yellow.svg"></a><a href="https://colab.research.google.com/gist/andreped/f83e53b120ddc2f6930f1dd66a16f248/neukit-demo-example.ipynb" target="_parent"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>

**ohif4hf** was developed by SINTEF Medical Image Analysis to accelerate open-source medical AI research.

</div>

This project was made to showcase developed plugins for OHIF through hosting on Hugging Face spaces.

The project is a work-in-progress. I will make a release when I have it working. Stay tuned!

## Getting started

#### Deployment <a target="_blank" href="https://huggingface.co/spaces/andreped/neukit"><img src="https://img.shields.io/badge/🤗%20Hugging%20Face-Spaces-yellow.svg"></a>

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
