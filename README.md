docker-playframework
====================

Docker build for a simple playframework application. The resulting
image expects the actual application to be bound at /application.  It
will stage and then run the application at that location on the
default playframework port (9000).

The setup script updates packages and installs curl before downloading
an official playframework zip file and installing it under /usr/local/play.

