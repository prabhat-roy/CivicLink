// Module Federation across CivicLink frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "civiclink_shell",
      remotes: {
        admin: "admin@https://admin.civiclink.internal/remoteEntry.js",
        partner: "partner@https://partner.civiclink.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
