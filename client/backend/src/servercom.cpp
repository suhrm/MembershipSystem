

#include "servercom.h"
#define U_TO_SEC 1000000

Servercom::Servercom(){

}
Servercom::~Servercom(){

}
void Servercom::runner(){

        char buff[64 * 1024] = {0}
        int ssock = -1;
        // try to connect to server:
RETRY:

        ssock = socket(AF_INET, SOCK_STREAM, 0);
        if (ssock == -1){
                return -1;
        }
        sockaddr_in addr;
        addr.sin_family = AF_INET;
        addr.sin_port = htons(port);
        addr.sin_addr.s_addr = inet_addr(serverInfo[0].c_str());
        if (connect(sockfd, (sockaddr *)&addr, sizeof(addr)) == -1)
                goto RETRY;
        }
        while(true) // TODO: make start stop
        {

        }
}
void Servercom::start(){

}
void Servercom::stop(){

}
