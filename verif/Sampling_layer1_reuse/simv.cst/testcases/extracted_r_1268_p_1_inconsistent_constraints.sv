class c_1268_1;
    integer i = -210;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1268_1;
    c_1268_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x0z0z01zx0xxx0110x11z101z1zxzxxxxzzzzzxzzxzxxxzzzzzxxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
