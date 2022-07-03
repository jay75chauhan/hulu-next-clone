# Install dependencies only when needed
FROM node:16.15.1-alpine 


WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install 


COPY . ./


# COPY pages ./pages
# COPY public ./public
# COPY styles ./styles
# COPY components ./components
# COPY utils ./utils



CMD ["yarn", "dev"]
