'use server'

import { db } from '../_lib/prisma'
import { revalidatePath } from 'next/cache'

export const cancelBooking = async (bookingId: string) => {
  return await db.booking.delete({
    where: {
      id: bookingId
    }
  })

  revalidatePath('/')
  revalidatePath('/bookings')
}
