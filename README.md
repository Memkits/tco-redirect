
T.CO Redirect
----

> a script for redirecting t.co urls.

Try this <http://tco.tiye.me/?url=https://t.co/ftbaWdHLV0>.

### 使用者影响

本候选同步到正式 Calcit CLI / `@calcit/procs` **0.32.1**，使用已发布 Skir **0.0.35**。
传递 Router **0.9.0-alpha.4**、Respo **0.17.1**、JS-FFI **0.2.9**；Router 尚无对应正式版，
保留精确 alpha tag，不使用本地替代、hash 或未发布版本。服务部署前需重新安装依赖并生成 JS。

本次仅通过官方 formatter 迁移旧类型标注，七个定义语义与实现保持。原端口 **11029**、PM2
工作目录、扩展协议和 HTTP 响应保持；本 PR 不合并、部署或重启服务。Node 服务没有前端，不添加 COS/CDN。

缺少 url 参数仍返回 400；上游失败仍返回 500；重定向仍返回 302。上游没有 Location 时仍返回
302 和空 Location header，不借迁移改为省略该 header。两处既有 Axios / String FFI 强转及开放
Promise 边界仍由 [#6](https://github.com/calcit-lang/tco-redirect/issues/6) 跟踪，不声称零类型债务。

### 开发与验收

使用 Node 24、Yarn 4.18.0、Caps 0.1.1 和正式 Calcit 0.32.1：

```sh
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn check
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format json
corepack yarn build
```

构建使用默认 Node/JS 入口，不启动服务。运行 `corepack yarn start` 才监听原端口。
源码只使用 `calcit.cirru` / `deps.cirru`，生成的 `js-out/` 不提交；CI 保留原产物供独立验收。
此前移除的无效 test 入口不恢复，也不新增空测试。没有真实附带测试，不把空选择报告为通过。

原入口、全定义、完整 strict、公开 API 和 immutable 清单门禁保持，不新增 checker 或预算。
新依赖解析等待 60 分钟，无单包豁免；immutable 复用已有 lock 解析。Actions 使用精确正式 tag，
维护者接受 tag 可移动风险，不增加 SHA pin 检查脚本。

真实回环验收覆盖缺少参数、有效重定向、无 Location、上游失败四个场景，使用随机回环端口；
不访问公开 t.co，不监听生产端口，也不代表生产服务或扩展安装验收。源码已迁移的端口 Option、
query 字符串解码与空 Location 处理均保持，不改变现有接收协议。

### License

MIT
