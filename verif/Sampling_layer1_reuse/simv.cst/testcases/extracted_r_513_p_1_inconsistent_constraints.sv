class c_513_1;
    integer i = -84;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_513_1;
    c_513_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1100xz11111x00xx1x0001zz01z0010zzxxzxzxzxxzzxxzzzzxxzxzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
