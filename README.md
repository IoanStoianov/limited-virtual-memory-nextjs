This is a [Next.js](https://nextjs.org/) template to use when reporting a [bug in the Next.js repository](https://github.com/vercel/next.js/issues) with the `app/` directory.


Run:
`docker build . -t limited-virtual-memory`
`docker run -d limited-virtual-memory`
`docker exec -it <container_id> sh`

`/app # ulimit -v 2048000`
`/app # npx next info`