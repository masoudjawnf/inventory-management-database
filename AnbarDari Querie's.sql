select * from anbar
select * from Anbardar
select * from Mahsool
select * from Marjooi
select * from Mojoodi_kala
select * from Nemaandegi
select * from Sefareshat
select * from Sefareshat_Takmil_Nashodeh


-- tedad va kalaye sefaresh shode az namayandegi tabriz ra dar kenar mojoodi an kala va nam anbar namayesh dahad

select nam_nemaandegi , tedad_baghi_mandeh , nam_mahsool , mojoodi , nam_anbar
from   mahsool inner join anbar on (Anbar.ID_Mahsool = Mahsool.Id_mahsool) 
inner join Mojoodi_kala on (Anbar.Id_anbar = Mojoodi_kala.Id_anbar) 
inner join Sefareshat on (Mahsool.Id_mahsool = Sefareshat.Id_mahsool)
inner join Nemaandegi on (Nemaandegi.Id_nemaandegi = Sefareshat.Id_nemaandegi) 
inner join Sefareshat_Takmil_Nashodeh on ( Sefareshat.Id_sefaresh = Sefareshat_Takmil_Nashodeh.Id_sefaresh) 
where Nemaandegi.Nam_nemaandegi like '%Nemayandegi Tabriz%'

------------------------------------------------------------

-- tedad baghi mande az sefareshat namayendegi tehran ra namayesh dahad 
select nam_nemaandegi , tedad_baghi_mandeh 
from  Nemaandegi inner join Sefareshat on (Nemaandegi.Id_nemaandegi = Sefareshat.Id_nemaandegi) 
 inner join Sefareshat_Takmil_Nashodeh on ( Sefareshat.Id_sefaresh = Sefareshat_Takmil_Nashodeh.Id_sefaresh) 
 where Nemaandegi.Nam_nemaandegi like '%Nemayandegi Tehran%'

 ------------------------------------------------------------

select nam_mahsool , nam_anbar , mojoodi
from Mojoodi_kala inner join Mahsool on (mojoodi_kala.Id_mahsool = Mahsool.Id_mahsool)
inner join Anbar on (Mojoodi_kala.Id_anbar = Anbar.Id_anbar)
where anbar.Nam_anbar like '%anbar markazi%'

------------------------------------------------------------

select nam_mahsool , nam_nemaandegi , tarikh_sefaresh
from Sefareshat inner join Mahsool on (Sefareshat.Id_mahsool = Mahsool.Id_mahsool)
inner join Nemaandegi on (Sefareshat.Id_nemaandegi = Nemaandegi.Id_nemaandegi)
where sefareshat.Tarikh_sefaresh = '2023-09-02'

----------------------------------------------------------
update Marjooi set Tarikh_marjooi = '2023-10-3'
where Id_marjooi = 4

select nam_mahsool , nam_nemaandegi , tarikh_marjooi
from Marjooi inner join Mahsool on (Marjooi.Id_mahsool = Mahsool.Id_mahsool)
inner join Nemaandegi on (Marjooi.Id_nemaandegi = Nemaandegi.Id_nemaandegi)
where Marjooi.Tarikh_marjooi = '2023-10-3'

------------------------------------------------------------

select	nam_nemaandegi , nam_mahsool , elat
from Marjooi inner join Mahsool on (Marjooi.Id_mahsool = Mahsool.Id_mahsool)
inner join Nemaandegi on (Marjooi.Id_nemaandegi = Nemaandegi.Id_nemaandegi)
where Mahsool.Nam_mahsool like '%لباسشویی%'

------------------------------------------------------------

-- nam mahsooli ke dar anbarQarbri negah dari mishavad ra neshan dahad 
select Nam_mahsool 
from Mahsool inner join Anbar on (Mahsool.Id_mahsool = Anbar.ID_Mahsool)
where Nam_anbar = 'Anbar Qarbi'








update TB_Class set Lesson_ID = 5
where ID = 5

DELETE FROM Mahsool
WHERE Id_mahsool = 1 ;

