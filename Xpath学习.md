# 认识Xpath

## 1. 什么是Xpath

1. 解析xml的一种语言(HTML其实是XML的子级)，广泛用户解析HTML数据。
2. 几乎所有的语言都能使用Xpath，比如java和c语言。
3. 除了Xpath还有其它的手段用户xml的解析，比如：Beautifulsoup、lxml、Dom、SAX、JSDOM、DOM4J、MINIXML等。

## 2. Xpath语法

Xpath语法其实只有3大类：

- 层级 ：` / ` 直接子级、`//` 跳级
- 属性 ： `@` 属性访问
- 函数 ：`contains()`、`text()` 等

## 3. 使用Xpath

1. 在浏览器中使用Xpath

```html
html_doc = """
<!doctype html>
<html>
<head>
    <title>Example Domain</title>

    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
    body {
        background-color: #f0f0f2;
        margin: 0;
        padding: 0;
        font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
        
    }
    div {
        width: 600px;
        margin: 5em auto;
        padding: 2em;
        background-color: #fdfdff;
        border-radius: 0.5em;
        box-shadow: 2px 3px 7px 2px rgba(0,0,0,0.02);
    }
    a:link, a:visited {
        color: #38488f;
        text-decoration: none;
    }
    @media (max-width: 700px) {
        div {
            margin: 0 auto;
            width: auto;
        }
    }
    </style>    
</head>

<body>
<div>
    <h1>Example Domain</h1>
    <p>This domain is for use in illustrative examples in documents. You may use this
    domain in literature without prior coordination or asking for permission.</p>
    <p><a href="https://www.iana.org/domains/example">More information...</a></p>
</div>
</body>
</html>
"""
```

```python
from lxml import etree

tree=etree.HTML(html_doc)
# 获取h1的文本:
res = tree.xpath('//h1/text()')
# 获取p[2]下href的链接
res=tree.xpath('//div//p[2]/a/@href')
print(res)
```

