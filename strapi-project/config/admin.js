module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET','JH/J9xB0XdEij/ig+8ZXCQ=='),
  },
  apiToken: {
    salt: env('API_TOKEN_SALT','a1qAuJoVtucvh+BM8ylHzQ=='),
  },
  transfer: {
    token: {
      salt: env('TRANSFER_TOKEN_SALT','5HiluKwLjyE/cxrpHgdtnQ=='),
    },
  },
  flags: {
    nps: env.bool('FLAG_NPS', true),
    promoteEE: env.bool('FLAG_PROMOTE_EE', true),
  },
});
