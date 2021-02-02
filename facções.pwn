• Criando código para carregar o banco de dados das corporações..

enum 
{
   JOGADOR, 
   LSPD,
   LSFD,
   LSSD,
   LSCG
}

stock GetOrgName()
{
   new orgsname[38];
   switch
   {
      case LSPD: format(orgsname, sizeof(orgsname), "Los Santos Police Departament");
      case LSFD: format(orgsname, sizeof(orgsname), "Los Departamento Departament");
      case LSSD: format(orgsname, sizeof(orgsname), "Los Santos Sheriff Departament");
      case LSCG: format(orgsname, sizeof(orgsname), "Los Santos County Governament");
   }
   return orgsname;
}

stock LoadOrgsTable()
{
   mysql_query(DBConn, "CREATE TABLE IF NOT EXISTS Organizacoes (\
       IdFac int NOT NULL AUTO_INCREMENT,\
       NomeFac varchar(38) NOT NULL DEFAULT 'Indefinido',\
       Cofre int NOT NULL DEFAULT 0,\
       Vagas int(15) NOT NULL DEFAULT 15,\
       Farda1 int(4) NOT NULL DEFAULT 0,\
       Farda2 int(4) NOT NULL DEFAULT 0,\
       Farda3 int(4) NOT_NULL DEFAULT 0, \
       Farda4 int(4) NOT_NULL DEFAULT 0, \
       Lider varchar(24) NOT NULL DEFAULT 'Ninguem',\
       SubLider1 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       SubLider2 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro1 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro2 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro3 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro4 varchar(24) NOT NULL DEFAULT 'Ninguem', \
       Membro5 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro6 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro7 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro8 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro9 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro10 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro11 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro12 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro13 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro14 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       Membro15 varchar(24) NOT NULL DEFAULT 'Ninguem',\
       PRIMARY KEY (IdFac))", false);
}
