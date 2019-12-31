//
// Created by alg on 31/12/19.
//

#include <iostream>
#include <SFML/Graphics.hpp>

int main(){
    sf::CircleShape circle(50.f);
    circle.setFillColor(sf::Color(100, 100, 100));

    sf::RectangleShape rectangle(sf::Vector2f (200.f, 150.f));
    sf::RenderWindow window(sf::VideoMode(800, 800, 32),"Chain Reaction");




    while(window.isOpen()){

        //proper way to close the window
        sf::Event event;
        while (window.pollEvent(event))
        {
            // Close window: exit
            if (event.type == sf::Event::Closed)
                window.close();
        }
        //window.draw(circle);
        window.draw(rectangle);
        window.display();

    }


}