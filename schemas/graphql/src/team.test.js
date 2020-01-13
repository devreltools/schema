jest.disableAutomock();

const fs = require("fs");
const graphql = require("graphql");
const yaml = require("js-yaml");

test("examples can be coerced into GraphQL Types", () => {
  const teamMemberSchema = fs
    .readFileSync("schemas/team.graphql", "utf8")
    .replace(/type/g, "input");

  const schema = graphql.buildSchema(teamMemberSchema);

  const members = yaml.safeLoadAll(
    fs.readFileSync("../../examples/team/member.yaml", "utf8")
  );

  members.map(member => {
    expect(
      graphql.coerceInputValue(member, schema.getType("Member"))
    ).toStrictEqual(member);
  });
});
