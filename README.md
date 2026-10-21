
T.CO Redirect
----

> a script for redirecting t.co urls.

Try this <http://tco.tiye.me/?url=https://t.co/ftbaWdHLV0>.

### Workflow

使用 Calcit 0.30.1-alpha.5、Caps 0.1.1、Node.js 24、Yarn 4.18.0：

```sh
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn check
corepack yarn build
```

构建使用默认 Node/JS 入口，不启动服务。需要运行时再执行 `corepack yarn start`，监听端口仍为 `11029`；原 PM2 工作目录和部署配置不变。这是服务端项目，没有前端资源需要上传 COS。

源码使用 `calcit.cirru`、`deps.cirru`；生成的 `js-out/` 不提交。历史 `test` 入口仍引用仓库中不存在的 `app.test`，不属于可运行入口；CI 直接检查实际服务入口和公开定义，不依赖旧 `calcit-test`。

Skir 固定使用已发布的正式版 `0.0.31`，不使用浮动 main/hash 或预发布模块；应用和 Skir 的 CLI / `@calcit/procs` 配对为 `0.30.1-alpha.5`。传递 Router `0.8.36`、Respo `0.16.122` 仍声明 alpha.4，js-ffi 固定为 `0.2.3`；不应把应用版本配对称为整个依赖图版本一致。

截至 2026-10-21，0.30.1 正式 release 尚无 macOS 资产；本轮使用实际可验收的 alpha.5，不宣称完成正式版跨平台验收。服务部署前需按新 lockfile 安装依赖；不自动合并、重启或改动 PM2 路径。

已有端口配置使用显式 `Option :some`，查询参数通过 `decode-map-as` 检查字符串；本轮 Snapshot 和原 CI 均不改动。0.30.0/Skir 0.0.30 与候选的全定义检查均为 10/10，公开定义 7/7，默认 JS 入口检查及构建通过，deprecated calls=0。

缺少参数、重定向、上游未返回 Location、上游失败这四类真实 HTTP 响应在两版工具链和正式依赖图下逐字段相同，使用自建回环服务和合成请求，验收后全部关闭。无 Location 时仍保留原有 302 和空 Location header，不借迁移改变协议。Axios 同步响应/Promise 返回的开放边界仍使一个定义为 partial（其余六个 full），不伪造完整类型。

历史无效 `test` 入口仍会使 `calcit fix --workflow strict --verify` 在读取缺失 `calcit-test` 时失败；两版均已复现，不能把默认入口或 CI 通过称为全项目 strict 通过。当前 CLI 缺少删除入口的公开结构化操作，跟踪 [Calcit #2212](https://github.com/calcit-lang/calcit/issues/2212)，不手改 Snapshot 或添加空测试掩盖问题。

### License

MIT
