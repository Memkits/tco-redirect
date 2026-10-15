
T.CO Redirect
----

> a script for redirecting t.co urls.

Try this <http://tco.tiye.me/?url=https://t.co/ftbaWdHLV0>.

### Workflow

使用 Calcit 0.30.0、Caps 0.1.1、Node.js 24、Yarn 4.18.0：

```sh
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn check
corepack yarn build
```

构建使用默认 Node/JS 入口，不启动服务。需要运行时再执行 `corepack yarn start`，监听端口仍为 `11029`；原 PM2 工作目录和部署配置不变。这是服务端项目，没有前端资源需要上传 COS。

源码使用 `calcit.cirru`、`deps.cirru`；生成的 `js-out/` 不提交。历史 `test` 入口仍引用仓库中不存在的 `app.test`，不属于可运行入口；CI 直接检查实际服务入口和公开定义，不依赖旧 `calcit-test`。

Skir 固定使用已发布的正式版 `0.0.29`，不使用浮动 main/hash 或预发布模块；CLI 与 `@calcit/procs` 配对为 `0.30.0`。Skir 及其正式依赖图仍声明 Calcit `0.29.3`，不应把应用版本配对称为整个依赖图版本一致。

迁移将服务端口配置改为显式 `Option :some`，并在查询参数边界用 `decode-map-as` 检查字符串，而不是只做类型断言。缺少参数、重定向、上游未返回 Location、上游失败这四类真实 HTTP 响应已与原版本对比；有效请求协议和端口不变。历史无效 `test` 入口仍会使 `calcit fix --workflow strict --verify` 在读取缺失 `calcit-test` 时失败，不能把默认入口检查通过称为全项目 strict 通过；应等待结构化配置工具支持删除该入口，不添加空测试掩盖问题。

### License

MIT
