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

