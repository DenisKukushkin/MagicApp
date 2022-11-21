//
//  File.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 21.11.2022.
//

import Foundation

struct Prediction {
    let title: String
    

    static func getPredictions() -> [Prediction] {
        [
            Prediction(title: "A trip to the sea awaits you soon."),
            Prediction(title: "Let a tear of joy shed, soon an old friend will return!"),
            Prediction(title: "Down with anger and revenge, you will receive good news."),
            Prediction(title: "Wait for the sunset, wait for the dawn, wait for a sweet greeting."),
            Prediction(title: "Every day and every hour someone thinks of you."),
            Prediction(title: "Look ahead more cheerfully, there wealth awaits you."),
            Prediction(title: "Wait a bit, the road is waiting for you."),
            Prediction(title: "Gingerbread and sweets, there will be a lot of joy."),
            Prediction(title: "Holidays and fun await you at the end of the week."),
            Prediction(title: "Suddenly you have a new friend."),
            Prediction(title: "Wait without crying, good luck will come to you."),
            Prediction(title: "The sun again and happiness again - you will meet a new love."),
            Prediction(title: "By next Saturday, expect success in your work."),
            Prediction(title: "You will always have delicious food in the house."),
            Prediction(title: "Try to rest in the Bahamas six times a year and then you will certainly, certainly, probably be lucky."),
            Prediction(title: "If you lie naked on the ice for a long time in winter, no harmful microbe will crawl to you."),
            Prediction(title: "In the coming year, someone will be lucky again, maybe you or a neighbor - you must always be ready."),
            Prediction(title: "Changes are expected in early January, prepare for them gradually - do not waste time in vain."),
            Prediction(title: "Try to carefully run at night in ice, and then it is quite possible that you will meet the New Year.")
        ]
    }
}
