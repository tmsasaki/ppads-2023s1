import { Module } from '@nestjs/common';
import { AuthModule } from 'src/auth/auth.module';
import { DisciplinaModule } from 'src/disciplina/disciplina.module';
import { professorModule } from 'src/user/user.module';
import { PrismaModule } from 'src/prisma/prisma.module';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true
    }),
    AuthModule,
    professorModule,
    DisciplinaModule,
    PrismaModule
  ],
})
export class AppModule {}
