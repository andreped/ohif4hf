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
<a target="_blank" href="https://huggingface.co/spaces/andreped/neukit"><img src="https://img.shields.io/badge/🤗%20Hugging%20Face-Spaces-yellow.svg"></a>

**ohif4hf** was developed by SINTEF Medical Image Analysis to accelerate medical AI research.

</div>

## :gift: [Brief intro](https://github.com/andreped/ohif4hf#brief-intro)

The aim of this project, is to enable people without programming expertise to easily test AI solutions on their own data. The AI models should be accessible through a user-friendly user interface (UI), accessible through a browser, not requiring any installation stage.

For the UI, we have used OHIF, which already has all the core features required for reading CTs/MRIs/WSIs and visualizing them, and we will be developing plugins for OHIF, which adds AI model support.

One of the first models we will be adding, are the preoperative tumour segmentation models, which are available in the open software [Raidionics](https://github.com/raidionics/Raidionics).

## 🤗 [Demo](https://github.com/andreped/ohif4hf#demo)  <a target="_blank" href="https://huggingface.co/spaces/andreped/neukit"><img src="https://img.shields.io/badge/🤗%20Hugging%20Face-Spaces-yellow.svg"></a>

To access the live demo, click on the Hugging Face badge above. Below is a snapshot of the current state of the demo app.

![screenshot](https://github.com/andreped/ohif4hf/assets/29090665/38c00767-a78d-4764-8827-adfc48cb6cf5)


_**NOTE:** The project is a work-in-progress. The final plugin(s) are yet to be added. Stay tuned!_

The web app is also deployed on [my personal website](https://andreped.github.io/demos/2023/ohif-plugin/), using HF for hosting the solution.

## 🐳 [Development](https://github.com/andreped/ohif4hf#development)

```
git clone https://github.com/andreped/ohif4hf.git
docker build --no-cache -t ohif4hf .
docker run ohif4hf
```

To go inside docker image and debug, at the bottom of the Dockerfile, add `ENTRYPOINT [ "/bin/sh" ]` before running.

## 👏 [Acknowledgements](https://github.com/andreped/ohif4hf#acknowledgements)

I did not develop OHIF, only implemented some plugins and showcased deployment on Hugging Face space.

Credit should be given to the developers of OHIF for making such an amazing open software solution!

I also want to acknowledge [@radames](https://github.com/radames) at Hugging Face for assistance with HF space integration.

## ✨ [License](https://github.com/andreped/ohif4hf#license)

The code in this repository is released under [MIT-License](https://github.com/andreped/ohif4hf/blob/main/LICENSE).
