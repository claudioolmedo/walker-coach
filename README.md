# Walker Coach — Multiplayer Walker Soccer

Same robot. Three brains. One ball.

A new multiplayer training mode: three identical One Dollar Computer Walker robots play soccer in a circular arena divided into three sectors, with three goals. Each Walker is controlled by a different AI model — Gemini, Muse, and Jev 1.14 (a decision model) — painted in its model's color with its model's logo on top. Every agent perceives the ball and the other robots, and decides where to go next. Physics is real MuJoCo (WASM), identical for all three robots — only the brain differs. A separate Training mode lets one Walker at a time practice taking the ball to the other side, attempt after attempt.

Built during the Multiplayer AI Hackathon (Thanksgiving Special), AWS Builder Loft, San Francisco, Nov 23, 2026. The Walker robot, its training system and data formats come from the One Dollar Computer Physical Lab; everything in this repository was written during the event. Sponsor tool used: Bruin (mandatory event tool) for match/training telemetry, AdaL for the demo video.

## Run it
Open index.html in a browser (internet needed: the MuJoCo engine loads from a CDN), or use the GitHub Pages link for this repo.
