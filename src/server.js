import { ApolloServer } from "apollo-server";
import modules from "./module/index.js";

const server = new ApolloServer({
    modules
});

server.listen(9090, console.log(9090 + server.graphqlPath));
