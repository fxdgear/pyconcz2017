# Notes

## Tox
Pros:
    * has been around a while
    * lots of user adoption, which means lots of blog posts and articles which can help

cons:
	* Complex tox.ini file to properly configure your environments
	* No parallel executiion
	* slow execution
    * no guarentee that the environtment that your tests run in is going to be the same as your prod env
    * assumes that every python version you want to test against locally installed. no isolation of global dependencies (pip reqs not included)
    * not transportable (ie running the tests in your CI will not be guarenteed to execute the same way locally)
	* require that all the different python interpreters must be installed or you get this:

```
tox
py27 create: /Users/nick/develop/pyconcz/.tox/py27
py27 installed: appdirs==1.4.3,packaging==16.8,pyparsing==2.2.0,six==1.10.0
py27 runtests: PYTHONHASHSEED='631770941'
py27 runtests: commands[0] | python add_test.py
.F
======================================================================
FAIL: test_2_ints (__main__.TestDivisionSuite)
----------------------------------------------------------------------
Traceback (most recent call last):
  File "add_test.py", line 13, in test_2_ints
    self.assertEqual(divide(2, 5), 2.5)
AssertionError: 2 != 2.5

----------------------------------------------------------------------
Ran 2 tests in 0.000s

FAILED (failures=1)
ERROR: InvocationError: '/Users/nick/develop/pyconcz/.tox/py27/bin/python add_test.py'
py33 create: /Users/nick/develop/pyconcz/.tox/py33
ERROR: InterpreterNotFound: python3.3
py34 create: /Users/nick/develop/pyconcz/.tox/py34
ERROR: InterpreterNotFound: python3.4
py35 create: /Users/nick/develop/pyconcz/.tox/py35
ERROR: InterpreterNotFound: python3.5
py36 create: /Users/nick/develop/pyconcz/.tox/py36
py36 installed: appdirs==1.4.3,packaging==16.8,pyparsing==2.2.0,six==1.10.0
py36 runtests: PYTHONHASHSEED='631770941'
py36 runtests: commands[0] | python add_test.py
..
----------------------------------------------------------------------
Ran 2 tests in 0.000s

OK
_________________________________________________________________________________________________________________ summary _________________________________________________________________________________________________________________
ERROR:   py27: commands failed
ERROR:   py33: InterpreterNotFound: python3.3
ERROR:   py34: InterpreterNotFound: python3.4
ERROR:   py35: InterpreterNotFound: python3.5
  py36: commands succeeded
```

## Docker
Pros:
    * Tests will run in a production like environment
    * Tests will run in Parallel
    * tests infa is portable
    * only requirement is that Docker is installed.

cons:
	* requires more upftont work than Tox
    * getting test output data needs some some processing
