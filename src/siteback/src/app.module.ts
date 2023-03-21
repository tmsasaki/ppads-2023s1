import { Module } from '@nestjs/common';
import { AuthModule } from './auth/auth.module';
import { DisciplinaModule } from './disciplina/disciplina.module';
import { professorModule } from './professor/user.module';

@Module({
  imports: [AuthModule, professorModule, DisciplinaModule],

})
export class AppModule {}
