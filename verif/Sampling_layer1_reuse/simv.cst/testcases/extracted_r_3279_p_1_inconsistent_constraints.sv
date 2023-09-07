class c_3279_1;
    integer i = -545;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3279_1;
    c_3279_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11zxxxzx0zz11zz01101zz0z0010x0xzzxzzzxzxzzxzxxzzzzxxzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram