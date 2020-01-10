jest.disableAutomock();

const fs = require("fs");
const graphql = require("graphql");
const yaml = require("js-yaml");

test("adds 1 + 2 to equal 3", () => {
  const teamMemberSchema = fs.readFileSync(
    "../../schemas/graphql/team/member.graphql",
    "utf8"
  );

  const schema = graphql.buildSchema(teamMemberSchema);

  const members = yaml.safeLoadAll(
    fs.readFileSync("../../examples/team/member.yaml", "utf8")
  );

  members.map(member => {
    const result = graphql.astF;
    console.log(result);
  });

  expect(1 + 2).toBe(3);
});
