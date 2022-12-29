# Bezalel - An open-source 3D printable low-cost tactile display

Tactile interaction is considered the next frontier for human-computer interaction. A generic way to promote such interaction is by using a matrix of vertical pins that can render tactile shapes. Good examples of such matrices can be seen in the products developed by companies such as [metec Ag](https://www.metec-ag.de/produkte-graphik-display.php?p=t2d) and [Orbit Research](http://www.orbitresearch.com/product/graphiti/). An interesting discussion about the relevance of such devices can be found in the description of the [European Union Tactile Display Horizon Prize](https://research-and-innovation.ec.europa.eu/funding/funding-opportunities/prizes/horizon-prizes/tactile-display_en). 

Unfortunatelly, the manufacturing costs behind such matrices is typically very high, basically because each tactile "pixel" needs an actuator, and the number of actuators tends to grow quadratically with the resolution of the device. The goal of this project is to contribute to the creation of a generation of tactile displays that rely on 3d printing technologies so that they can be manufactured at home with a low-cost. We provide a novel mechanical design and an algorithm with which people can create tactile devices that use a small amount of actuators and that can be manufactured with 3D printed parts.

![Animated 3x3 model](animated-3x3-model.gif)

## 3x3 matrix
I currently have a functional 3x3 device that implements the proposed technology, as seen in this [youtube video](https://www.youtube.com/watch?v=CwHi78mkTRg). I'm rewriting the Arduino firmware before publishing that in this repository, but a didact version of the algorithm used to control the actuators is available in the directory where lives the 3x3 matrix openscad files. The openscad model has been created with the goal of clearly conveying all the concepts behind the mechanical model and the algorithm, but please feel free to reach me out if you need any further clarification.

## Roadmap
- [x] Share the 3D printable mechanical design of a 3x3 matrix
- [ ] Share the Arduino firmware
- [ ] Share the 3D printable mechanical design of an 8x8 matrix
- [ ] Share an application that can be used to teach computer programaming to kids using the tactile interface

## Motivation
I started working with computers when I was very young, and kids typically have interesting dreams.
One of my childhood dreams was to create a technology that would allow people to interact with computers without using their eyes.
This is something that I had never focused on. But during her second pregnancy my wife was misdiagnosed with an infection that could make our daughter to be born blind.
It took one week for us to figure out that it was a misdiagnosis, but this experience led me to decide to get back to this idea again.
This repository contains the results of my efforts towards the goal of making a low-cost tactile interface that can be used regardless we are eyesighted or not.
There's a long road ahead, but I hope to leave a legacy towards this goal by sharing what I've got so far.

### Fun fact
The development of the prototype I'm sharing involved an insane amount of manual work, trial and error.
During this process I've been constantly asking God to give me the skills necessary to accomplish my goal (like assembling, maitaining and using a 3D printer, designing mechanical parts, etc).
I honestly believe that he answered my request for assistance, and this is the reason why I decided to give the project the name Bezalel.
Bezalel is, according to the Bible, the name of a man who received craftsman skills from God.

## Legal notice
### Licence
- The mechanical design (3d-printable-device-2022) is free; you can redistribute it and/or modify it under the terms of the GNU General Public Licence version 3 as published by the Free Software Foundation.
- The simulator (siggraph-asia-2019) is also free, and you can distribute it and/or modify it under the terms of the GNU Affero General Public License v3.0 as published by the Free Software Foundation.

### Patent
A patent was filled in 2019 following the defensive publication approach. Both the patent and the detailed publication of Bezalel solution have the basic goal of sharing the project while also avoiding that the progress of this invention is hindered by someone with legal rights over the invention.
We are following the defensive patent approach used by the RepRap project: https://reprap.org/wiki/RepRapGPLLicence

## How to contribute

### Build, share, adapt
If you like this project, feel free to replicate and to improve it.

### Don't forget to cite us
When using Bezalel for academic purposes, please remember citing our seminal SIGGRAPH ASIA 2019 paper:

```Pedro de Almeida Sacramento, Ricardo dos Santos Ferreira, and Marcus Vinicius Alvim Andrade. 2019. Bezalel - Towards low-cost pin-based shape displays. In SIGGRAPH Asia 2019 Technical Briefs (SA ’19 Technical Briefs), November 17–20, 2019, Brisbane, QLD, Australia. ACM, New York, NY, USA, Article 4, 4 pages. https://doi.org/10.1145/3355088.3365144```
