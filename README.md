# Sport Data Valley R Shiny project template

Lorem ipsum...

## Development
First, if `make` is not available on your platform (i.e. you are probably running windows), just run the commands in the file `Makefile` manually.

Running the local development server:
```bash
make serve
```

The application is now running on http://localhost:8888.

Changes to the code should be automatically picked up but for some changes you need to restart the dev server (i.e. ctrl+c and `make serve` again).

If you want to add new dependencies, add them to the `app/install_dependencies.R` file and restart the dev server to rebuild the docker image (or run `make build` when the rebuild is not triggered automatically).

## Production
To build a production image, run `make build_prod`.
