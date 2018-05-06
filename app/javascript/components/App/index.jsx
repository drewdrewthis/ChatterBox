import React from 'react';
import { ApolloLink } from 'apollo-link';
import { ApolloClient } from 'apollo-client';
import { ApolloProvider, Query, Subscription } from "react-apollo";
import { HttpLink } from 'apollo-link-http';
import { InMemoryCache } from 'apollo-cache-inmemory';
import ActionCable from 'actioncable';
import ActionCableLink from 'graphql-ruby-client/subscriptions/ActionCableLink';

// const cable = ActionCable.createConsumer()

// const httpLink = new HttpLink({
  // uri: '/graphql',
  // credentials: 'include'
// });

// const hasSubscriptionOperation = ({ query: { definitions } }) => {
  // return definitions.some(
    // ({ kind, operation }) => kind === 'OperationDefinition' && operation === 'subscription'
  // )
// }

// const link = ApolloLink.split(
  // hasSubscriptionOperation,
  // new ActionCableLink({cable}),
  // httpLink
// );

// const client = new ApolloClient({
  // link: httpLink,
  // cache: new InMemoryCache()
// });

const client = new ApolloClient();

const USER_QUERY = gql`
  query User{
    allUsers {
      id
      nickname
    }
  }
`;

const Display = (props) => {
  console.log(props);
  return(
    <div>hi</div>
  )
}

class App extends React.Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <Query>
            {({ loading, error, data }) => {
              if (loading) return <p>Loading...</p>;
              if (error) return <p>Error :(</p>;

              return [1,2,3].map(x => <Display />)
            }}
          </Query>
      </ApolloProvider>
    )
  }
}

export default App;
