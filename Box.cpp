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
    //Corner piece
    if((x== 0 && y == 0) || (x== 8 && y == 11) || (x == 8 && y == 0)|| (x == 0 && y == 11 )) this->max_bombs_ = 2;

    //edge piece
    else if(x == 0 || x == 8 ||  y == 0 || y == 11 ) this->max_bombs_ = 3;

    //regular piece
    else this->max_bombs_ = 4;

}

void Box::setBoxNature(int i, int j) {
    if(this->max_bombs_ == 2) this->nature_box_ = BoxNature ::corner;
    else if (this->max_bombs_ == 3 ) this-> nature_box_ = BoxNature ::edge;
    else this->nature_box_ = BoxNature ::regular;
}


void Box::setAdjacentBoxes(int i, int j ){
    std::vector<int> vector_adjacent_boxes;
    //if corner piece
    if(this->nature_box_ == BoxNature::corner){
        //top left
        if(i ==0 && j == 0) {
            addElements2Vector(this->adjacent_boxes_, 1, 0);
            addElements2Vector(this->adjacent_boxes_, 0, 1);

        }

        //top right
        else if(i == 8 && j == 0){
            addElements2Vector(this->adjacent_boxes_, 7, 0);
            addElements2Vector(this->adjacent_boxes_, 8, 1);

        }

        //bottom right
        else if(i == 8 && j == 11){
            addElements2Vector(this->adjacent_boxes_, 8, 10);
            addElements2Vector(this->adjacent_boxes_, 7, 11);

        }

        //bottom left
        else if(i == 0 && j == 11){
            addElements2Vector(this->adjacent_boxes_, 10, 0);
            addElements2Vector(this->adjacent_boxes_, 11, 1);

        }
    }


    //edge piece
    else if(this->nature_box_ == BoxNature::edge){
        //top row
        if(j == 0){
            addElements2Vector(this->adjacent_boxes_, i-1, 0);
            addElements2Vector(this->adjacent_boxes_, i+1, 0);
            addElements2Vector(this->adjacent_boxes_, i, 1);

        }
        //bottom row
        else if (j == 11){
            addElements2Vector(this->adjacent_boxes_, i-1, 11);
            addElements2Vector(this->adjacent_boxes_, i+1, 11);
            addElements2Vector(this->adjacent_boxes_, i, 10);

        }

        //left column
        else if (i == 0){
            addElements2Vector(this->adjacent_boxes_, 0, j-1);
            addElements2Vector(this->adjacent_boxes_, 0, j+1);
            addElements2Vector(this->adjacent_boxes_, 1, j);
        }

        //right column
        else if (i == 8 ){
            addElements2Vector(this->adjacent_boxes_, 8, j-1);
            addElements2Vector(this->adjacent_boxes_, 8, j+1);
            addElements2Vector(this->adjacent_boxes_, 7, j);

        }

    }

    //regular box
    else{
        addElements2Vector(this->adjacent_boxes_, i-1, j);
        addElements2Vector(this->adjacent_boxes_, i+1, j);
        addElements2Vector(this->adjacent_boxes_, i, j-1);
        addElements2Vector(this->adjacent_boxes_, i, j+1);
    }

}

void Box::addElements2Vector(std::vector<std::vector<int> > &two_d_vector, int i, int j) {

    std::vector<int> temp;
    temp.push_back(i);
    temp.push_back(j);
    two_d_vector.push_back(temp);

}

