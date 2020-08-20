Frontend:
Image made from node:alpine was 329 berfore cleaning. After clean up
the size dropped to 174 MB. Size was reduced almost only becase of
removal of node_modules after "npm run build".

Backend:
The final size of image is 154 MB. The size was reduced only about 
10 MB by removing git.
