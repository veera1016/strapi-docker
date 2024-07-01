module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET','mbfKvGtO+qb9QfxFwbNpig=='),
  },
  apiToken: {
    salt: env('API_TOKEN_SALT','iVrcDtv0xcw6QjbAhtknTQ=='),
  },
  transfer: {
    token: {
      salt: env('TRANSFER_TOKEN_SALT','pPG5SYgMYHQHDfoeHUSpog=='),
    },
  },
  flags: {
    nps: env.bool('FLAG_NPS', true),
    promoteEE: env.bool('FLAG_PROMOTE_EE', true),
  },
});
