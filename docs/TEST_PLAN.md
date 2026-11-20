# Test and verification plan

**Current status:** These are planned tests, not passed hardware results. Record actual measurements in `tests/` after assembly.

## Before applying power

- Confirm exact Nucleo board model, power-jumper settings and ST documentation.
- Inspect the PCB and BOM against the latest editable KiCad source once available.
- Check for shorts between 12 V, 5 V, 3.3 V and GND; verify polarity of every XT60.
- Check pinouts for relays, transistors, rectifiers, regulators and capacitor polarity.
- Review PCB creepage/clearance, mounting, enclosure, copper widths and ground-return paths.

## Power-up tests

1. Begin without the Nucleo or daughterboards, using a **regulated 12 V current-limited supply**.
2. Check supply current and both buck outputs unloaded.
3. Increase small dummy loads on 5 V/3.3 V gradually; monitor voltage, ripple and heat.
4. Set up Nucleo E5V feed using the manual for the actual revision. The R4 guide specifies JP5 2-3 and JP1 removed; check against UM1724 before use.
5. Keep relay GPIO outputs LOW on startup. Activate each relay under a modest resistive load.
6. Raise output load carefully within tested limits, measuring voltage drop and temperatures; include both outputs operating together only when individual channels are proven.
7. Test real motor loads only with suppression/inrush management and a validated motor-driver module.

## Functional and application tests

- Digital input/output and correct pin mapping for J4 and J5.
- Servo-compatible PWM on suitable channels; verify complementary and shared timer restrictions.
- Repeatable code boot and safe relay-off reset state.
- Sensor communication via purpose-built module, if fitted.
- Swap the same controller between two small robot configurations; log installation time and faults.

## Test log template

Use `tests/test_log_template.csv` to document date, test, instrument, voltage/current, temperature, outcome and notes. If a value was not measured, leave it blank rather than guessing.

## Cautions

Fuses are protection devices, not current limiters. A TVS does not absorb unlimited regenerative energy. Relay contacts may weld or wear when switching motor current. Never treat 10 A targets as validated safe ratings without DC load and temperature tests.