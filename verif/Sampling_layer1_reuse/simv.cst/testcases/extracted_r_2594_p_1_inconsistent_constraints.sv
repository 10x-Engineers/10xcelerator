class c_2594_1;
    integer i = -431;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2594_1;
    c_2594_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x0z01x01xxzx0z1xz1011zxz11zzzxzxxzzzzxxzzxzzzxxzxxzxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
