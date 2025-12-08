import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // Aktifkan CORS jika Next.js atau frontend lain ingin akses API
  app.enableCors({
    origin: '*',
  });

  // Set default port ke 6000 jika tidak ada PORT di .env
  const port = process.env.PORT || 6000;
  await app.listen(port);

  console.log(` Server berjalan di http://localhost:${port}`);
}
bootstrap();
