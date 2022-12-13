module.exports = {
  apps : [{
    name: "tco-redirect",
    script: "node main.mjs",
    cwd: "/home/chen/dev/Memkits/tco-redirect/",
    env: {
      release: "true"
    }
  }]
}

