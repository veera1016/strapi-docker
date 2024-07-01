module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  app: {
    keys: env.array('APP_KEYS','F+pkMmah8c7Xj7hyf839Wg==,IVK5Qwq5VmyyI1kAJIiLqQ==,L3e/wCNGCqOo6QY6mydFjA==,Hc0owxRYeeyF7ohsd5+Ecw=='),
  },
  webhooks: {
    populateRelations: env.bool('WEBHOOKS_POPULATE_RELATIONS', false),
  },
});
