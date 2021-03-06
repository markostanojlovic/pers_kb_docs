>>> import contextlib
>>> @contextlib.contextmanager
... def example(ctx):
...     print('__enter__')
...     yield ctx
...     print('__exit__')
...
>>> with example('test') as t:
...     print(t)
...
__enter__
test
__exit__
>>>

# try and funally to ensure that exit is executed
import contextlib

@contextlib.contextmanager
def example(ctx):
    print('__enter__')
    try:
        yield ctx
    finally:
        print('__exit__')
