import TelegramBot

//Eashir Bot
private let token = "507823174:AAFv7oxE__dK-S00DdVjM_IOoDQ2foo_Dbo"
private let fromChatId = Int64("-274799007")!
private let myChatId = Int64("509443281")!
private let rezChatId = Int64("395886840")!

let bot = TelegramBot(token: token)

while let update = bot.nextUpdateSync() {
    if let message = update.message, let text = message.text {
        bot.forwardMessageAsync(chat_id: myChatId, from_chat_id: fromChatId, message_id: (message.message_id))
        bot.forwardMessageAsync(chat_id: rezChatId, from_chat_id: fromChatId, message_id: (message.message_id))
    }
}

fatalError("Server stopped due to error: \(bot.lastError)")
