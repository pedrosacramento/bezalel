# Bezalel - An open-source 3D printable low-cost tactile display
![banner](https://github.com/pedrosacramento/bezalel/assets/4267545/e9b6caae-70ff-406a-a193-aded1cbd300d)

## Features
* **Efficiency and low-cost** - Build low-cost matrices of actuated pins
* **Open-source** - 3D print and improve our design according to your needs

## What is Bezalel?
Bezalel is an open-source technology for building tactile interfaces. The strategy relies on a novel approach where few actuators efficiently actuate arrays of vertical pins.

### Core innovation
The underlying principle that makes Bezalel very efficient is illustrated with the animation below.
An array of rotary structures is actuated by a small amount of actuators: one actuator for each row and one for each column.
Each actuator can change its state to 0 or 1, which means that they will either pull or push a sliding structure.
The rotary structures promote the vertical translation of pins. Rotating clockwise or counterclockwise can cause pins to move up and down.
The design of the sliding structures (red and blue in the animation) to simultaneously allow them to simultaneously actuate pins that are rotating to opposite direction if necessary.
The strategy allow some pins to move up while other pins move down and other remain with the same resulting height because they rotate back and forth.
The animation illustrates a sequence of steps in which only the pins A2 and B1 change their height.
You can learn more about the mechanism by watching [this youtube video](https://www.youtube.com/watch?v=fyhcJz_-Ox4).

![animation](https://github.com/pedrosacramento/bezalel/assets/4267545/dae95074-8e82-44ec-aaa2-dcfd4ef71c3e)

## 3D printable shape-changing display
We've designed a 3x3 matrix that implements our novel approach. In this repository we share the 3D printable mechanical design and the algorithm used to refresh the matrix.

![Animated 3x3 model](animated-model.gif)

### Firmware
The [current iteration of the mechanical model](https://www.youtube.com/shorts/GXPK05_UD4o) is controlled with GRBL 1.1h.

## Why low-cost tactile displays?
Tactile interaction is considered the next frontier for human-computer interaction. A generic way to promote such interaction is by using a matrix of vertical pins that can render tactile shapes. Good examples of such matrices can be seen in assistive technologies to the blind population. An interesting discussion about the relevance of such devices can be found in the description of the [European Union Tactile Display Horizon Prize](https://research-and-innovation.ec.europa.eu/funding/funding-opportunities/prizes/horizon-prizes/tactile-display_en). 

Unfortunately, the manufacturing costs behind such matrices are typically very high because - among other reasons - each tactile "pixel" tends to require one actuator, and the number of actuators tends to grow quadratically with the resolution of the device. Also it is hard for traditional manufacturing processes to lower the cost of such devices on small scale. The goal of this project is to contribute to the creation of a generation of tactile displays that rely on 3D printing technologies so that they can be manufactured at home at a low cost. We provide a novel mechanical design and an algorithm with which people can create tactile devices that use a small number of actuators and that can be manufactured with 3D printed parts.

### 2025 roadmap
- [ ] Develop and release an inclusive tactile educational game, inspired by Bezalel principles, designed to engage both blind and sighted children.

## Past milestones

### 2024
- [x] Awarded Runnerup Visual Impairments - [Build2gether 2.0 — Inclusive Innovation Challenge (Hackster.io/ETH Zurich)](https://www.hackster.io/pedrosacramento/bezalel-open-source-3d-printable-tactile-display-5aa8e6)

### 2023
- [x] Featured among [top 100 Create The Future Design Contest 2023 submissions](https://contest.techbriefs.com/2023/top-100)

### 2022
- [x] Published the proof of concept 3D printable mechanical design of a 3x3 matrix

### Long term goals

The long term goal of this project is to develop tactile matrices to convey both braille characters and also tactile graphics for blind individuals. Ideally, the spacing between the dots would be close to 2.5mm, the typical size used on the most sophisticated existing technologies. However, building grids as small as 2.5mm is a very ambitious goal.

Fortunately there are many exciting applications for matrices with grids that are much larger than 2.5mm. Therefore we're focusing on building simpler devices and to leverage the opportunities they bring while we continuously work towards our major goal of building smaller grids.

We are confident that advancements in 3D printing technologies will make it increasingly feasible to achieve our goal over the next decade. In the meantime, we will keep publishing grids that increase the number of dots and decrease the size of the dots, as people adapt our designs for various applications. 

## Motivation
While pregnant of our second child, my wife was misdiagnosed with an infection that could cause our daughter to be born blind.
We then realized that it was a misdiagnosis, but the experience motivated me to revisit an old idea of trying to build tactile interfaces that would, among other things, benefit blind individuals.
There is a long road ahead, but I want to leave a legacy towards this goal by sharing my achievements as I move on.

### Fun fact
The development of the prototype that I am sharing involved a lot of manual work and trial and error. During this process, I have constantly asked God to give me the skills necessary to achieve my goal, such as assembling, maintaining, and using a 3D printer, designing mechanical parts, etc. I honestly believe that he answered my request for help, and that is why I decided to name the project Bezalel. According to the Bible, Bezalel was a man who received craftsmanship skills from God.

## Legal notice
### Licence
GNU General Public Licence version 3 as published by the Free Software Foundation

### Patent
A patent was filed in 2019. We are following the defensive patent approach used by the RepRap project: https://reprap.org/wiki/RepRapGPLLicence

## How to contribute

### Build, share, adapt
If you like this project, feel free to replicate and to improve it.

### Don't forget to cite us
A seminal paper about Bezalel has been published in SIGGRAPH ASIA 2019.
If you are using Bezalel for academic purposes, please remember citing the paper:

```
Pedro de Almeida Sacramento, Ricardo dos Santos Ferreira, and Marcus Vinicius Alvim Andrade. 2019. Bezalel - Towards low-cost pin-based shape displays. In SIGGRAPH Asia 2019 Technical Briefs (SA ’19 Technical Briefs), November 17–20, 2019, Brisbane, QLD, Australia. ACM, New York, NY, USA, Article 4, 4 pages. https://doi.org/10.1145/3355088.3365144
```
