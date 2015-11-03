# SHVRK

## User-facing features for iOS, Android, web platform:

1. Messages
    *messages can be created, scheduled, and automated in the app
    *messages appear as native SMS on recipient's phone
    *should messages also appear in sender's native SMS app?
    *messaging history is visible in app home screen calendar (nice-to-have?)
Deadline: :(

2. Calendars
    *calendars synced to phone can be synced to app (iCalendar, Google Calendar)
    *calendar for shark week can be created within app (or maybe via Google API, make Google Calendar, then sync like others)
    *calendars can be cross-referenced on home screen calendar along with sent messages
    *notifications can be modified for calendars (notify me [x] days [before/into] shark week)
        *set reasonable upper limits on [x] days
Deadline: :(

3. Notifications
    *push notifications or SMS messages from "SHVRK"
    *allow user to create reminders to obtain hygiene stuff, flowers, chocolate, ice cream, whatever
    *notify user when shark week is on the way (see '#2 Calendars')
Deadline: this shouldn't be *too* hard... January 10

4. Facts
    *facts show up as:
        *tooltips or pop-ups for every significant event?
        *SMS messages from "SHVRK" for every significant event?
        *randomized internal banner?
        *some other sweet artsy animated whatever
        *should these simply be stored as an array on local app files? how many do you need? should they link to source?
Deadline: this also shouldn't be *too* hard... January 10

5. Game
    *p5 game that works for everybody: male, female, mono, poly, and those who haven't signed up (delayed sign-up necessary) 
    *option of being multiplayer, or user leaderboard to make game universal
    *based on classic and cult agmes: space invaders, pong, flappy birds, etc
Deadline: December 15
    
## Challenges

1. Which language is best to embed API in Swift?
2. Is a user db outside Twilio necessary? [How users message each other using Twilio accounts](https://www.twilio.com/help/faq/sms/how-can-i-have-users-send-text-messages-to-each-other-over-twilio)
3. How to personalize Twilio numbers to make it look like users are messaging each other? [How to create alphanumeric contact for Twilio account](https://www.twilio.com/help/faq/sms/what-is-alphanumeric-sender-id-and-how-do-i-get-started) and [What contact info recipients see](https://www.twilio.com/help/faq/sms/can-i-specify-the-phone-number-a-recipient-sees-when-getting-an-sms-from-my-twilio-app) and [More on the 'from' attribute](https://www.twilio.com/docs/api/twiml/sms/message#attributes-from)
4. Should app create Twilio account for each user?
5. [Twilio numbers are not considered mobile phone numbers](https://www.twilio.com/help/faq/sms/can-i-send-messages-from-facebook-and-other-services-to-twilio)
6. [This looks like another roadblock](https://www.twilio.com/help/faq/sms/is-there-a-way-to-use-alphanumeric-sender-id-with-messaging-services) but no idea what it means
7. If shark week calendars are built in an existing calendar API, is it possible to inject an algorithm that depends on monthly updates/input to then recalculate intervals?
