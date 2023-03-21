import { Module } from '@nestjs/common';
import { AuthModule } from './auth/auth.module';
import { DisciplinaModule } from './disciplina/disciplina.module';
import { professorModule } from './professor/user.module';
import { PrismaModule } from './prisma/prisma.module';


@Module({
  imports: [AuthModule, professorModule, DisciplinaModule, PrismaModule],

})
export class AppModule {}
