# Pytest

### Pytest fixtures 

Example: 

```
import pytest

@pytest.fixture()
def some_data():
    return 1234

def test_some_data(some_data):
    assert some_data == 1234
```

## Errors/problems 

#### warning : could not load initial conftests (/usr/share/storyteller/tests/conftest.py)

Deleted all python compiled files: 

`find . -name \*.pyc -delete`

