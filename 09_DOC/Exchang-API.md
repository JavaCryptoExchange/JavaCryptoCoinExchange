# Exchang-API 币币交易 API

# 币币交易

### 定义

**订单类型:**

- LIMIT_PRICE - 限价单
- MARKET_PRICE - 市价单

**订单方向:**

- BUY - 买单
- SELL - 卖单

## 创建订单

- 接口地址: `/exchange/order/add`
- 请求方法: POST

- 请求参数

|    参数     | 类型 | 是否必填 |   描述   | 备注 |
| :---------: | :--: | :------: | :------: | :--: |
|   symbol    |      |    是    |  交易对  |
|    price    |      |    是    |   价格   |      |
|   amount    |      |    是    |   数量   |      |
|  direction  |      |    是    | 订单方向 |      |
|    type     |      |    是    | 订单类型 |      |
| useDiscount |      |    是    |          |      |

**Response:**

```javascript
{
  code: 0;
  data: "E163887580666973";
  message: "success";
  totalElement: null;
  totalPage: null;
}
```

Notes:

- message 返回提示信息。

## 当前委托订单列表

- 接口地址: `/exchange/order/current`
- 请求方法: POST

- 请求参数

|   参数   | 类型 | 是否必填 |   描述   | 备注 |
| :------: | :--: | :------: | :------: | :--: |
|  symbol  |      |    是    |  交易对  |      |
|  pageNo  |      |    是    |  当前页  |      |
| pageSize |      |    是    | 每页数量 |      |

**Response:**

```json
{
    ontent: [{orderId: "E163887567710440", memberId: 3, type: "LIMIT_PRICE", amount: 2, symbol: "ETH/USDT",…},…]
    first: true
    last: true
    number: 0
    numberOfElements: 2
    size: 100
    sort: [,…]
    totalElements: 2
    totalPages: 1
}
```

## 历史委托订单列表

- 接口地址: `/exchange/order/history`
- 请求方法: POST

- 请求参数

|   参数   | 类型 | 是否必填 |   描述   | 备注 |
| :------: | :--: | :------: | :------: | :--: |
|  symbol  |      |    是    |  交易对  |      |
|  pageNo  |      |    是    |  当前页  |      |
| pageSize |      |    是    | 每页数量 |      |

## 撤销委托订单

- 接口地址: `/exchange/order/cancel/{订单号}`
- 请求方法: POST

- 请求参数  
   无

**Response:**

```javascript
{
  code: 0;
  data: "E163887580666973";
  message: "success";
  totalElement: null;
  totalPage: null;
}
```
