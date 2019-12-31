//
// Created by alg on 31/12/19.
//

#ifndef CHAINREACTIONGAME_BOX_H
#define CHAINREACTIONGAME_BOX_H

#include "Team.h"
#include <SFML/Graphics.hpp>
class Box {

private:
    Team team_;
    int num_bombs_;
    sf::RectangleShape rectangle_;
    sf::Text display_num_;

public:

    //Default constructor
    Box() {
        sf::Font font;
        font.loadFromFile("/home/alg/CLionProjects/ChainReactionGame/OpenSans-Regular.ttf");

        rectangle_.setSize(sf::Vector2f(75, 75));
        num_bombs_ = 0;
       // display_num_.setFont(font);
        display_num_.setFillColor(sf::Color(100, 100, 0));
        display_num_.setString("0");
        display_num_.setCharacterSize(20);
        team_ = Team::grey;

    }


    void setNumberOfBombs(int num);
    void changeTeam(Team team);
    void setRectanglePosition(float x, float y);
    sf::RectangleShape getRectangle(){
        return this->rectangle_;
    };
    sf::Text getText(){
        return this->display_num_;
    }
    int getNumBombs(){
        return num_bombs_;
    }

    void setRectangleColor();

    Team getTeam(){
        return team_;
    }
};


#endif //CHAINREACTIONGAME_BOX_H
