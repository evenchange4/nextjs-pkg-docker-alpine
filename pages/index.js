import React from 'react';
import getConfig from 'next/config';
const { publicRuntimeConfig } = getConfig();

const { API_URL } = publicRuntimeConfig;

export default () => (
  <div>
    <h1>Home page (API_URL: {API_URL})</h1>

    <a href="https://github.com/evenchange4/nextjs-pkg-docker-alpine">
      https://github.com/evenchange4/nextjs-pkg-docker-alpine
    </a>
  </div>
);
