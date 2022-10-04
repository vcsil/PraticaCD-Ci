FROM node

WORKDIR /usr/src/

COPY . .

EXPOSE 5000

RUN npm i && npm run build

RUN npx prisma generate

CMD ["npm", "start"]