
T.CO Redirect
----

> a script for redirecting t.co urls.

Try this <http://tco.tiye.me/?url=https://t.co/ftbaWdHLV0>.

### Workflow

使用者影响：CLI / `@calcit/procs` 同步到正式 **0.31.0**，Skir 同步到已发布
**0.0.34**。传递 Router **0.9.0-alpha.3**、Respo **0.17.0-alpha.4**、JS-FFI
**0.2.7**；Router/Respo 仍为精确 alpha tag，不代表整张图均为稳定版。
部署前需重新安装依赖并生成 JS；原端口 11029、PM2 工作目录和扩展协议不变。
这是 Node 服务，没有前端 COS/CDN，本轮不部署或重启服务。

通过官方配置 API 移除了指向不存在的 `app.test` / `calcit-test` 的历史 test 入口，
没有删除任何真实测试。缺失 Location 的内部响应值改为明确空字符串，取代隐式 nil 分支；
原 Skir 会把 nil 转为空 header，HTTP 行为仍为 302 和空 Location，不改为省略该 header。
真实回环验收覆盖缺少参数、有效重定向、无 Location、上游失败四种情况，全部通过。

使用正式 0.31.0 CLI、Caps 0.1.1、Node 24、Yarn 4.18.0：

```sh
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn check
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format json
corepack yarn build
```

完整 strict 和全定义检查通过；CI 保留原门禁并加入完整 strict，无新验证脚本。
两处原 Axios / String FFI 强转仍存在，开放 Promise 边界由
[#6](https://github.com/Memkits/tco-redirect/issues/6) 跟踪，不声称零类型债务。
回环验收不访问公开 t.co，也不代表生产服务验收。以下为先前迁移记录。

### 历史：0.30.1 迁移

使用正式 Calcit 0.30.1、Caps 0.1.1、Node.js 24、Yarn 4.18.0：

```sh
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn check
corepack yarn build
```

构建使用默认 Node/JS 入口，不启动服务。需要运行时再执行 `corepack yarn start`，监听端口仍为 `11029`；原 PM2 工作目录和部署配置不变。这是服务端项目，没有前端资源需要上传 COS。

源码使用 `calcit.cirru`、`deps.cirru`；生成的 `js-out/` 不提交。历史 `test` 入口仍引用仓库中不存在的 `app.test`，不属于可运行入口；CI 直接检查实际服务入口和公开定义，不依赖旧 `calcit-test`。

Skir 固定使用已发布正式版 `0.0.33`，应用 CLI / `@calcit/procs` 配对正式 `0.30.1`；传递 Router `0.8.38`、Respo `0.16.126`、js-ffi `0.2.6`。不使用浮动 main/hash 或 alpha，不覆盖模块解析来掩盖依赖图冲突。

本轮构建和门禁使用官方 Linux 正式 `0.30.1`，不声称 macOS 正式编译验收。服务部署前需按新 lockfile 安装依赖；不自动合并、部署、重启或改动 PM2 路径。浏览器扩展协议与内容脚本不改，没有前端 COS 迁移。

已有端口配置使用显式 `Option :some`，查询参数通过 `decode-map-as` 检查字符串；本轮 Snapshot 不改。源码仍有 Axios 对象与错误 String 转换两处显式 FFI 强转，不能把版本配对称为 unsafe 清零或完全类型证明。CI 增加实际默认入口的全定义检查、immutable 清单守卫，Snapshot 使用 quiet diff，不输出原始源码；上传本次 Node 产物供独立回环验收，不加入生成代码、测试框架或重复验证脚本。

历史回环验收覆盖缺少参数、重定向、上游未返回 Location、上游失败，不能替代本轮正式依赖图的验收。无 Location 时原有协议为 302 和空 Location header，不借迁移改变协议。Axios 同步响应/Promise 返回的开放边界仍保留，不伪造完整类型。

历史无效 `test` 入口仍引用缺失 `calcit-test`，不能把默认入口 CI 通过称为全项目 strict 通过。该入口删除 API 已随 [Calcit #2271](https://github.com/calcit-lang/calcit/pull/2271) 合入 **0.31.0**，不是正式 0.30.1 的能力；原需求 [#2104](https://github.com/calcit-lang/calcit/issues/2104) / 重复 [#2212](https://github.com/calcit-lang/calcit/issues/2212) 已关闭，不再误称上游尚未实现。当前目标限定 0.30.1，因此保留这项明确未完成边界，不手改 Snapshot、借用 0.31 CLI 写入、删除门禁或添加空测试掩盖问题。没有真实附带测试，不把空测试列表报告为通过。

### License

MIT
