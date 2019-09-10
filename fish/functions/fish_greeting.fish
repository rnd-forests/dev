function fish_greeting
    set -l quotes
    set quotes[1] '"When there is no desire, all things are at peace." - Laozi'
    set quotes[2] '"Simplicity is the ultimate sophistication." - Leonardo da Vinci'
    set quotes[3] '"Simplicity is the essence of happiness." - Cedric Bledsoe'
    set quotes[4] '"Smile, breathe, and go slowly." - Thich Nhat Hanh'
    set quotes[5] '"Simplicity is an acquired taste." - Katharine Gerould'
    set quotes[6] '"Well begun is half done." - Aristotle'
    set quotes[7] '"He who is contented is rich." - Laozi'
    set quotes[8] '"Very little is needed to make a happy life." - Marcus Antoninus'
    set quotes[9] '"It is quality rather than quantity that matters." - Lucius Annaeus Seneca'
    set quotes[10] '"Genius is one percent inspiration and ninety-nine percent perspiration." - Thomas Edison'
    set quotes[11] '"Computer science is no more about computers than astronomy is about telescopes." - Edsger Dijkstra'
    set quotes[12] '"It always seems impossible until it is done." - Nelson Mandela'
    set quotes[13] '"Act only according to that maxim whereby you can, at the same time, will that it should become a universal law." - Immanuel Kant'

    set -l rand (shuf -i 1-13 -n 1)

    echo $quotes[$rand]
    echo ''
end
