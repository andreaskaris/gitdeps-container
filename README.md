## Installation

~~~
make build-container
sudo make install
~~~

## Usage

Go to your git repository and run:
~~~
git-deps <commit ID>
~~~

When running the web server, it is important to set the bind address to 0.0.0.0:
~~~
git-deps --serve -b 0.0.0.0
~~~

Then, go to your web browser and open http://127.0.0.0:5000/.
