COMP =g++ -c -pipe -g -std=gnu++11 -Wall -W -D_REENTRANT -fPIC -DQT_DEPRECATED_WARNINGS -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I../UNIX_Exercice1 -I. -isystem /usr/include/qt5 -isystem /usr/include/qt5/QtWidgets -isystem /usr/include/qt5/QtGui -isystem /usr/include/qt5/QtCore -I. -I. -I/usr/lib64/qt5/mkspecs/linux-g++ -o

all:		UNIX_Exercice1


UNIX_Exercice1:		main.o mainwindow.o moc_mainwindow.o 
					g++  -o UNIX_Exercice1 main.o mainwindow.o moc_mainwindow.o   /usr/lib64/libQt5Widgets.so /usr/lib64/libQt5Gui.so /usr/lib64/libQt5Core.so /usr/lib64/libGL.so -lpthread

main.o:				main.cpp mainwindow.o moc_mainwindow.o
					$(COMP) main.o main.cpp

mainwindow.o:		mainwindow.cpp mainwindow.h 
					$(COMP) mainwindow.o mainwindow.cpp 

moc_mainwindow.o:	moc_mainwindow.cpp ui_mainwindow.h
					$(COMP) moc_mainwindow.o moc_mainwindow.cpp 