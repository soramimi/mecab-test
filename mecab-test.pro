
DESTDIR = $$PWD
TEMPLATE = app
TARGET = mecab-test
#LIBS += -lmecab

INCLUDEPATH += $$PWD/mecab/mecab/src
INCLUDEPATH += $$PWD

DEFINES += HAVE_STDINT_H
DEFINES += HAVE_CONFIG_H

HEADERS += \
	config.h \
	main.h \
	mecab/mecab/src/char_property.h \
	mecab/mecab/src/common.h \
	mecab/mecab/src/connector.h \
	mecab/mecab/src/context_id.h \
	mecab/mecab/src/darts.h \
	mecab/mecab/src/dictionary.h \
	mecab/mecab/src/dictionary_rewriter.h \
	mecab/mecab/src/feature_index.h \
	mecab/mecab/src/freelist.h \
	mecab/mecab/src/iconv_utils.h \
	mecab/mecab/src/lbfgs.h \
	mecab/mecab/src/learner_node.h \
	mecab/mecab/src/learner_tagger.h \
	mecab/mecab/src/mecab.h \
	mecab/mecab/src/mmap.h \
	mecab/mecab/src/nbest_generator.h \
	mecab/mecab/src/param.h \
	mecab/mecab/src/scoped_ptr.h \
	mecab/mecab/src/stream_wrapper.h \
	mecab/mecab/src/string_buffer.h \
	mecab/mecab/src/thread.h \
	mecab/mecab/src/tokenizer.h \
	mecab/mecab/src/ucs.h \
	mecab/mecab/src/ucstable.h \
	mecab/mecab/src/utils.h \
	mecab/mecab/src/viterbi.h \
	mecab/mecab/src/winmain.h \
	mecab/mecab/src/writer.h

SOURCES += \
	main.cpp \
	mecab/mecab/src/char_property.cpp \
	mecab/mecab/src/connector.cpp \
	mecab/mecab/src/context_id.cpp \
	mecab/mecab/src/dictionary.cpp \
	mecab/mecab/src/dictionary_compiler.cpp \
	mecab/mecab/src/dictionary_generator.cpp \
	mecab/mecab/src/dictionary_rewriter.cpp \
	mecab/mecab/src/eval.cpp \
	mecab/mecab/src/feature_index.cpp \
	mecab/mecab/src/iconv_utils.cpp \
	mecab/mecab/src/lbfgs.cpp \
	mecab/mecab/src/learner.cpp \
	mecab/mecab/src/learner_tagger.cpp \
	mecab/mecab/src/libmecab.cpp \
	mecab/mecab/src/nbest_generator.cpp \
	mecab/mecab/src/param.cpp \
	mecab/mecab/src/string_buffer.cpp \
	mecab/mecab/src/tagger.cpp \
	mecab/mecab/src/tokenizer.cpp \
	mecab/mecab/src/utils.cpp \
	mecab/mecab/src/viterbi.cpp \
	mecab/mecab/src/writer.cpp
