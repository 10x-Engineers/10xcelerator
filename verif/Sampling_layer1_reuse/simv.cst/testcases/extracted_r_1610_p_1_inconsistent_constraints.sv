class c_1610_1;
    integer i = -267;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1610_1;
    c_1610_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx10z0xxzzx1zz110z1zz1x11xxxx00xzxxzxzxzzzxxxzxzzxxxzxzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
