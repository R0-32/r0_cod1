.open topizdato.db
или
CREATE DATABASE topizdato;

```
CREATE TABLE Team (
    TeamID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT,
    Members TEXT,
);

CREATE TABLE Project (
    ProjectID INTEGER PRIMARY KEY AUTOINCREMENT,
    Title TEXT,
    Cover TEXT,
    Materials TEXT,
    Progress INTEGER,
    Status TEXT,
    DesignProgress INTEGER,
    FrontEndProgress INTEGER,
    BackEndProgress INTEGER,
    LaunchDate DATE,
    Participants TEXT
);

CREATE TABLE PersonalProfiles (
    ProfileID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT,
    Skills TEXT
);

CREATE TABLE Portfolios (
    PortfolioID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProfileID INTEGER,
    CompletedProjects TEXT,
    FrozenProjects TEXT,
    FOREIGN KEY (ProfileID) REFERENCES PersonalProfiles(ProfileID)
);

CREATE TABLE Settings (
    SettingID INTEGER PRIMARY KEY AUTOINCREMENT,
    UserID INTEGER,
    OptionName TEXT,
    OptionValue TEXT,
    FOREIGN KEY (UserID) REFERENCES PersonalProfiles(ProfileID)
);

```
    ProjectID INTEGER PRIMARY KEY AUTOINCREMENT,
    Title TEXT,
    Cover TEXT,
    Materials TEXT,
    Progress INTEGER,
    Status TEXT,
    DesignProgress INTEGER,
    FrontEndProgress INTEGER,
    BackEndProgress INTEGER,
    LaunchDate DATE,
    Participants TEXT
    
INSERT INTO Project (name, phone)
    VALUES ('Roman', '+3983427');

.tables
.schema Project
.headers on
SELECT * FROM Project;

            Проект                              
                Заголовок                           
                Обложка                         
                Материалы                           
                Прогресс проекта                            
                    отобразить в виде цвета карточки. Например: Серый=заморожен, Синий=в разработке, Зеленый=Стартовал                      
                    блок или строка состояния, описывающие                      
                        если проект в разработке                    
                            на какой стадии исполнение дизайна, фронта, бека,               
                        если проект запущен:                    
                            то может быть показывать статистику по пользователям,               
                            или другую публичную дату               
                    Комманды принимающие участие в проекте                      
                Выбрать проект                          