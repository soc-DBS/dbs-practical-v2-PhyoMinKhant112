-- AddForeignKey
ALTER TABLE "student" ADD CONSTRAINT "student_countryName_fk" FOREIGN KEY ("nationality") REFERENCES "country"("country_name") ON DELETE NO ACTION ON UPDATE NO ACTION;
