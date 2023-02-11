import { gql } from "apollo-server";

export default gql`
    type Course {
        id: ID!
        title: String!
        price: Int!
    }

    type Query {
        courses: [ Course ]!
    }

    type Mutation {
        createCourse(title: String! price: Int!): Course
    }
`;
