import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: SingleScroll(),
  ));
}

class SingleScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Let's Read A Story"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Oppenheimer (film)",
            style: GoogleFonts.cabinCondensed(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.purple,
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                """
Oppenheimer (/ˈɒpənhaɪmər/ OP-ən-hy-mər) is a 2023 epic[5] biographical thriller film[6] written and directed by Christopher Nolan. Based on the 2005 biography American Prometheus by Kai Bird and Martin J. Sherwin, the film chronicles the career of American theoretical physicist J. Robert Oppenheimer. The story predominantly focuses on Oppenheimer's early studies, his direction of the Manhattan Project during World War II, and his eventual fall from grace due to his 1954 security hearing. The film stars Cillian Murphy as Oppenheimer, Emily Blunt as his wife Kitty, Matt Damon as General Leslie Groves, head of the Manhattan Project, Robert Downey Jr. as Lewis Strauss, a senior member of the U.S. Atomic Energy Commission and Florence Pugh as Communist Party USA member Jean Tatlock. The ensemble supporting cast includes Josh Hartnett, Casey Affleck, Rami Malek, and Kenneth Branagh.

The film was announced in September 2021 after Universal Pictures won a bidding war for Nolan's screenplay, following Nolan's conflict with longtime distributor Warner Bros.. Murphy was the first cast member to sign on the following month, with the rest of the cast joining between November 2021 and April 2022. Pre-production was under way by January 2022, and filming took place from February to May. Oppenheimer was filmed in a combination of IMAX 65 mm and 65 mm large-format film, including, for the first time in history, sections in IMAX black-and-white film photography. Like his previous works, Nolan used extensive practical effects and minimal computer-generated imagery. Oppenheimer is Nolan's first film to receive an R-rating since Insomnia in 2002.

Ten days after Oppenheimer premiered at Le Grand Rex in Paris, it was theatrically released in the United States and United Kingdom on July 21, 2023, by Universal. Its simultaneous release with Warner Bros.' Barbie led to the "Barbenheimer" phenomenon on social media, which encouraged audiences to see both films as a double feature. Oppenheimer has grossed over 581 million worldwide on a 100 million production budget, making it the eighth-highest-grossing film of 2023, the highest-grossing World War II-related film[7] and the 10th highest-grossing R-rated film of all-time.[8] It received critical acclaim, with particular praise for its cast, screenplay, and visuals

Plot
In 1926, 22-year-old doctoral student J. Robert Oppenheimer studies under experimental physicist Patrick Blackett at the Cavendish Laboratory in Cambridge. Oppenheimer suffers from homesickness and anxiety and struggles doing the required lab work. Oppenheimer, upset with the demanding Blackett, leaves him a poison-laced apple but retrieves it. Visiting scientist Niels Bohr is impressed enough by Oppenheimer's intellect to recommend that he should instead study theoretical physics in Germany, where Oppenheimer completes his PhD. He later meets theoretical physicist Werner Heisenberg at a conference in Switzerland.

Oppenheimer returns to the United States, wanting to expand quantum physics research there. He begins teaching at the University of California, Berkeley and the California Institute of Technology, starting with one student. He meets his future wife, Katherine "Kitty" Puening, a biologist and ex-communist, and also has an intermittent affair with Jean Tatlock, a member of the Communist Party USA, until her suicide a few years later. In 1938, Nazi Germany's progress in nuclear fission research spurs Oppenheimer and his colleagues to replicate their results. Leo Szilard and Albert Einstein then warn President Franklin D. Roosevelt of atomic weaponry's catastrophic potential.

In 1942, amid World War II, U.S. Army General Leslie Groves recruits Oppenheimer to lead the Manhattan Project to develop an atomic bomb after Oppenheimer's assurances he has no communist sympathies. Oppenheimer, who is Jewish, is particularly driven by the Nazis' potentially completing their nuclear weapons program, headed by Heisenberg. Oppenheimer assembles a scientific team including Edward Teller and Isidor Isaac Rabi in Los Alamos, New Mexico and also collaborates with scientists Enrico Fermi and David L. Hill; he and Einstein discuss how an atomic bomb potentially risks triggering an unstoppable chain reaction that could ignite the atmosphere and destroy the world.

After Germany surrenders, some project scientists question the bomb's relevance, while Oppenheimer believes using it will quickly end the ongoing war in the Pacific, saving Allied lives. The Trinity test is successful and President Harry S. Truman orders Hiroshima and Nagasaki to be bombed, forcing Japan's surrender. Oppenheimer is thrust into the public eye as the "father of the atomic bomb", but the immense destruction and mass fatalities haunt him. He urges Truman to restrict further nuclear weapon development. Truman rejects Oppenheimer's advice, considering him weak.

As an advisor to the U.S. Atomic Energy Commission, Oppenheimer advocates against further nuclear research, especially the hydrogen bomb proposed by Edward Teller. Oppenheimer's stance becomes a point of contention amid the tense Cold War with the Soviet Union. AEC Chairman Lewis Strauss deeply resents Oppenheimer for having publicly humiliated him by dismissing his concerns about exporting radioisotopes and also for Oppenheimer recommending arms talks with the Soviet Union. Strauss also believes Oppenheimer turned Einstein and other scientists against him.

At a hearing intended to eliminate his political influence, Oppenheimer is betrayed by Teller and other associates. Strauss exploits Oppenheimer's past associations with Communist party members. Despite allies testifying in his defense, Oppenheimer's security clearance is revoked, damaging his public image and neutralizing his policy influence. At Strauss's later Senate confirmation hearing for Secretary of Commerce, Hill testifies about Strauss's personal motives in engineering Oppenheimer's downfall. The U.S. Senate votes against Strauss's nomination. Strauss privately rants that Oppenheimer schemed against him. It is revealed that an earlier conversation between Einstein and Oppenheimer, in which Strauss believed Oppenheimer denigrated him, instead concerned nuclear weapons' possible cataclysmic consequences.

Cast
Actor Cillian Murphy at a press conference for The Party at the 67th Berlin International Film Festival in 2017
Portrait of J. Robert Oppenheimer, first director of Los Alamos National Laboratory.
Cillian Murphy plays J. Robert Oppenheimer.
Cillian Murphy as J. Robert Oppenheimer[9]
Emily Blunt as Katherine "Kitty" Oppenheimer[10]
Matt Damon as Gen. Leslie Groves[11]
Robert Downey Jr. as Lewis Strauss[11]
Florence Pugh as Jean Tatlock[12]
Josh Hartnett as Ernest Lawrence[13][14]
Casey Affleck as Boris Pash[15]
Rami Malek as David L. Hill[12]
Kenneth Branagh as Niels Bohr[16]
Benny Safdie as Edward Teller[12]
Jason Clarke as Roger Robb[17]
Dylan Arnold as Frank Oppenheimer[18]
Tom Conti as Albert Einstein[19]
James D'Arcy as Patrick Blackett[20]
David Dastmalchian as William L. Borden[21]
Dane DeHaan as Maj Gen. Kenneth Nichols[22]
Alden Ehrenreich as a Senate aide to Lewis Strauss[23][24]
Tony Goldwyn as Gordon Gray[25]
Jefferson Hall as Haakon Chevalier[26][27]
David Krumholtz as Isidor Isaac Rabi[23]
Matthew Modine as Vannevar Bush[28]
Gustaf Skarsgård as Hans Bethe[29]
Michael Angarano as Robert Serber[13]
Jack Quaid as Richard Feynman[30]
Josh Peck as Kenneth Bainbridge[31]
Olivia Thirlby as Lilli Hornig[32]
Christopher Denham as Klaus Fuchs[33]
David Rysdahl as Donald Hornig[34]
Louise Lombard as Ruth Tolman[35]
Harrison Gilbertson as Philip Morrison[36]
Trond Fausa Aurvåg as George Kistiakowsky[37]
Olli Haaskivi as Edward Condon[18]
Devon Bostick as Seth Neddermeyer[38]
Macon Blair as Lloyd K. Garrison[39]
Kurt Koehler as Thomas A. Morgan[40][41]
Josh Zuckerman as Giovanni Rossi Lomanitz[42]
Alex Wolff as Luis Walter Alvarez[43]
Guy Burnet as George Eltenton[44]
Emma Dumont as Jackie Oppenheimer[36]
Jack Cutmore-Scott as Security Officer Lyall Johnson[39]
Scott Grimes as Counsel[33]
Gary Oldman as Harry S. Truman[45]
Hap Lawrence as Lyndon B. Johnson[39]
Harry Groener as Sen. Gale W. McGee[39]
Pat Skipper as Secretary of State James F. Byrnes[39]
Gregory Jbara as Chairman Warren Magnuson[39]
Tim DeKay as Sen. John Pastore[39]
James Remar as Secretary of War Henry Stimson[39]
Danny Deferrari as Enrico Fermi[44]
Máté Haumann as Leo Szilard[46]
Matthias Schweighöfer as Werner Heisenberg[47][48]
James Urbaniak as Kurt Gödel[39]
Rory Keane as Hartland Snyder[49]
Production
Development
Following the 2005 publication of the biography American Prometheus by Bird and Sherwin, director Sam Mendes had been interested in adapting the book into a film. After that project failed to materialize, and the book was optioned by various filmmakers over the next 15 years, the authors grew pessimistic about seeing their work adapted to the silver screen. In 2015, J. David Wargo optioned the book, then commissioned and rejected several scripts. During the COVID-19 pandemic, Wargo flew to Hollywood to meet with actor James Woods, who set up a meeting with Charles Roven, a producer for various Christopher Nolan films, and in turn, Roven gave a copy of the book to Nolan. Both Wargo and Woods are executive producers of the film.[50]

Nolan had long desired to make a film about Oppenheimer, even prior to reading American Prometheus.[51] In 2019, towards the end of production on Nolan's science-fiction film Tenet (2020), star Robert Pattinson gave the director a book of Oppenheimer's speeches. According to Nolan, the speeches showed the physicist "wrestling with the implications ... of what's happened and what [he's] done." Nolan wanted to depict "what it would have been like to be Oppenheimer in those moments" in contrast to Tenet, which employs time travel to curb a potential weapon of mass destruction.[52][2]

In December 2020, Warner Bros. Pictures announced plans to give its 2021 films simultaneous releases in theaters and on HBO Max, citing the impact of the COVID-19 pandemic on the film industry. Nolan, who had partnered with the studio on each one of his films starting with Insomnia (2002), was outraged with the decision as he had been a proponent of film theaters.[53] In January 2021, media reports mentioned the possibility that Nolan's next film could be the first not to be financed or distributed by Warner Bros.[54] By mid-2021, the filmmaker had left Warner Bros. and was meeting with other studios to develop his new project.[2] Nolan had previously supported the studio's decision to give Wonder Woman 1984 (2020) a simultaneous release, stating that he perceived that situation to have been handled properly, but said he had been excluded from any discussions regarding the postponed release of Tenet.[55][56]

In September 2021, it was announced that Nolan would write and direct a biographical film set during World War II about Oppenheimer, with Cillian Murphy in negotiations to star.[57][58] Due to his strained relationship with Warner Bros., Nolan approached multiple studios for the project, including Sony Pictures, Universal Pictures, Paramount Pictures, and Apple Studios.[59][60] According to insiders, Paramount was ruled out early in the process in relation to the replacement of CEO and chairman Jim Gianopulos with Brian Robbins, an advocate for increased streaming-service releases.[60] Nolan had connections to Donna Langley, the chairman and chief content officer of the NBCUniversal studio group, who agreed with his stance in favor of traditional film exhibition in theaters. As such, Universal agreed to finance and distribute Oppenheimer, with production set to begin in the first quarter of 2022.[61] The studio also agreed to Nolan's terms, which included a production budget of 100 million, an equal marketing budget, an exclusive theatrical window ranging from 90 to 120 days, 20 percent of the film's first-dollar gross, and a three-week period both before and after the film's release in which Universal could not release another new film.[60][2]

Writing
Christopher Nolan at the 2018 Cannes Film Festival.
Writer, director, and producer Christopher Nolan
Oppenheimer is the first screenplay written by Nolan in the first person, as he wanted the narrative to be conveyed from Oppenheimer's perspective. He described the "texture" of the film being "how the personal interacts with the historic and the geopolitical" with the intention of making it a cautionary tale.[51][62][63] He began developing the script after he completed Tenet and wrote it in only a few months; he had already been thinking about making a film about Oppenheimer for over 20 years.[51] A major plot element is Oppenheimer's response to the long-term consequences of his actions. Nolan wished to explore the phenomenon of delayed reactions, as he felt people are not "necessarily confronted with the strongest or worst elements of [their actions] in the moment".[64] He also chose to alternate between scenes in color and black-and-white to convey the story from both subjective and objective perspectives, respectively,[65] with most of Oppenheimer's view shown via the former, while the latter depicts a "more objective view of his story from a different character's point of view".[66][64] Wanting to make the film as subjective as possible, the production team decided to include visions of Oppenheimer's conceptions of the quantum world and waves of energy.[67] Nolan noted that Oppenheimer never publicly apologized for his role in the atomic bombings of Hiroshima and Nagasaki, but still desired to portray Oppenheimer as feeling genuine guilt for his actions, believing this to be accurate.[68]

I think of any character I've dealt with, Oppenheimer is by far the most ambiguous and paradoxical. Which, given that I've made three Batman films, is saying a lot.

— Christopher Nolan, Total Film[69]
Nolan began by trying to find the "thread that connected the quantum realm, the vibration of energy, and Oppenheimer's own personal journey" and sought to portray the difficulties in his life, particularly regarding his sex life.[52] As such, Nolan wanted to candidly portray his affair with Jean Tatlock. He also wanted to explore Tatlock's influence on Oppenheimer's life, since she was a Communist, which had "enormous ramifications for [Oppenheimer's] later life and his ultimate fate".[70] Nolan also sought to explore the relationship between Oppenheimer and Admiral Lewis Strauss, former chair of the Atomic Energy Commission, having been inspired by the relationship between Mozart and Antonio Salieri as depicted in Amadeus (1984).[64]

Another critical moment of the film was the meeting in which President Harry S. Truman called Oppenheimer a "crybaby". Nolan wanted to convey the scene from Oppenheimer's perspective and felt it was a "massive moment of disillusion, a huge turning point [for Oppenheimer] in his approach to trying to deal with the consequences of what he'd been involved with", while also underscoring that it is a "huge shift in perception about the reality of Oppenheimer's perception".[51] He wanted to execute a quick tonal shift after the atomic bombings of Hiroshima and Nagasaki, desiring to go from the "highest triumphalism, the highest high, to the lowest low in the shortest amount of screen time possible".[63] For the ending, Nolan chose to make it intentionally vague to be open to interpretation and refrained from being didactic or conveying specific messages in his work. However, he did have the intention to have a "strong set of troubling reverberations at the end".[68]

Nolan first became aware of Oppenheimer as a youth, after hearing the lyric "How can I save my little boy from Oppenheimer's deadly toy?" in the Sting song "Russians" (1985).[64] He was also inspired by his fears of nuclear holocaust throughout childhood, as he lived during the era of Campaign for Nuclear Disarmament (CND) and the anti-nuclear protests in RAF Greenham Common. He felt that "while our relationship with that [nuclear] fear has ebbed and flowed with time, the threat itself never actually went away", and felt the 2022 Russian invasion of Ukraine had caused a resurgence of nuclear anxiety.[52] Nolan had also penned a script for a biographic film on Howard Hughes approximately during the time of production of Martin Scorsese's The Aviator (2004), which had given him insight on how to write a script regarding a person's life.[51] Emily Blunt described the Oppenheimer script as "emotional" and resembling that of a thriller, while also remarking that Nolan had "Trojan-Horsed a biopic into a thriller".[69]
""",
                // style: GoogleFonts.ubuntu(fontSize: 10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
