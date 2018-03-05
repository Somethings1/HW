/*Feature*/
isPrime = n => {
    if (n < 2) return false;
    for (let i = 2; i <= Math.sqrt(n); i++)
        if (n % i == 0) return false;
    return true;
}
getSum = n => n.toString().split('').map(n => Number(n)).reduce((a, b) => a + b);
reverseNumber = n => Number(n.toString().split('').reverse().join(''));
isMirrorNumber = n => n == reverseNumber(n);
isStairNumber = n => {
    n = n.toString().split('').map(c => Number(c));
    for (let i = 1; i < n.length; i++)
        if (n[i] < n[i - 1]) return false;
    return true;
}

/*Real code*/
//funcprime. This function will return sum of all prime smaller than x
f = x => {
    let sum = 0;
    for (let i = 2; i <= x; i++)
        if (isPrime(i)) sum += i;
    return sum;
}

//DPRIME. This function will return a 2D array, that the arr[0][0] is number of double prime number in n. And arr[1] is an array contain all double prime number in n
doublePrime = n => {
    let count = 0;
    let res = [];
    n.forEach(num => {
        if (isPrime(num) && isPrime(getSum(num))) {
            ++count;
            res.push(num);
        }
    });
    return [count, res];
}

//DOCNGUOC. This function has a parameter of an array that has two elements, and this will return the bigger in reversed form
compare = n => reverseNumber(n[0]) >= reverseNumber(n[1]) ? reverseNumber(n[0]) : reverseNumber(n[1]);

//NENSO. No comment
compress = n => n < 10 ? n : compress(getSum(n));

//SPRIME. This function will return the bigest integer smaller than n, and it is an mirror number. If there is not, return -1
findPrime = n => {
    for (let i = n; i >= 2; i--)
        if (isPrime(i) && isMirrorNumber(i))
            return i;
    return -1;
}

//PHANTICH. Get a number, and return an 2d array, that every elements in the array is an array of base and power 
phanTich = n => {
    let res = [];
    let i = 2, power = 0;
    while (n != 1) {
        if (n % i == 0) {
            ++power;
            n = parseInt(n / i);
            if (n == 1) res.push([i, power]);
        }
        else {
            if (power > 0) {
                res.push([i, power]);
            }
            power = 0;
            ++i;
        }
    }
    return res;
}


//STEP. This function's parameter is an array, and will return the number of stair number in the array
getNumberOfStepNumber = n => n.filter(c => isStairNumber(c)).length;

//PALWORD. This function has a parameter as a string, and return an array contains all the mirror word in the string (use getMirrorWord.length to count how many word)
getMirrorWord = s => s.split(' ').filter(c => c == c.split('').reverse().join(''));

//SDIV. Not finished. I do not know how to fix :v

//SOLVE. No comment
sovle = n => {
    for (let i = 0; i <= Math.sqrt(n); i++)
        if (i * i + getSum(i) * i == n) return i;
    return -1;
}

//PRIME3. Result as a 2D array, that every element is an array, contains 3 number x, y, z possible
prime = n => {
    let flag = false;
    let res = [];
    for (let i = 1; i <= n; i++)
        for (let j = i + 1; j <= n; j++)
            for (let k = j + 1; k <= n; k++)
                if (i * i + j * j == k && isPrime(i) && isPrime(j) && isPrime(k)) {
                    flag = true;
                    res.push([i, j, k]);
                }
    if (!flag) return -1;
    return res;
}