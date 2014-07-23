#include "../RPC/gen-cpp/RPC.h"
#include <thrift/protocol/TBinaryProtocol.h>
#include <thrift/server/TSimpleServer.h>
#include <thrift/transport/TServerSocket.h>
#include <thrift/transport/TBufferTransports.h>
#include <osgViewer/Viewer>
#include <osgDB/ReadFile>

using namespace std;
using namespace ::apache::thrift;
using namespace ::apache::thrift::protocol;
using namespace ::apache::thrift::transport;
using namespace ::apache::thrift::server;
using boost::shared_ptr;

class RPCHandler : virtual public RPCIf {
 private:
	osgViewer::Viewer viewer;
 public:
  RPCHandler() {
    // Your initialization goes here
  }

  void ping() {
    // Your implementation goes here
    printf("ping\n");
  }
  
  void run() {
    // Your implementation goes here
    printf("run\n");
	string path = "/home/alex/osgdata/cow.osg";
	viewer.setSceneData(osgDB::readNodeFile("cow.osg"));
	viewer.run();
  }

};

int main(int argc, char **argv) {
  int port = 9090;
  shared_ptr<RPCHandler> handler(new RPCHandler());
  shared_ptr<TProcessor> processor(new RPCProcessor(handler));
  shared_ptr<TServerTransport> serverTransport(new TServerSocket(port));
  shared_ptr<TTransportFactory> transportFactory(new TBufferedTransportFactory());
  shared_ptr<TProtocolFactory> protocolFactory(new TBinaryProtocolFactory());

  TSimpleServer server(processor, serverTransport, transportFactory, protocolFactory);
  server.serve();
  return 0;
}