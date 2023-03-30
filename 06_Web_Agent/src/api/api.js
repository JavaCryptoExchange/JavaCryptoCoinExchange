import axios from 'axios';
import { loginreq, req } from './axiosFun';

// ======================通用接口=======================

// 登录接口
export const login = (params) => { return loginreq("post", "/agent/login", params) };

// 退出接口
export const loginout = () => { return req("post", "/agent/loginout").then(res => res.data) };

// 获取邀请用户列表
export const getMemberList = (params) => { return req("post", "/agent/member/page-query", params) };

// 获取充值列表
export const getDepositList = (params) => { return req("post", "/agent/deposit/page-query", params) };

// 获取充值列表
export const getWithdrawList = (params) => { return req("post", "/agent/withdraw/page-query", params) };

// 获取支持币种列表
export const getCoinList = (params) => { return req("post", "/agent/coin/all-name-and-unit", params) };

// 获取充值列表
export const getTransactionList = (params) => { return req("post", "/agent/transactions/page-query", params) };

// 获取交易返佣列表
export const getTransactionRebateList = (params) => { return req("post", "/agent/transactionRebates/page-query", params) };

// 获取充值列表
export const getMemberAssetsList = (params) => { return req("post", "/agent/member/assets-list", params) };

//查询推荐比例
export const getTransactionRebateSet = (params) => { return req("post", "/agent/transactionRebateSet/query", params) };
//清除比例缓存
export const clearTransactionRebateSet = (params) => { return req("post", "/agent/transactionRebateSet/clear", params) };
//设置比例
export const transactionRebateSet = (params) => { return req("post", "/agent/transactionRebateSet/set", params) };