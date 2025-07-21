/*
  Warnings:

  - You are about to drop the column `relatioship` on the `staff_dependent` table. All the data in the column will be lost.
  - You are about to alter the column `stud_name` on the `student` table. The data in that column could be lost. The data in that column will be cast from `VarChar(90)` to `VarChar(30)`.
  - Added the required column `region` to the `country` table without a default value. This is not possible if the table is not empty.
  - Added the required column `relationship` to the `staff_dependent` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "stud_mod_performance" DROP CONSTRAINT "studModPerformance_modRegistered_fk";

-- DropForeignKey
ALTER TABLE "stud_mod_performance" DROP CONSTRAINT "studentModPerformance_student_fk";

-- DropForeignKey
ALTER TABLE "student" DROP CONSTRAINT "student_countryName_fk";

-- AlterTable
ALTER TABLE "country" ADD COLUMN     "region" VARCHAR(30) NOT NULL;

-- AlterTable
ALTER TABLE "staff_dependent" DROP COLUMN "relatioship",
ADD COLUMN     "relationship" VARCHAR(20) NOT NULL;

-- AlterTable
ALTER TABLE "stud_mod_performance" ALTER COLUMN "mark" DROP NOT NULL,
ALTER COLUMN "grade" DROP NOT NULL;

-- AlterTable
ALTER TABLE "student" ALTER COLUMN "stud_name" SET DATA TYPE VARCHAR(30),
ALTER COLUMN "mobile_phone" DROP NOT NULL,
ALTER COLUMN "home_phone" DROP NOT NULL,
ALTER COLUMN "nationality" SET DATA TYPE VARCHAR(30);

-- RenameForeignKey
ALTER TABLE "course" RENAME CONSTRAINT "course_dept_fk" TO "course_offered_by_fk";

-- RenameForeignKey
ALTER TABLE "student" RENAME CONSTRAINT "student_crseCode_fk" TO "student_crse_code_fk";

-- AddForeignKey
ALTER TABLE "module" ADD CONSTRAINT "mod_mod_coord_fk" FOREIGN KEY ("mod_coord") REFERENCES "staff"("staff_no") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "stud_mod_performance" ADD CONSTRAINT "stud_mod_performance_adm_no_fkey" FOREIGN KEY ("adm_no") REFERENCES "student"("adm_no") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "stud_mod_performance" ADD CONSTRAINT "stud_mod_performance_mod_registered_fkey" FOREIGN KEY ("mod_registered") REFERENCES "module"("mod_code") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "student" ADD CONSTRAINT "student_nationality_fk" FOREIGN KEY ("nationality") REFERENCES "country"("country_name") ON DELETE NO ACTION ON UPDATE NO ACTION;
