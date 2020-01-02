//
// Created by alg on 31/12/19.
//

#ifndef CHAINREACTIONGAME_BOX_H
#define CHAINREACTIONGAME_BOX_H

#include "Team.h"
#include <SFML/Graphics.hpp>
#include <vector>

enum BoxNature{
    corner,
    edge,
    regular
};

class Box {

private:
    int index_i_, index_j_;
    Team team_;
    int num_bombs_;
    sf::RectangleShape rectangle_;
    sf::Text display_num_;
    int max_bombs_;
    BoxNature  nature_box_;
    std::vector<std::vector<int> > adjacent_boxes_;

public:

    //Default constructor
    Box() {
        sf::Font font;
        font.loadFromFile("/home/alg/CLionProjects/ChainReactionGame/OpenSans-Regular.ttf");

        rectangle_.setSize(sf::Vector2f(75, 75));
        num_bombs_ = 0;
        team_ = Team::grey;


    }


    void setNumberOfBombs(int num);
    void changeTeam(Team team);
    void setRectanglePosition(float x, float y);
    void setMaxBombs(int x, int y);
    void setIndexes(int i, int j);
    void setAdjacentBoxes(int i, int j );
    void addElements2Vector(std::vector<std::vector<int> >& two_d_vector, int i, int j);
    sf::RectangleShape getRectangle(){
        return this->rectangle_;
    };
    sf::Text getText(){
        return this->display_num_;
    }
    int getNumBombs(){
        return num_bombs_;
    }

    BoxNature getBoxNature(){
        return this->nature_box_;
    }

    int getMaxBombs(){
        return this->max_bombs_;
    }

    void setRectangleColor();

    void setBoxNature(int i, int j);

    Team getTeam(){
        return team_;
    }

    std::vector<std::vector<int> > getAdjacentBoxIndicies(){
        return this->adjacent_boxes_;
    }

    //
};


#endif //CHAINREACTIONGAME_BOX_H
