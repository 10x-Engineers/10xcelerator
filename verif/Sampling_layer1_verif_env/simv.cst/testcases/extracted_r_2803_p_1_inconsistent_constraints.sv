class c_2803_1;
    integer i = -466;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2803_1;
    c_2803_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1zx0z1x10zxx10x0z1x1z0z00z10xxzxzzzzxxxzxzxzxxzxzxzzzxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
