class c_1164_1;
    integer i = -192;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1164_1;
    c_1164_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01zx1x000xzzzz01zz1z1xxxxxxx1zxzzxzzzzzzxzxxzxxxxzxzxxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
