# Data base speed test loop vs 'block'

run all commands from the `docker/` directory

## Setup and run

### Initialisation

`docker compose build`

Go away and make a cup of coffee...

### Start

`docker compose up`

goto - <http://localhost:10000>

token = `easy`

run the notebook

### End

`docker compose down --remove-orphans --volumes`

## Results

The same data is written to two different tables `loop` and `block`. The data is a list of `(int, text)` tuples.

- Loop ~ 35s - NOTE seconds
- Block ~ 45ms - yes MILLISECONDS

Conclusion: It's much faster to write in blocks
