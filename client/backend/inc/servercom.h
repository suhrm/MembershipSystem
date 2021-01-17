#ifndef __servercom__
#define __servercom__
#include <string>
#include <map>
#include <thread>
#include <unistd.h>
#include <thread>
#include <stdlib.h>
#include <cstdlib>
#include <unistd.h>
#include <string>
#include <cstring>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <iostream>
#include <stdio.h>
#include <errno.h>
#include <netinet/in.h>
#include <netdb.h>
#include <sys/wait.h>
#define _OPEN_SYS_ITOA_EXT
// #include<stdint>
#include <vector>
#include <mutex>
#include <condition_variable>
#include "json.hpp"
#include <fstream>
#include <ifaddrs.h>
#include <sys/ioctl.h>
#include <net/if.h>

struct c_to_s_msg
{
        std::string cardID;
};

struct s_to_c_msg
{
        std::string cardID;
        std::string name;
        std::string experyData;
}

class Servercom{

        private:
                std::string serverAddr;
                std::thread st;
                void runner();
        public:
                void start();
                void stop();
}


#endif
