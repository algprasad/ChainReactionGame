//
// Created by alg on 31/12/19.
//

#include <iostream>
#include <SFML/Graphics.hpp>
#include "Box.h"
#include <string>

int main(){

    sf::Font font;
    if (!font.loadFromFile("/home/alg/CLionProjects/ChainReactionGame/OpenSans-Regular.ttf"))
        return EXIT_FAILURE;


    sf::RenderWindow window(sf::VideoMode(730, 980, 32),"Chain Reaction");
    Box boxes[9][12];

    for(int i =0 ; i< 9; i++){
        for(int j = 0; j< 12; j++){
            float x_axis, y_axis;
            x_axis = 10 + i*80;
            y_axis = 10 + j*80;
            boxes[i][j].setRectanglePosition(x_axis, y_axis);
            boxes[i][j].setRectangleColor();

        }
    }


    //To determine whose chance is it
    int chance_number =0;

    while(window.isOpen()){
        //if(chance_number%0 == 0) std::cout<< "Red's turn"<<std::endl;
        //else std::cout<<"Green's turn"<<std::endl;

        //proper way to close the window
        sf::Event event;
        while (window.pollEvent(event))
        {
            // Close window: exit
            if (event.type == sf::Event::Closed)
                window.close();
            if(event.type == sf::Event::MouseButtonPressed){
                //TODO run the whole game algorithm here
                std::cout<<"Mouse Pressed!!\n";
                std::cout<<event.mouseButton.x<<" "<<event.mouseButton.y<<"\n";

            }

        }

        window.clear();


        ///Here is where the game happens. where the composition of the boxes change
        //TODO: find a way to wait for other person's turn and the click.
        boxes[0][5].changeTeam(Team::red);
        boxes[1][5].changeTeam(Team::green);



        //a for loop to draw the rectangles in different positions
        for(int i = 0; i< 9; i++){
            for(int j = 0; j< 12; j++){
                window.draw(boxes[i][j].getRectangle());
                std::string str = std::to_string(boxes[i][j].getNumBombs());
                sf::Text text(str, font, 50);

                //depending on the team, the colour of the number should change
                if(boxes[i][j].getTeam() == Team::red) text.setFillColor(sf::Color(200, 0, 0));
                else if(boxes[i][j].getTeam() == Team::green) text.setFillColor(sf::Color(0, 200, 0));
                else text.setFillColor(sf::Color(100, 100, 0));
                text.setPosition(25 + i*80, 25 + j*80);
                window.draw(text);

            }
        }


        window.display();


    }


}