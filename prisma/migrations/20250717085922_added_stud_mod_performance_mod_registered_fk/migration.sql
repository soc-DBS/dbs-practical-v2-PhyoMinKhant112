-- AddForeignKey
ALTER TABLE "stud_mod_performance" ADD CONSTRAINT "studModPerformance_modRegistered_fk" FOREIGN KEY ("mod_registered") REFERENCES "module"("mod_code") ON DELETE RESTRICT ON UPDATE CASCADE;
