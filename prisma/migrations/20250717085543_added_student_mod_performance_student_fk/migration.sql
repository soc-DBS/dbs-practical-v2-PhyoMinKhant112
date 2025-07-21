-- AddForeignKey
ALTER TABLE "stud_mod_performance" ADD CONSTRAINT "studentModPerformance_student_fk" FOREIGN KEY ("adm_no") REFERENCES "student"("adm_no") ON DELETE RESTRICT ON UPDATE CASCADE;
