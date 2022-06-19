#include "ravel/ravel.h"
#include <cstring>
std::string readSource(const std::string &filename) {
std::ifstream t(filename);
if (!t) {
  throw Exception("Can not find file " + filename);
}
std::string src((std::istreambuf_iterator<char>(t)),
				std::istreambuf_iterator<char>());
return src;
}

int toInt(char * c) {
	int len = strlen(c);
	int res = 0;
	for (int i=0;i<len;++i){
		res = res*10+c-'0';
	}
	return res;
}

int main(int argc, char *argv[]) {
	
  printf("1");
  std::size_t size = 32*1024*1024;
  string source = "src.s";
  string mem = "";
	for (int i=0;i<argc; ++i) {
		if (strcmp(argv[i],"-size")) {
			size = toInt(argv[++i])*1024*1024;
		}
		else if (strcmp(argv[i],"-src")) {
			source = argv[++i];
		}
		else if (strcmp(argv[i],"-mem")) {
			mem = argv[++i];
		}
	}
	
  printf("2");
  std::uint32_t regs[32];
  std::vector<std::byte> storage(size);

  printf("3");
  string src = readSource(source);
	
	
  printf("%s",src.cstring());
  // The function signature of ravel::simulate is
  // std::size_t simulate(const std::string &src, std::uint32_t *regs,
  //                     std::byte *storageBegin, std::byte *storageEnd);
  // The return value is the number of cycles.
  ravel::simulate(src, regs, storage.data(),
                  storage.data() + size);
  return 0;
}