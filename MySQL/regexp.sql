SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000' # 正则表达式
ORDER BY prod_name

SELECT prod_name
FROM products
WHERE prod_name 
REGEXP BINARY 'JetPack .000' # 返回两个列表

SELECT prod_name
FROM products
WHERE prod_name 
REGEXP BINARY 'jetPack .000' # 无结果

# OR匹配,可连接多个 | 操作符
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000|2000'
ORDER BY prod_name

SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000|2000|3000|4000'
ORDER BY prod_name

SELECT prod_name FROM products
WHERE prod_name REGEXP '[123] Ton' # 也可以[123] ton 不区分大小写

SELECT prod_name
FROM products
WHERE prod_name REGEXP '\\([0-9] sticks?\\)' # ？匹配

SELECT prod_name 
FROM products
WHERE prod_name REGEXP '[[:digit:]]{4}' # 字符集的使用

SELECT prod_name
FROM products
WHERE prod_name REGEXP '^[0-9\\.]' # 使用定位符

SELECT prod_name
FROM products
WHERE prod_name REGEXP '[0-9\\.]' # 不使用定位符