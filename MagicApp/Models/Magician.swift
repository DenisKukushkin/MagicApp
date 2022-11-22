//
//  Magician.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

struct Magician {
    let name: String
    let description: String
    
    
    static func getMagicianList() -> [Magician] {
        [
            Magician(name: "Dynamo", description: "Born Steven Frayne, Dynamo has had an amazing rise to stardom and although still a rising star in the world of magic. The name Dynamo is now secured as one of the most famous magicians in the world. Ask anyone to name a Famous Magician and they will probably name Dynamo!"),
            Magician(name: "David Copperfield", description: "David is one of the most famous magicians of all time and famous for the most amazing feat of magic performed on stage and that is to fly! Also famous for making the statue of liberty disappear. But my favourite was walking through the Great Wall of China."),
            Magician(name: "Paul Daniels", description: "Paul Daniels achieved international fame through his television series The Paul Daniels Magic Show, which ran on the BBC from 1979 to 1994. He was a living legend and in my opinion has done more for the world of magic than any other magician."),
            Magician(name: "David Blaine", description: "Known as a “psychological illusionist” Derren Brown uses his skills as a Magician and showmanship, mis-direction and suggestion to delivery some incredible TV shows. Well known for predicting the lottery numbers and Russian Roulette. But where Derren is the best is during his live shows."),
            Magician(name: "Harry Houdini", description: "At his time Harry Houdini was one of the most famous magicians around – performing every more dangerous escapes he drew massive crowds and was always the showman. Born in Budapest he started as a trapeze artist and then went on to perform some of the now world famous escape routines."),
            Magician(name: "Penn & Teller", description: "Famous for performing gory magic tricks and exposing some of magics secrets, Penn & Teller they are also accomplished comedians and their act continues to wow audiences in Las Vegas"),
            Magician(name: "Siegfried & Roy", description: "Famous for their big cats and Las Vegas Shows – Siegfried & Roy are right up there with famous magicians. Earning over 57 million dollars a year – their show took 220 cast and crew members. One Friday night Roy was attacked by one of the tigers, he had devastating injuries, but survived. They then went on to perform one last show after performing together for over 45 years."),
            Magician(name: "Jeff McBride", description: "Among Magicians Jeff McBride is seen as one of the great teachers and has brought a great amount of knowledge to the magic world. His stage shows are incredible and one of his most famous is the masks routine."),
            Magician(name: "Chris Angel", description: "Chris Angel is an American Magician and Illusionist he is best known for his Stage show Mindfreak. Since then Chris regularly appears on TV with some mind blowing magic – my favourite, which I just cannot explain is walking through a metal gate.")
        ]
    }
}
