class c_1967_1;
    integer i = -326;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1967_1;
    c_1967_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzx00z1xxx1zxx1z00zz1x1z011z01xxxxzxxzxxzxxxzxzzxxxxzzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
