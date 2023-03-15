import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { DisciplinaModule } from './disciplina/disciplina.module';

@Module({
  imports: [UserModule, DisciplinaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
