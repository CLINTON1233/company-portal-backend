import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { join } from 'path';
import { NestExpressApplication } from '@nestjs/platform-express';
import * as fs from 'fs';

async function bootstrap() {
  const httpsOptions = {
    key: fs.readFileSync('ssl/localhost.key'),
    cert: fs.readFileSync('ssl/localhost.crt'),
  };

  const app = await NestFactory.create<NestExpressApplication>(AppModule, {
    httpsOptions,
  });

  app.enableCors({
    origin: [
      'https://localhost:3000',
      'https://localhost:3001',
      'https://localhost:3002',
      'https://localhost:3003',
    ],
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    credentials: true,
  });

  // expose folder uploads
  app.useStaticAssets(join(__dirname, '..', 'uploads'), {
    prefix: '/uploads/',
  });

  await app.listen(4000);
  console.log(`🚀 HTTPS Server running on https://localhost:4000`);
}

bootstrap();
