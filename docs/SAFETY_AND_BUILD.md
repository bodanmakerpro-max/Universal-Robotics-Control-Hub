# Assembly and safety notes

- **R4 takes a regulated 12 V input only.** The early 7.5-24 V concept is not the latest electrical requirement.
- Check XT60 polarity before connecting supply. **No electronic reverse-polarity protection** is installed according to the R4 guide.
- Test initial power stages on a current-limited supply. Confirm the 5 V and 3.3 V rails before installing the STM32 controller.
- The **5 V shared 1 A** and **3.3 V shared 1 A** limits apply across both expansion headers. Branch fuses do not turn one shared 1 A rail into two separate 1 A supplies.
- The NUCLEO-F401RE is assumed. Confirm the actual board's external E5V limit and jumper wiring; the guide quotes a 500 mA Nucleo E5V allowance. External power should be applied before connecting USB if following the described arrangement.
- All signals use 3.3 V logic; powering a module with 5 V does not mean its signals can use 5 V.
- Keep high-current load paths out of MCU signal wiring. Pay attention to ground returns and motor noise.
- Confirm fuse curves, continuous ratings, DC contact ratings, conductor temperatures and connectors. Relay outputs should initially be tried with small resistive loads, not high-current motors.
- Disable motor drivers before using power relays to interrupt supply. Provide appropriate handling for inductive flyback, inrush and braking/regeneration. Coil diodes do not suppress every downstream motor transient.
- The R4 guide reports ERC and DRC pass but not fabrication, assembly or testing. **Do not ship or connect full loads until these checks have been done.**