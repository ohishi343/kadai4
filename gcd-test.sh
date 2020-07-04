#!/bin/bash

./gcd.sh 2 4 > /tmp/result-$$
echo 2 > /tmp/ans-$$
diff /tmp/ans-$$ /tmp/result-$$ || exit 1

./gcd.sh 3 > /tmp/result-$$
echo "input 2 arguments" > /tmp/ans-$$
diff /tmp/ans-$$ /tmp/result-$$ || exit 1

./gcd.sh a b > /tmp/result-$$
echo "input natural number" > /tmp/ans-$$
diff /tmp/ans-$$ /tmp/result-$$ || exit 1

echo “complete”
