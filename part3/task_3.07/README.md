For this task I chose exercice 1.13 as starting point. In 1.13 Openjdk image
was used to build a Java Spring application and it used only root account.
I decided to replace openjdk image with alpine, and install only needed
applications.

This led to much smaller image. Size with openjava image was 596 MB and it
was reduced to 187 MB with Alpine Linux.

I also created a regular user  run the application, so root account is
not used after the installation.
