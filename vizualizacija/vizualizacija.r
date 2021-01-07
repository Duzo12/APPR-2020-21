# 3. faza: Vizualizacija podatkov

# Prenocitve, tipi turisticnih obcin

graf.prenocitve.tipi <- ggplot(prenocitve.tipi) +
  aes(x=Leto, y=Stevilo, group=Tip, colour=Tip) +
  geom_point(size=2) +
  geom_line(size=1) +
  labs(title="�tevilo prenočitev po tipu ob�in",
       y="�tevilo preno�itev", x="Leto") +
  theme_hc() +
  scale_x_continuous(limits=c(2010, 2019), breaks=seq(2010, 2019, 1)) +
  scale_y_continuous(limits=c(0, 4800000),
                            breaks=seq(0,4800000,500000)) +
  scale_color_discrete(name = "Tip ob�ine")



# Stolpicni diagram vseh gostov

gostje <- vsi.gosti[-c(33:64),] %>%
  filter(Leto %in% c(2000:2019))

diagram.vseh.gostov <- ggplot(gostje) +
  aes(x=Leto, y=Stevilo, fill=Tip) +
  geom_bar(stat="identity", position = "dodge") +
  labs(title = "�tevilo vseh gostov", y="�tevilo gostov", x="Leto") +
  theme_bw() +
  scale_x_continuous(limits=c(1999, 2020), breaks=seq(2000, 2020, 2)) +
  scale_y_continuous(limits=c(0, 4800000),
                     breaks=seq(0,4800000,500000)) +
  scale_color_discrete(name = "Gosti")



# Graf vseh prenocitev

prenocitve <- filter(vse.prenocitve, Tip=="Skupaj",
                     Leto %in% c(2000:2019))

graf.vseh.prenocitev <- ggplot(prenocitve) +
  aes(x=Leto, y=Stevilo) +
  geom_point(size=2) +
  geom_line(size=1, colour="blue") +
  scale_y_continuous(limits=c(5000000,16000000),
                     breaks=seq(5000000, 16000000, 1000000)) +
  scale_x_continuous(limits=c(2000, 2020), breaks=seq(2000, 2020, 2)) +
  labs(title="�tevilo vseh preno�itev", y="�tevilo preno�itev") +
  theme_hc()


# Zemljevid obcin









  


 

  


 


  
   





