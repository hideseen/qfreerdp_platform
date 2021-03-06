PLUGIN_TYPE=platforms
load(qt_plugin)

TARGET=qfreerdp

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += freerdp xkbcommon glib-2.0
    LIBS += -lwinpr-input
}

CONFIG += link_pkgconfig qpa/genericunixfontdatabase

QT += core-private gui-private platformsupport-private

OTHER_FILES = freerdp.json

SOURCES += main.cpp 				\
		qfreerdpintegration.cpp		\
		qfreerdpplatform.cpp 		\
		qfreerdpscreen.cpp			\
		qfreerdpcursor.cpp			\
		qfreerdpbackingstore.cpp	\
		qfreerdpwindow.cpp			\
		qfreerdppeer.cpp			\
		qfreerdpwindowmanager.cpp


HEADERS += qfreerdpintegration.h \
	qfreerdpscreen.h \
	qfreerdpcursor.h			\
	qfreerdpbackingstore.h \
	qfreerdpwindow.h \
	qfreerdppeer.h \
	qfreerdplistener.h \
	qfreerdpwindowmanager.h \
	qfreerdpcursor.h 
	

#DESTDIR = $$QT.gui.plugins/platforms
#target.path += $$[QT_INSTALL_PLUGINS]/platforms           
INSTALLS += target

