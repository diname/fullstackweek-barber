/*
  Warnings:

  - You are about to drop the column `adress` on the `Barbershop` table. All the data in the column will be lost.
  - Added the required column `address` to the `Barbershop` table without a default value. This is not possible if the table is not empty.
  - Added the required column `imageUrl` to the `Service` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Barbershop" DROP COLUMN "adress",
ADD COLUMN     "address" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Service" ADD COLUMN     "imageUrl" TEXT NOT NULL;
