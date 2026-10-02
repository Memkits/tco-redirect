
T.CO Redirect
----

> a script for redirecting t.co urls.

Try this <http://tco.tiye.me/?url=https://t.co/ftbaWdHLV0>.

### Workflow

使用 Calcit 0.27.0、Caps 0.1.1、Node.js 24、Yarn 4.18.0：

```sh
caps --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn check
corepack yarn build
```

构建使用默认 Node/JS 入口，不启动服务。需要运行时再执行 `corepack yarn start`，监听端口仍为 `11029`；原 PM2 工作目录和部署配置不变。这是服务端项目，没有前端资源需要上传 COS。

源码使用 `calcit.cirru`、`deps.cirru`；生成的 `js-out/` 不提交。历史 `test` 入口仍引用仓库中不存在的 `app.test`，不属于可运行入口；CI 直接检查实际服务入口和公开定义，不依赖旧 `calcit-test`。

Skir 固定使用已发布的 `0.0.29-alpha.2`，不使用浮动 main/hash；其最新正式版 `0.0.28` 仍基于 Calcit 0.18.1。应用工具链为 0.27.0，但此预发布模块及其依赖还声明旧版本，不能将普通 `caps verify --toolchain` 称为严格依赖图版本一致性验证。后续兼容正式版发布后再升级。

### License

MIT
