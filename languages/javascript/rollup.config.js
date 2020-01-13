import { createFilter } from "rollup-pluginutils";

const loadFilesAsConstants = ({ include, exclude } = {}) => {
  const filter = createFilter(include, exclude);
  const filterExt = /\.(graphql|gql)$/i;

  return {
    name: "constants",
    transform(source, id) {
      if (!filter(id)) return null;
      if (!filterExt.test(id)) return null;

      const code = `export default \`${source}\`;`;

      return {
        code
      };
    }
  };
};

export default {
  input: "src/main.js",
  output: {
    file: "lib/main.js",
    format: "cjs"
  },
  plugins: [loadFilesAsConstants()]
};
