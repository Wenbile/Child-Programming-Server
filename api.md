---
title: imrobot v1.0.0
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - ruby: Ruby
  - python: Python
  - php: PHP
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

# imrobot

> v1.0.0

# 案例管理

## GET 获取所有板块的所有案例

GET /getAllBlocks

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 新增案例

POST /addBlock

> Body 请求参数

```json
{
  "type": "object",
  "properties": {
    "type": {
      "type": "integer",
      "description": "分类id"
    },
    "name": {
      "type": "string",
      "description": "案例名称"
    },
    "block": {
      "type": "string",
      "description": "代码块脚本"
    }
  },
  "required": [
    "type",
    "name",
    "block"
  ]
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» type|body|integer|true|分类id|
|» name|body|string|true|案例名称|
|» block|body|string|true|代码块脚本|

> 返回示例

> 成功

```json
{
  "errno": 0,
  "errmsg": "",
  "data": {
    "id": 20
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 删除分类

POST /deleteProjectType

> Body 请求参数

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "description": "分类id"
    }
  },
  "required": [
    "id"
  ]
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» id|body|integer|true|分类id|

> 返回示例

> 成功

```json
{
  "errno": 0,
  "errmsg": "",
  "data": "删除成功"
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 删除案例

POST /deleteBlock

> Body 请求参数

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "description": "案例id"
    }
  },
  "required": [
    "id"
  ]
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» id|body|integer|true|案例id|

> 返回示例

> 成功

```json
{
  "errno": 0,
  "errmsg": "",
  "data": "删除成功"
}
```

```json
{
  "errno": 1000,
  "errmsg": "删除失败"
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 修改分类

POST /editProjectType

> Body 请求参数

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "description": "分类id"
    },
    "type_name": {
      "type": "string",
      "description": "分类名称"
    }
  },
  "required": [
    "id",
    "type_name"
  ]
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» id|body|integer|true|分类id|
|» type_name|body|string|true|分类名称|

> 返回示例

> 成功

```json
{
  "errno": 0,
  "errmsg": "",
  "data": "修改成功"
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 新增板块

POST /addNewProjectType

> Body 请求参数

```json
{
  "type": "object",
  "properties": {
    "name": {
      "type": "string",
      "description": "新增板块名称"
    }
  },
  "required": [
    "name"
  ]
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» name|body|string|true|新增板块名称|

> 返回示例

> 成功

```json
{
  "errno": 0,
  "errmsg": "",
  "data": 17
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET 获取分类列表

GET /getProjectTypes

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 新增分类

POST /addProjectType

> Body 请求参数

```json
{
  "type": "object",
  "properties": {
    "type_name": {
      "type": "string",
      "description": "新增分类名称"
    }
  },
  "required": [
    "type_name"
  ]
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» type_name|body|string|true|新增分类名称|

> 返回示例

> 成功

```json
{
  "errno": 0,
  "errmsg": "",
  "data": {
    "id": 16,
    "type_name": "测试板块23"
  }
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# 数据模型

