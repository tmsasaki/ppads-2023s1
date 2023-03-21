-- CreateTable
CREATE TABLE "User" (
    "user_id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "hash" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("user_id")
);

-- CreateTable
CREATE TABLE "Professor" (
    "nome_prof" TEXT NOT NULL,
    "cod_prof" SERIAL NOT NULL,
    "cod_disciplina" INTEGER NOT NULL,
    "user_id" INTEGER NOT NULL,
    "email_prof" TEXT,
    "tel_prof" TEXT NOT NULL,

    CONSTRAINT "Professor_pkey" PRIMARY KEY ("cod_prof")
);

-- CreateTable
CREATE TABLE "Disciplina" (
    "cod_disciplina" SERIAL NOT NULL,
    "nome_disciplina" TEXT NOT NULL,

    CONSTRAINT "Disciplina_pkey" PRIMARY KEY ("cod_disciplina")
);

-- CreateTable
CREATE TABLE "Aluno" (
    "cod_aluno" SERIAL NOT NULL,
    "cod_turma" INTEGER NOT NULL,
    "cod_resp" INTEGER NOT NULL,
    "nome_aluno" TEXT NOT NULL,
    "data_nasc" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Aluno_pkey" PRIMARY KEY ("cod_aluno")
);

-- CreateTable
CREATE TABLE "Responsavel" (
    "cod_resp" INTEGER NOT NULL,
    "cod_aluno" INTEGER NOT NULL,
    "nome_resp" TEXT NOT NULL,
    "tel_resp" TEXT,
    "email_resp" TEXT,

    CONSTRAINT "Responsavel_pkey" PRIMARY KEY ("cod_resp","cod_aluno")
);

-- CreateTable
CREATE TABLE "Turma" (
    "cod_turma" SERIAL NOT NULL,
    "nome_turma" TEXT NOT NULL,
    "sala_aula" INTEGER NOT NULL,

    CONSTRAINT "Turma_pkey" PRIMARY KEY ("cod_turma")
);

-- CreateTable
CREATE TABLE "Periodo" (
    "cod_periodo" SERIAL NOT NULL,
    "periodo" TEXT NOT NULL,

    CONSTRAINT "Periodo_pkey" PRIMARY KEY ("cod_periodo")
);

-- CreateTable
CREATE TABLE "Aula" (
    "cod_turma" INTEGER NOT NULL,
    "cod_periodo" INTEGER NOT NULL,
    "cod_prof" INTEGER NOT NULL,
    "cod_disciplina" INTEGER NOT NULL,
    "dia_semana" TEXT NOT NULL,
    "data_aula" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Aula_pkey" PRIMARY KEY ("cod_turma","cod_periodo","cod_disciplina","dia_semana")
);

-- CreateTable
CREATE TABLE "Presenca" (
    "cod_aluno" INTEGER NOT NULL,
    "cod_disciplina" INTEGER NOT NULL,
    "data_presenca" TIMESTAMP(3) NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "Presenca_pkey" PRIMARY KEY ("cod_aluno","cod_disciplina","data_presenca")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_user_id_key" ON "User"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "Professor_user_id_key" ON "Professor"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "Aluno_cod_aluno_key" ON "Aluno"("cod_aluno");

-- CreateIndex
CREATE UNIQUE INDEX "Turma_cod_turma_key" ON "Turma"("cod_turma");

-- CreateIndex
CREATE UNIQUE INDEX "Periodo_cod_periodo_key" ON "Periodo"("cod_periodo");

-- AddForeignKey
ALTER TABLE "Professor" ADD CONSTRAINT "Professor_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("user_id") ON DELETE RESTRICT ON UPDATE CASCADE;
