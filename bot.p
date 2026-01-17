from aiogram import Bot, Dispatcher, types, F
import asyncio

TOKEN = "8555836186:AAHhkR0xh9LNdAyGxQORHV41ZgPo0oFvgGM"

bot = Bot(token=TOKEN)
dp = Dispatcher()

@dp.message(F.text == "/start")
async def start(message: types.Message):
    await message.answer("Привет!")

async def main():
    await dp.start_polling(bot)

asyncio.run(main())
