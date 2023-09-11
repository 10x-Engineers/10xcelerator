class c_1158_1;
    integer i = -191;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1158_1;
    c_1158_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0z1zz1x1xx01111xxz010xz0x10zxxzzxxxzzzxxzxzxxzxxxzxxzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
