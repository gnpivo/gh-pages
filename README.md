# Hello, World!

You can use the `gnpivo/gh-pages` Docker image
to develop and test GitHub Pages websites on your local machine.

## Usage

In a new terminal window,
change into the directory of your website and run the following command:

```shell
docker run -p 80:80 -v "$PWD:/srv" --rm gnpivo/gh-pages
```

Preview the website by navigating to `localhost` in your web browser.
The website will regenerate whenever you change a file.

To stop the website,
press <kbd>Ctrl+C</kbd> in the terminal window.
To remove the Docker image,
run the following command:

```shell
docker rmi gnpivo/gh-pages
```
