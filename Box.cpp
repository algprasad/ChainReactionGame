//
// Created by alg on 31/12/19.
//

#include "Box.h"

void Box::setNumberOfBombs(int num) {
    this->num_bombs_ = num;
}

void Box::changeTeam(Team team) {
    this->team_ = team;

}

void Box::setRectanglePosition(float x, float y) {
    this->rectangle_.setPosition(x, y);

}

void Box::setRectangleColor() {
    this->rectangle_.setFillColor(sf::Color(100, 100, 0));

}

void Box::setMaxBombs(int x, int y) {
    //Corner pieces
    if(x==0 && y == 0 || (x== 8 && y == 11) || (x == 8 && y == 0)|| (x == 0 && y == 11 )) this->max_bombs_ = 2;
    if(x == 0 || x == 8 ||  y == 0 || y == 11 ) this->max_bombs_ = 3;
    else this->max_bombs_ = 4;

}

void Box::setBoxNature(int i, int j) {
    if(this->max_bombs_ == 2) this->nature_box_ = BoxNature ::corner;
    else if (this->max_bombs_ == 3 ) this-> nature_box_ = BoxNature ::edge;
    else this->nature_box_ = BoxNature ::regular;
}

