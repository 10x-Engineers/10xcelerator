class c_2834_1;
    integer i = -471;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2834_1;
    c_2834_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0x1000000x1zx001x11z1zx1xz00zxzzxxzzzxxzxxxxxzzxzxzxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
