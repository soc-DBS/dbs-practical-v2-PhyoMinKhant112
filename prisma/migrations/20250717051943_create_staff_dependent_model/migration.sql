-- CreateTable
CREATE TABLE "staff_dependent" (
    "staff_no" CHAR(4) NOT NULL,
    "dependent_name" VARCHAR(30) NOT NULL,
    "relatioship" VARCHAR(20) NOT NULL,

    CONSTRAINT "staff_dependent_pkey" PRIMARY KEY ("staff_no","dependent_name")
);
