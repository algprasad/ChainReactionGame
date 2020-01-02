//
// Created by alg on 31/12/19.
//

#include <iostream>
#include <SFML/Graphics.hpp>
#include "Box.h"
#include <string>
#include "Team.h"


Team whoseChance(int chance_num, int num_players){
    //Use swtich case to determine whose chance is it
    int num = chance_num%num_players;
    switch(num){
        case 0: return Team::red;
        case 1: return Team::green;
        case 2: return Team::blue;
        case 3: return Team::yellow;
        case 4: return Team::violet;
        case 5: return Team::orange;
        case 6: return Team::brown;
        default:
            return  Team::grey;
    }

}

bool isMoveValid(Team current_team, Box& current_box){
    if(current_box.getTeam() == current_team || current_box.getTeam() == Team::grey) return true;
    else return false;

}

bool shouldExplode(Box box){
    if(box.getNumBombs() == box.getMaxBombs()) return true;
    return  false;
}

void explodeBox(Box boxes[9][12], int i, int j ){
    //put the number of bombs in the box = 0
    boxes[i][j].setNumberOfBombs(0);

    //depending on the nature of the box increase the number of bombs in the adjacent boxes by 1
    ///if(boxes)
    //boxes[][]
    //check if the adjacent boxes should explode and call the explode function

}

int main(){

    int number_of_players = 2;

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
            boxes[i][j].setMaxBombs(i, j);

        }
    }


    //To determine whose chance is it
    int chance_number =0;

    while(window.isOpen()){

        //know whose chance is it
        Team current_team = whoseChance(chance_number, number_of_players);

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
                int box_i = (event.mouseButton.x - 10)/80;
                int box_j = (event.mouseButton.y - 10)/80;

                std::cout<<"Mouse pressed inside box"<<box_i<<" "<<box_j<<std::endl;

                //check if its a valid move
                if(!isMoveValid(current_team, boxes[box_i][box_j])) std::cout<<"Invalid Move\n";

                //Move is valid
                else{
                    boxes[box_i][box_j].changeTeam(current_team);
                    boxes[box_i][box_j].setNumberOfBombs(boxes[box_i][box_j].getNumBombs() + 1);

                    /// check if the number of bombs is more than the max it can hold if yes then explode
                    if(shouldExplode(boxes[box_i][box_j])) explodeBox(boxes, box_i, box_j);

                    chance_number++;
                }



            }

        }

        window.clear();

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