

CREATE TABLE gp_game_list(
   g_g_no      INT    AUTO_INCREMENT, 
   g_g_name   VARCHAR(20)    NOT NULL,
   g_g_company  VARCHAR(20)    NOT NULL,
   g_thumbnail1      VARCHAR(100),
   g_thumbnail2      VARCHAR(100),
   g_thumbnail3      VARCHAR(100),
   g_thumbnail4      VARCHAR(100),
   g_thumbnail5      VARCHAR(100),
   g_download_able      TINYINT   NOT NULL DEFAULT 1, 
   g_link      VARCHAR(100),
   g_content      text(2000),
   g_point int,
   g_g_reg_date    DATETIME, 
   g_g_mod_date   DATETIME, 
   PRIMARY KEY(g_g_no)
   );
   
   
   
   CREATE TABLE gp_admin_member(
   g_m_no      INT    AUTO_INCREMENT, 
   g_m_approval   INT   NOT NULL DEFAULT 0, 
   g_m_mail   VARCHAR(50)    NOT NULL UNIQUE, 
   g_m_pw      VARCHAR(100)    NOT NULL, 
   g_m_name   VARCHAR(20)    NOT NULL, 
   g_m_gender   CHAR(1)    NOT NULL, 
   g_m_phone   VARCHAR(20)    NOT NULL, 
   g_m_thumbnail      VARCHAR(100),
   g_m_reg_date    DATETIME, 
   g_m_mod_date   DATETIME, 
   PRIMARY KEY(g_m_no)
   );
   
   

CREATE TABLE gp_download_list(
    -- g_d_no            INT AUTO_INCREMENT, 
    g_g_no             INT,
    g_m_no           INT,
    g_d_download_date    DATETIME,
    g_d_delete_date      DATETIME DEFAULT '1000-01-01',
    PRIMARY KEY(g_g_no,g_m_no)
);



create table gp_game_board(
	b_no       INT    AUTO_INCREMENT, 
    g_g_no        INT NOT NULL,
    g_m_name        VARCHAR(100) NOT NULL,
    b_content        VARCHAR(100) NOT NULL,
    b_reg_date        DATETIME,
    PRIMARY KEY(b_no)
);


CREATE TABLE Game_BOARD_list(
    FB_no 			int AUTO_INCREMENT,
    FB_Title    	  VARCHAR(100)     NOT NULL,
    FB_Content		 VARCHAR(2000)  NOT NULL,
    g_m_name 			VARCHAR(50)    NOT NULL,
    FB_reg_date    		DATETIME,
    FB_CNT				 int default 0,
    PRIMARY KEY(FB_no)
);


        