library(tidyverse)

High <- c("Sovereign","Sovereign","Sovereign","Lover","Lover","Lover","Warrior","Warrior","Warrior","Magician","Magician","Magician")
Low <- c("Lover","Warrior","Magician","Sovereign","Magician","Warrior","Lover",'Magician',"Sovereign","Lover","Sovereign","Warrior")
Theme <- c("Affecting","Idealizing","Fostering","Yielding","Releasing","Relying","Upholding","Contesting","Establishing","Upholding","Alerting","Optionizing")
HL <- c("SL","SW","SM","LS","LM","LW","WL","WM","WS","ML","MS","MW")
Description <- c("'s archetype results indicate strength in Visionary leadership, high in Sovereign energy and low in Relational leadership, or Lover energy, known as Affecting.",
                    "'s archetype results indicate strength in Visionary leadership, high in Sovereign energy and low in Performancel leadership, or Warrior energy- known as Idealizing.",
                    "'s archetype results indicate strength in Visionary leadership, high in Sovereign energy and low in Insight leadership, or Magician energy, known as Fostering.",
                    "’s archetype results indicate strength in Relational leadership, high in Lover energy and low in Visionary leadership, or Sovereign energy, known as Yielding.",
                    "’s archetype results indicate strength in Relational leadership, high in Lover energy and low in Insight, or Magician energy, known as Releasing.",
                    "’s archetype results indicate strength in Relational leadership, high in Lover energy and low in Performance, or Warrior energy, known as Relying.",
                    "’s archetype results indicate strength in Performance leadership, high in Warrior energy and low in Relational leadership, or Lover energy, known as Upholding.",
                    "’s archetype results indicate strength in Performance leadership, high in Warrior energy and low in Insight leadership, or Magician energy, known as Contesting.",
                    "’s archetype results indicate strength in Performance leadership, high in Warrior energy and low in Visionary leadership, or Sovereign energy, known as Establishing.",
                    "’s archetype results indicate strength in Insight leadership, or Magician energy and low in Relational leadership, or Lover energy, known as Detaching.",
                    "’s archetype results indicate strength in Insight leadership, high in Magician energy and low in Visionary leadership, or Sovereign energy, known as Alerting.",
                    "’s archetype results indicate strength in Insight leadership, high in Magician  energy and low in Performance leadership, or Warrior energy, known as Optionizing."
                    )
ThemeDescription <-c('They are full of confidence that the right answer always emerges and things will work out for the best. This type sometimes misses the need to acknowledge the pain or struggle that those around them may be experiencing.',
                        'They manifest a "fake it till theymake it" chutzpah— working hard to impress others with their competencies, affiliations and possessions.',
                        'They are natural coaches and mentors—taking people under their wing, helping them to grow and improve. They may have difficulty holding their mentees accountable or defining appropriate boundaries.',
                        'They have an intuitive connection to their senses and feelings. Their body is an instrument of both sensing and expression, giving them a rich sensory life filled with gusto, intuition and emotion. Under pressure, their sensitivity can feel overwhelming.',
                        'They feel a common bond with those who endure the struggle of their lives. They may be pilgrims on a spiritual path, understanding that there are important lessons in the trials and tribulations we endure. Yielding helps them avoid buckling under the extreme pressures they have experienced or witnessed in life.',
                        'They recognize the value of vulnerability in building and maintaining relationships. They readily receive support from others. Given their natural openness, a lack of attention to boundaries can foster over-dependency in some relationships.',
                        'They get on the balcony, leave the crowd and watch from afar. This tendency to disengage can give them perspective. The challenge for this type is accepting the invitation to join the fray and engage with their team.',
                        'They see all the options laid out before them. This type avoids hurting themselves or others by making decisions too quickly or leaping to conclusions. Instead, they juggle the possibilities, watching and waiting for the right one to show itself. They will resist decisions they feel are being made to quickly.',
                        'They are the watchdog that sounds the alarm when things could go wrong. This type is two steps ahead, vigilantly protecting their own and the collective well-being. They are willing to be unpopular if it means protecting what they care about. Their innate risk-management voice should not be confused with negativity.',
                        'This type has their own distinctive brand and style, their modus operandi, and cares little for what the rest of the pack might be doing. They can create friction in their relationships with their willingness to go their own way.',
                        "This type can dominate the space with their willingness to take the leadership role and their ability to drive their point home.  This type feels their own place by pushing against boundaries and resistance. Those with this pattern thrive in an environment when they can assert themselves cleanly in a way that doesn't cause collateral damage inside or outside the team.",
                        'This type is compelled to correct anything around them that is bent or broken. They will fight hard in pursuit of excellence and can benefit by building relationships with other competent souls they can trust- finding a place to let their guard down and just relax.'
                        )

archetype_hi_low_theme <- data.frame(High,Low,HL,Theme,Description,ThemeDescription)

Loops <- c("Quest","Security","Theory","Experience","Connection","Independence")
LoopDescription <- c("They are inspired by a challenging quest—motivated to manifest a vision through action in the world. They can feel their progress is hindered by too much focus on risk, relationship, or process.",
                        "They are focused on creating safety and security, consciously or subconsciously aware of their vulnerabilities and those of their team. They can feel stressed when pushed to act before they are ready.",
                        "They thrive in learning environments that use information and knowledge to build a strong Theory about why things are happening as they are. They would much prefer to research the failures of others than waste time on a trial-and-error approach.",
                        "They like to learn through exploration and active engagement, preferring to dive right into testing and discovery, even if that means risking some mistakes and failures.",
                        "They are called to work with others in pursuit of a common goal, and can feel discomfort if working in isolation or without team support.",
                        "They thrive when given the space to work in their own way and in their own space. They may find group processes, group decisions and group environments overwhelming when they are working out complex problems."
                        )
loop <- data.frame(Loops,LoopDescription)

OpposingTypes <- c("Fostering over Alerting","Affecting over Yielding","Detaching over Releasing","Contesting over Optionizing","Upholding over Relying","Idealizing over Establishing","Yielding over Affecting","Alerting over Fostering","Releasing over Detaching","Optionizing over Contesting","Relying over Upholding","Establishing over Idealizing")
OpposingTypesDescription <- c('Under pressure, they find the best in people, and seek to support others, showing a willingness for self-sacrifice to benefit the whole.  A way of describing this pattern is "support without caution".',
                                'Under pressure, they rise above the perceived bounds defined by their past conditions. Humility is secondary to aspiration for them, and rather than worrying about feeling like an outsider, they have chosen to carve their own path.',
                                'Under pressure, they show a fierce independence and step back to get away from emotions and drama. This can allow them to see the system as a whole.  They are content to hold these observations privately and have no need to prove themselves to others.', 
                                'Under pressure, they take decisive action, and can feel uncomfortable with those who hesitate in the face of tough choices or get lost in the weeds of pros and cons.  Thinking too much can be harmful, and so they discern a path forward for themselves and others when leadership is needed.',
                                "Under pressure, they correct the mistakes and hold a level of excellence based on doing what's right, for its own sake.  If they want the job done right, they do it themselves.",
                                'Under pressure, they manifest a strong sense of inspiration that can be contagious–an ability to hold a big vision and see the potential.  These big ideas and charisma can lead them to pursue dreams that are not achievable or grounded.',
                                'Under pressure, they find solidarity with those who keep their heads down and their nose to the grindstone.  They feel it is not up to them to change the system or save the world, and can see too much ambition as dangerous.',
                                'Under pressure, they manifest a watchful independence.  They prefer to keep their position secure, keeping a watchful eye on the darker side of human nature, understanding that even good people can sometimes take advantage of others and be hypocritical.', '
                                Under pressure, they dive passionately into intuition and emotional intensity; feeling all the highs, the lows, and the emotional doldrums and deriving vitality and interpersonal connection through it all.',
                                'Under pressure, they weigh all the options and hold off on hasty decisions.  They have an ability to step back and really think through the many costs and benefits of a particular line of action or menu of choices.',
                                'Under pressure, they build strong connections with people that are important to you.  They maintain these connections with those they depend on, and can create a strong web of support, creating safety for themselves, and for others by being unafraid to ask for what they need.,  It can be difficult for them to navigate when they feel their support network shaken or lose those they depend on.',
                                'Under pressure, they distinguish themselves through hard work and a unique path - reinforcing their sense of inner strength.  In the face of adversity or pressure to blend in, they chose the difficult path of breaking out on their own and defining their own way.'
                                )
archetype_opposing_types <- data.frame(OpposingTypes,OpposingTypesDescription)

FactFinder <- c("Simplify","Explain","Specify")
FactFinderDescription <- c("Gathers and shares information by Simplifying. This means he will summarize and help get to the point, cut through the red tape, and offer bottom-line options.",
                            "gathers and shares information by Explaining; he works within priorities, tests analogies, and starts with the highest probability.",
                            "This means he will gather and share information by Specifying. This includes ranking and quantifying, defining objectives, and developing complex strategies."
                            )
kolbe_fact_finder <- data.frame(FactFinder,FactFinderDescription)

FollowThru <- c("Adapt","Maintain","Systematize")
FollowThruDescription <- c("He organizes by Adapting; he switches task frequently, naturally multitasks and will thrive on interruptions.",
                            "He organizes through Maintaining; packaging things together that fit, adjusting procedures, coordinating schedules, and drafting guidelines.",
                            "He will organize by Systematizing; this means he will create the plan, coordinate needs, and graph the logistics.")

kolbe_follow_thru <- data.frame(FollowThru,FollowThruDescription)

QuickStart <- c("Stabilize","Modify","Innovate")
QuickStartDescription <- c("He will deal with risk and uncertainty by Stabilizing; this means he will protect the status quo, clarify deadlines, and minimize risk factors.",
                            "She handles risks and uncertainty by Modifying; trying new ideas, sustaining innovations and adjusting deadlines as needed.",
                            "She deals with risks and uncertainty by Innovating; creating a sense of urgency, initiating change, and defying the odds.")

kolbe_quick_start <- data.frame(QuickStart,QuickStartDescription)

Implementor <- c("Envision","Restore","Demonstrate")
ImplementorDescription <- c("Finally, he will handle space and tangibles by Envisioning; this means he will create virtual presentations, sketch ideas and capture the essence of things.",
                                "His best method for tackling space and intangibles is to Restoring; testing ingredients, fixing moving parts and removing both real and imagined obstacles.",
                                "Finally, he handles space and tangibles by Demonstrating; building prototypes and scalable solution, testing functionality and troubleshooting malfunctions by designing and fabricating new parts.")

kolbe_implementor <- data.frame(Implementor,ImplementorDescription)


ActionModes <- c("Move","Follow","Bystand","Oppose")
ActionModesDescription <- c("A Move initiates. Movers are often the first to suggest a direction or to introduce a new idea or concept. Moves start the action.",
                            "A Follow supports. Followers get behind others’ ideas and take the necessary action to carry the idea forward to completion. Follows finish the action.",
                            "A Bystand bridges. Bystanders observe, add neutral perspective, and integrate seemingly disparate ideas. Bystands connect the elements of the action.",
                            "An Oppose challenges. Opposers push back on ideas, providing alternatives, and helping to shore up weaknesses. Opposes correct the action.")

kantor_action_modes <- data.frame(ActionModes,ActionModesDescription)

OS <- c("Open","Closed","Random")
OSDescription <- c("Individuals who have the Open propensity emphasize process, participation, and teamwork. They look for ways to include others and place a high value on consensus. They believe everyone has a contribution to make.",
                    "Individuals with the Closed propensity emphasize structure and planning and are more likely to value both tradition and hierarchy. They provide others with clarity about individual roles and responsibilities and expect everyone to know and follow the rules.",
                    "Individuals demonstrating the Random propensity operate with no rules and few boundaries. They tend to emphasize creative expression, autonomy and individuality. They rarely consider imposing a system on others - they merely want the freedom to operate in their own unique way.")

kantor_operating_system <- data.frame(OS,OSDescription)

CommunicationDomain <- c("Power","Affect","Meaning")
CommunicationDomainDescription <- c("The language of Power is about accountability, competence and completion. Individuals with a Power Propensity tend to speak about specific goals and are highly conscious of time. They enjoy crossing items from their list and moving projects to closure.",
                                    "The language of Affect is about connection between people, particularly emotional. Individuals with an Affect Propensity take special note of others’ well-being and how they are reacting to what is being said. They emphasize trust and motivation and try to provide a climate of warmth and caring.",
                                    'The language of Meaning is about thinking, logic and a sense of purpose. Individuals with a Meaning Propensity are concerned with “what we stand for” and with deeply understanding how things work. They love exploring ideas and concentrating on the theoretical underpinnings of a discussion.'
                                    )

kantor_communication_domain <- data.frame(CommunicationDomain,CommunicationDomainDescription)




arche <- function(list1, list2, list3, list4, list5,list6,list7,list8,list9,list10,list11,list12,list13){
    resp <- paste0(substr(list1,1,1), substr(list2,1,1))
    for(j in 1:nrow(archetype_hi_low_theme)){
        if(archetype_hi_low_theme[j,"HL"] == resp){
            description <- archetype_hi_low_theme[j,"Description"]
            theme_description <- archetype_hi_low_theme[j,"ThemeDescription"]
            results <- append(description,theme_description,length(description))
            break
        }
    }

    #Response for Loop
    lr <- distinct(as.data.frame(c(list3, list4, list5)))
    for(k in 1:nrow(lr)){
        for(l in 1:nrow(loop)){
            if(loop[l,"Loops"] == lr[k,1]){
                results <- append(results,loop[l,"LoopDescription"],length(results))
                break
            }
        }
    }
    #loop_result <- cat(loop_result,sep="\n")

    #Response for Opposing types
    for(i in 1:nrow(archetype_opposing_types)){
        if(archetype_opposing_types[i,1]==list6){
            results <- append(results,archetype_opposing_types[i,2],length(results))
            break
        }
    }

    #Response for Kolbe Fact Finder
    for(i in 1:nrow(kolbe_fact_finder)){
        if(kolbe_fact_finder[i,1]==list7){
            results <- append(results,kolbe_fact_finder[i,2],length(results))
            break
        }
    }

    #Response for Follow Thru
    for(i in 1:nrow(kolbe_follow_thru)){
        if(kolbe_follow_thru[i,1]==list8){
            results <- append(results,kolbe_follow_thru[i,2],length(results))
            break
        }
    }

    #Response for Implementor
    for(i in 1:nrow(kolbe_implementor)){
        if(kolbe_implementor[i,1]==list9){
            results <- append(results,kolbe_implementor[i,2],length(results))
            break
        }
    }

    #Response for Quick Start
    for(i in 1:nrow(kolbe_quick_start)){
        if(kolbe_quick_start[i,1]==list10){
            results <- append(results,kolbe_quick_start[i,2],length(results))
            break
        }
    }

    #Response for Action Modes
    for(i in 1:nrow(kantor_action_modes)){
        if(kantor_action_modes[i,1]==list11){
            results <- append(results,kantor_action_modes[i,2],length(results))
            break
        }
    }

    #Response for Communication Domain
    for(i in 1:nrow(kantor_operating_system)){
        if(kantor_operating_system[i,1]==list12){
            results <- append(results,kantor_operating_system[i,2],length(results))
            break
        }
    }

    for(i in 1:nrow(kantor_communication_domain)){
        if(kantor_communication_domain[i,1]==list13){
            results <- append(results,kantor_operating_system[i,2],length(results))
            break
        }
    }

    print(results)
}

?write.table

resp_kff <- kolbe_fact_finder[3,1]
response1 <- "Sovereign"; response2 <- "Lover"; response3 <- "Affecting";
lr1 <- "Security"; lr2 <- "Theory"; lr3 <- "Independence";
resp_ot <- archetype_opposing_types[2,1]
resp_kft <- kolbe_follow_thru[1,1]
resp_imp <- kolbe_implementor[1,1]
resp_kqs <- kolbe_quick_start[1,1]
resp_kam <- kantor_action_modes[1,1]
resp_kos <- kantor_operating_system[1,1]
result_kcd <- kantor_communication_domain[2,1]

arche(response1,response2,lr1,lr2,lr3,resp_ot,resp_kff,resp_kft,resp_imp,resp_kqs,resp_kam,resp_kos,result_kcd)


