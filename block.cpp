#include "block.hpp"


Block::Block(BlockType t, string n) {
    crossable = false;
    type = t;
    name = n;
}

Block::Block() {
    type = unknown;
    name = "unknown";
    crossable = false;
}

void Block::draw(int screenX, int screenY, int scale) {
    drawStillFrame(anim, screenX, screenY, 0, false);
    // if(selected) {
    //   drawStillFrame(getAnim("select-red.png"), screenX, screenY, 0, false);
    // }
}

void Block::replacementOf(Block *block) {
    // destroy old block in general case
}


void OverlyingBlock::replacementOf(Block *block) {
    below = block;
}

OverlyingBlock::OverlyingBlock(BlockType type, string name)
        : Block(type, name){
    //
}

void TreeBlock::drawTree(int screenX, int screenY, int belowY, int scale) {
    // draw block underneath it
    if(below != NULL) {
        below->draw(screenX, belowY, scale);
    }

    Anim *treeAnim = NULL;
    switch(age) {
        case TreeAge::young:
            treeAnim = getAnim("tree-small.png");
            break;
        case TreeAge::middle:
            treeAnim = getAnim("tree-medium.png");
            break;
        case TreeAge::adult:
            treeAnim = getAnim("tree-big.png");
            break;
        default:
            treeAnim = getAnim("tree-big.png");
    }
    drawStillFrame(treeAnim, screenX, screenY, 0, false);
}



TreeBlock::TreeBlock()
        : OverlyingBlock(BlockType::tree, "tree") {
    age = TreeAge::young;
}

void TreeBlock::ageTree() {
    switch(age) {
        case TreeAge::young:
            age = TreeAge::middle;
            break;
        case TreeAge::middle:
            age = TreeAge::adult;
            break;
        default:
            break;
    }
}

StoneBlock::StoneBlock()
        : Block(BlockType::stone, "stone") {
}

WaterBlock::WaterBlock()
        : Block(BlockType::water, "water") {
}

CoalBlock::CoalBlock()
        : Block(BlockType::coal, "coal") {
}

CopperBlock::CopperBlock()
        : Block(BlockType::copper, "copper") {
}

AirBlock::AirBlock()
        : Block(BlockType::air, "air") {
    crossable = true;
}

SandBlock::SandBlock()
        : Block(BlockType::sand, "sand") {
    crossable = true;
}

ZincBlock::ZincBlock()
        : Block(BlockType::zinc, "zinc") {
}

IronBlock::IronBlock()
        : Block(BlockType::iron, "iron") {
}

NickelBlock::NickelBlock()
        : Block(BlockType::nickel, "nickel") {
}

SiliconBlock::SiliconBlock()
        : Block(BlockType::silicon, "silicon") {
}

BedrockBlock::BedrockBlock()
        : Block(BlockType::bedrock, "bedrock") {
}


UnknownBlock::UnknownBlock()
        : Block(BlockType::unknown, "unknown") {
    crossable = true;
}

Block *newblockFromType(BlockType type) {
    switch(type) {
        case BlockType::stone:
            return new StoneBlock();
        case BlockType::water:
            return new WaterBlock();
        case BlockType::coal:
            return new CoalBlock();
        case BlockType::copper:
            return new CopperBlock();
        case BlockType::air:
            return new AirBlock();
        case BlockType::sand:
            return new SandBlock();
        case BlockType::tree:
            return new TreeBlock();
        case BlockType::zinc:
            return new ZincBlock();
        case BlockType::iron:
            return new IronBlock();
        case BlockType::nickel:
            return new NickelBlock();
        case BlockType::silicon:
            return new SiliconBlock();
        case BlockType::bedrock:
            return new BedrockBlock();
        case BlockType::unknown:
            return new UnknownBlock();
        default:
            cout << "Truly unknown block being created" << endl;
            exit(0);
            break;
    }
}