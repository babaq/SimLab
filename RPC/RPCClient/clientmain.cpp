#include <stdio.h>
#include <thrift/protocol/TBinaryProtocol.h>
#include <thrift/transport/TSocket.h>
#include <thrift/transport/TTransportUtils.h>
#include "../gen-cpp/RPC.h"

using namespace std;
using namespace apache::thrift;
using namespace apache::thrift::protocol;
using namespace apache::thrift::transport;
using boost::shared_ptr;

int main(int argc, char **argv)
{
	int port = 9090;
	shared_ptr<TTransport> socket(new TSocket("localhost", port));
	shared_ptr<TTransport> transport(new TBufferedTransport(socket));
	shared_ptr<TProtocol> protocol(new TBinaryProtocol(transport));
	RPCClient client(protocol);
	
	try{
		transport->open();
		
		client.ping();
		printf("ping...\n");
		
		transport->close();
	} catch (TException &tx) {
		printf("Error: %s\n",tx.what());
	}
	
	return 0;
}
