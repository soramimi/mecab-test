#include <iostream>
#include <mecab.h>
#include <string>
#include <unistd.h>
#include <vector>
#include <fcntl.h>
#include <sys/stat.h>
#include <mecab/mecab/src/param.h>

#define CHECK(eval)                                                        \
	if (!eval) {                                                           \
		const char *e = tagger ? tagger->what() : MeCab::getTaggerError(); \
		std::cerr << "Exception:" << e << std::endl;                       \
		delete tagger;                                                     \
		return -1;                                                         \
	}

std::string readfile(char const *path)
{
	int fd = open(path, O_RDONLY);
	if (fd != -1) {
		struct stat st;
		std::vector<char> buf;
		if (fstat(fd, &st) == 0 && st.st_size > 0) {
			buf.resize(st.st_size + 1);
			read(fd, buf.data(), st.st_size);
		}
		close(fd);
		return buf.data();
	}
	return {};
}



int main(int argc, char **argv)
{
	std::string src = readfile("wagahaiwa_nekodearu.txt");
	if (src.empty()) return 1;
	char const *input = src.c_str();

	mecab_do(argc, argv, "/home/soramimi/develop/mecab-test/mecab/mecab-ipadic");
}
