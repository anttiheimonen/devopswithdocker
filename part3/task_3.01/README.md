Frontend images RUN layer was 463 MB before changes.
After running the current Dockerfile this was reduced to 345 MB. So total is 470 MB.

Backend's RUN layer shrank fom 287 MB to 169 MB. Ubuntu added 125 MB to that so the end size is 294 MB.

I wasn't able to reduce size any more. 
