module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  app: {
    keys: ["2F42N7Pc6c+h8n+YNe7Pmg==,wvjgBZAN4Uzn12USExEwhw==,+nk0yo7aa6nKcp9d6g6rPw==,/da60z2KGfSZU9qqWRoXVA=="],
  },
  webhooks: {
    populateRelations: env.bool('WEBHOOKS_POPULATE_RELATIONS', false),
  },
});
