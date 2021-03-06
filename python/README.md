# Python notes

### clear pycache 

```
find . | grep -E "(__pycache__|\.pyc|\.pyo$)"|xargs rm -rf
```

#### configure python shell double-tab autocomplete

```
cat <<EOF > ~/.pythonrc
import rlcompleter, readline
readline.parse_and_bind('tab:complete')
EOF
echo "export PYTHONSTARTUP=~/.pythonrc" >> ~/.bash_profile
```

### Meta classes

- Class of a class
- Subtype of `type`
- Class factory: `MyClass = type('MyClass', (), {}) # returns a class object`

```python
def f(obj):
    print('attr = {}'.format(obj.attr))

Foo = type(
        'Foo',
        (),
        {
            'attr': 32,
            'print_attr': f
        }
)
```

### Constructor and destructor

Contructor: `__init__`
Destructor: `__del__` called with `del object`

### Getter and setter - @property decorator

```python
class Xmpl:
    def __init__(self, value):
        self.__value = value

    @property
    def value(self):
        print("Getting value...")
        return self.__value

    @value.setter
    def value(self, value):
        print("Setting value...")
        self.__value = value

```
