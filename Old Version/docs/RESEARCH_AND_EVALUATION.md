# Research question and evaluation

**Research question:** Can a reusable modular robotics controller reduce assembly time and wiring-related faults compared with traditional breadboard/protoboard wiring, while providing reliable control across different robotic projects?

## Why it matters

Loose wires, repeated wiring, fragile prototype boards and one-off PCBs cause slow builds and wasted parts. The project tests whether standard power, signal and module connectors make prototyping faster without making the controller difficult to repair or use.

## What can be measured

1. **Build time:** minutes from prepared components to a working setup.
2. **Wiring faults:** number of wrong/loose connections and fixes per build.
3. **Changeover time:** minutes to reuse the controller on a second project.
4. **Function:** PWM outputs, digital input/output, supply stability and relay switching.
5. **Electrical safety/reliability:** ripple, voltage drop, component temperature, current and behavior under faults.

## Suggested experiment

- Choose two matched demonstration builds: a small two-motor rover and a multi-servo or actuator setup.
- Build each first using normal wired modules/protoboard, then with the carrier and correctly tested daughterboards.
- Repeat under the same conditions at least three times, recording minutes, fault counts and changes needed.
- With a current-limited supply and suitable instruments, measure 5 V/3.3 V rail voltage, ripple and temperatures under representative loads.
- Compare actual results, not only subjective impressions. Make both successful and failed attempts part of the data.

## Feasibility and limits

The project requires PCB fabrication, a regulated bench supply, multimeter, oscilloscope where available, current measurement, components, and time for repeated testing. High-current output testing needs correct cables, fusing, temperature checks and a fire-safe environment.

If the entire multi-module system is too large, start with **one working STM32 carrier + one low-current module**, demonstrate that it saves rewiring time, and add more modules later. Simulations and rule checks do not prove the full hypothesis.