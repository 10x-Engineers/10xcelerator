class c_710_1;
    integer i = -117;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_710_1;
    c_710_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011xz0z101x1zzzz11zx0zx0z1x1100xxzzxzxzzxxzxzzxxxzxzzzzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
