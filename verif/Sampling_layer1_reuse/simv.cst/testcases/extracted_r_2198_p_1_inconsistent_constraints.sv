class c_2198_1;
    integer i = -365;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2198_1;
    c_2198_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zxx0z0xz01001z1xzxx0zz1z1zzzzxzxxxzxzxzxxxxzzxxxxxzzxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
