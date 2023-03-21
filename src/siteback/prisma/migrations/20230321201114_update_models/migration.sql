/*
  Warnings:

  - You are about to drop the `Aluno` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Aula` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Disciplina` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Periodo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Presenca` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Professor` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Responsavel` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Turma` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Professor" DROP CONSTRAINT "Professor_user_id_fkey";

-- DropTable
DROP TABLE "Aluno";

-- DropTable
DROP TABLE "Aula";

-- DropTable
DROP TABLE "Disciplina";

-- DropTable
DROP TABLE "Periodo";

-- DropTable
DROP TABLE "Presenca";

-- DropTable
DROP TABLE "Professor";

-- DropTable
DROP TABLE "Responsavel";

-- DropTable
DROP TABLE "Turma";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "users" (
    "user_id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "email" TEXT NOT NULL,
    "hash" TEXT NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("user_id")
);

-- CreateTable
CREATE TABLE "professors" (
    "nome_prof" TEXT NOT NULL,
    "cod_prof" SERIAL NOT NULL,
    "cod_disciplina" INTEGER NOT NULL,
    "user_id" INTEGER NOT NULL,
    "email_prof" TEXT,
    "tel_prof" TEXT NOT NULL,

    CONSTRAINT "professors_pkey" PRIMARY KEY ("cod_prof")
);

-- CreateTable
CREATE TABLE "disciplinas" (
    "cod_disciplina" SERIAL NOT NULL,
    "nome_disciplina" TEXT NOT NULL,

    CONSTRAINT "disciplinas_pkey" PRIMARY KEY ("cod_disciplina")
);

-- CreateTable
CREATE TABLE "alunos" (
    "cod_aluno" SERIAL NOT NULL,
    "cod_turma" INTEGER NOT NULL,
    "cod_resp" INTEGER NOT NULL,
    "nome_aluno" TEXT NOT NULL,
    "data_nasc" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "alunos_pkey" PRIMARY KEY ("cod_aluno")
);

-- CreateTable
CREATE TABLE "responsaveis" (
    "cod_resp" INTEGER NOT NULL,
    "cod_aluno" INTEGER NOT NULL,
    "nome_resp" TEXT NOT NULL,
    "tel_resp" TEXT,
    "email_resp" TEXT,

    CONSTRAINT "responsaveis_pkey" PRIMARY KEY ("cod_resp","cod_aluno")
);

-- CreateTable
CREATE TABLE "turmas" (
    "cod_turma" SERIAL NOT NULL,
    "nome_turma" TEXT NOT NULL,
    "sala_aula" INTEGER NOT NULL,

    CONSTRAINT "turmas_pkey" PRIMARY KEY ("cod_turma")
);

-- CreateTable
CREATE TABLE "periodos" (
    "cod_periodo" SERIAL NOT NULL,
    "periodo" TEXT NOT NULL,

    CONSTRAINT "periodos_pkey" PRIMARY KEY ("cod_periodo")
);

-- CreateTable
CREATE TABLE "aulas" (
    "cod_turma" INTEGER NOT NULL,
    "cod_periodo" INTEGER NOT NULL,
    "cod_prof" INTEGER NOT NULL,
    "cod_disciplina" INTEGER NOT NULL,
    "dia_semana" TEXT NOT NULL,
    "data_aula" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "aulas_pkey" PRIMARY KEY ("cod_turma","cod_periodo","cod_disciplina","dia_semana")
);

-- CreateTable
CREATE TABLE "presencas" (
    "cod_aluno" INTEGER NOT NULL,
    "cod_disciplina" INTEGER NOT NULL,
    "data_presenca" TIMESTAMP(3) NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "presencas_pkey" PRIMARY KEY ("cod_aluno","cod_disciplina","data_presenca")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_user_id_key" ON "users"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "professors_user_id_key" ON "professors"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "alunos_cod_aluno_key" ON "alunos"("cod_aluno");

-- CreateIndex
CREATE UNIQUE INDEX "turmas_cod_turma_key" ON "turmas"("cod_turma");

-- CreateIndex
CREATE UNIQUE INDEX "periodos_cod_periodo_key" ON "periodos"("cod_periodo");

-- AddForeignKey
ALTER TABLE "professors" ADD CONSTRAINT "professors_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("user_id") ON DELETE RESTRICT ON UPDATE CASCADE;
