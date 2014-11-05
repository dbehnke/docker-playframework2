docker-playframework2
=====================

Docker build for a simple playframework application. The resulting
image expects the actual application to be bound at /app.  It
will stage and then run the application at that location on the
default playframework port (9000).

To speed up play building, you can specify an ivy cache at /root/.ivy2
