# 交易所 Web 端 api 接口

# 接口列表

## 认证

header(x-auth-token:xxxx)

## 首页

### 检查用户登录

- 接口地址: `/uc/check/login`
- 请求方法: POST

- 请求参数

| 参数 | 类型 | 是否必填 | 描述 | 备注 |
| :--: | :--: | :------: | :--: | :--: |
|      |      |          |      |      |

**Response:**

```javascript
{
  "data" : false,
  "code" : 0,
  "message" : "SUCCESS",
  "totalPage" : null,
  "totalElement" : null
}
```

### 广告列表(幻灯片列表)

- 接口地址: `/uc/ancillary/system/advertise`
- 请求方法: POST
- 请求参数  
  无

**Response:**

```javascript
{
  "data" : [ {
    "serialNumber" : "7EFE26EC06C44B8CB017DAB991F73B5A",
    "name" : "平台币首发",
    "sysAdvertiseLocation" : 1,
    "lang" : "CN",
    "startTime" : "2019-08-01 00:00:00",
    "endTime" : "2021-08-31 00:00:00",
    "url" : "https://xxx.xxx/2019/10/22/deca564f-8231-4aaf-a956-30fb1001be15.jpg",
    "linkUrl" : "https://www.xxx.com/announcement/118930",
    "remark" : "",
    "status" : 0,
    "createTime" : null,
    "content" : null,
    "author" : null,
    "sort" : 1
  }, {
    "serialNumber" : "B432AB3F4C0D4ED4BD58E68AFD08DE99",
    "name" : "app上线",
    "sysAdvertiseLocation" : 1,
    "lang" : "CN",
    "startTime" : "2019-08-01 00:00:00",
    "endTime" : "2020-09-25 00:00:00",
    "url" : "https://xxx.xxx/2019/09/09/cfc70e20-3f4b-45ed-8d7e-130dd144a426.jpg",
    "linkUrl" : "",
    "remark" : "",
    "status" : 0,
    "createTime" : null,
    "content" : null,
    "author" : null,
    "sort" : 12
  } ],
  "code" : 0,
  "message" : "SUCCESS",
  "totalPage" : null,
  "totalElement" : null
}
```

### 通知消息

- 接口地址: `/uc/announcement/page`
- 请求方法: POST
- 请求参数  
  无

**Response:**

```javascript
{
  "data" : {
    "content" : [ {
      "id" : 4,
      "title" : "关于上线ETH/BTC交易对的通知",
      "content" : null,
      "createTime" : "2019-07-03 04:17:40",
      "announcementClassification" : 0,
      "isShow" : true,
      "lang" : "CN",
      "isTop" : null,
      "imgUrl" : null,
      "sort" : 0
    }, {
      "id" : 1,
      "title" : "关于即将上线BTC/USDT交易对的公告",
      "content" : null,
      "createTime" : "2019-06-29 19:34:35",
      "announcementClassification" : 1,
      "isShow" : true,
      "lang" : "CN",
      "isTop" : null,
      "imgUrl" : null,
      "sort" : 0
    } ],
    "number" : 0,
    "size" : 6,
    "totalElements" : 3
  },
  "code" : 0,
  "message" : "SUCCESS",
  "totalPage" : null,
  "totalElement" : null
}
```

### BTC 趋势

- 接口地址: `/market/btc/trend`
- 请求方法: POST
- 请求参数

### 热门币种行情

- 接口地址: `/market/symbol-thumb-trend`
- 请求方法: POST
- 请求参数

## 用户接口

### 登录

- 接口地址: `/uc/login`
- 请求方法: POST
- 请求参数

|   参数   | 类型 | 是否必填 | 描述 | 备注 |
| :------: | :--: | :------: | :--: | :--: |
| username |      |    是    |      |      |
| password |      |    是    |      |      |

**Response:**

```javascript
{
  "data" : null,
  "code" : 500,
  "message" : "账号或密码错误",
  "totalPage" : null,
  "totalElement" : null
}
```

### 注册

- 接口地址: `/uc/login`
- 请求方法: POST
- 请求参数

|   参数   | 类型 | 是否必填 | 描述 | 备注 |
| :------: | :--: | :------: | :--: | :--: |
| username |      |    是    |      |      |
| password |      |    是    |      |      |

**Response:**

```javascript
{
  "data" : null,
  "code" : 500,
  "message" : "账号或密码错误",
  "totalPage" : null,
  "totalElement" : null
}
```

### 找回密码发送短信验证码

- 接口地址: `/uc/mobile/reset/code`
- 请求方法: POST
- 请求参数

|  参数   | 类型 | 是否必填 | 描述 | 备注 |
| :-----: | :--: | :------: | :--: | :--: |
| account |      |    是    |      |      |

**Response:**

```javascript
{
  "data" : null,
  "code" : 500,
  "message" : "无此用户",
  "totalPage" : null,
  "totalElement" : null
}
```

**说明:**  
成功返回：  
失败返回:

### 找回密码

- 接口地址: `/market/btc/trend`
- 请求方法: POST
- 请求参数

| 参数 | 类型 | 是否必填 | 描述 | 备注 |
| :--: | :--: | :------: | :--: | :--: |
|      |      |          |      |      |

**Response:**

```javascript

```

### 发送邮件验证码

- 接口地址: `/uc/reg/email/code`
- 请求方法: POST
- 请求参数

| 参数  |   类型   | 是否必填 | 描述 | 备注 |
| :---: | :------: | :------: | :--: | :--: |
| email | 邮件格式 |    是    |      |      |

**Response:**

```javascript
{
  "data" : null,
  "code" : 500,
  "message" : "发送失败",
  "totalPage" : null,
  "totalElement" : null
}
```

### 邮箱注册

- 接口地址: `/uc/register/email`
- 请求方法: POST
- 请求参数

|     参数     |   类型   | 是否必填 |     描述     |   备注    |
| :----------: | :------: | :------: | :----------: | :-------: |
|    email     | 邮件格式 |    是    | 注册邮箱地址 |           |
|   username   |          |    是    |              |           |
|   password   |          |    是    |     密码     |           |
|     code     | 6 位字符 |    是    |  邮箱验证码  |           |
|  promotion   |          |    否    |    邀请码    |           |
|   country    |          |    否    |              | 默认:中国 |
| superPartner |          |    否    |              |           |
|  visitCode   |          |    否    |              |           |

**Response:**

```javascript
{
  "data" : null,
  "code" : 500,
  "message" : "请先获取验证码",
  "totalPage" : null,
  "totalElement" : null
}
```

### 手机注册

- 接口地址: `/uc/register/phone`
- 请求方法: POST
- 请求参数

|     参数     |  类型  | 是否必填 |    描述    |   备注    |
| :----------: | :----: | :------: | :--------: | :-------: |
|    phone     | 手机号 |    是    | 注册手机号 |           |
|   username   | 手机号 |    是    |            |           |
|     code     |  数字  |    是    | 短信验证码 |           |
|   password   |        |    是    |    密码    |           |
|  promotion   |        |    否    |   邀请码   |           |
|   country    |        |    否    |            | 默认:中国 |
| superPartner |        |    否    |            |           |
|    ticket    |        |    否    |            |           |
|   randStr    |        |    否    |            |           |

**Response:**

```javascript
{
  "data" : null,
  "code" : 500,
  "message" : "该推荐码不存在，请核实后再填写",
  "totalPage" : null,
  "totalElement" : null
}
```
