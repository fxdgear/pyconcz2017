import unittest

from add import add, divide

class TestAddSuite(unittest.TestCase):

    def test_2_ints(self):
        self.assertEqual(add(1, 2), 3)

class TestDivisionSuite(unittest.TestCase):

    def test_2_ints(self):
    	self.assertEqual(divide(2, 5), 2.5)


if __name__ == '__main__':
    unittest.main()